# Safe Door Website Tablet Server (PowerShell Version)
$ErrorActionPreference = "Stop"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Safe Door Website (Tablet Server Start)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check HTML file
if (-not (Test-Path "index_standalone.html")) {
    Write-Host "[Error] index_standalone.html file not found." -ForegroundColor Red
    pause
    exit 1
}

# Set port number
$port = 8000

# Get local IP address
Write-Host "Checking local network IP address..." -ForegroundColor Yellow
$ipAddress = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceAlias -notlike "*Loopback*" -and $_.IPAddress -notlike "169.254.*"} | Select-Object -First 1).IPAddress

if (-not $ipAddress) {
    $ipAddress = "localhost"
    Write-Host "IP address not found, using localhost." -ForegroundColor Yellow
} else {
    Write-Host "IP Address: $ipAddress" -ForegroundColor Green
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Server started successfully!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Create HTTP listener (accessible from all network interfaces)
$listener = New-Object System.Net.HttpListener
$prefix = "http://+:$port/"

try {
    $listener.Prefixes.Add($prefix)
    $listener.Start()
    Write-Host "Server started successfully!" -ForegroundColor Green
} catch {
    Write-Host "[Error] Failed to start server: $_" -ForegroundColor Red
    Write-Host ""
    Write-Host "Administrator privileges may be required. Try one of the following:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Method 1: Run PowerShell as Administrator and execute this script again" -ForegroundColor Cyan
    Write-Host "Method 2: Run the following command in Administrator PowerShell:" -ForegroundColor Cyan
    Write-Host "        netsh http add urlacl url=http://+:$port/ user=$env:USERNAME" -ForegroundColor White
    Write-Host ""
    Write-Host "Then run this script again." -ForegroundColor Yellow
    pause
    exit 1
}

try {
    Write-Host "Access from tablet using the following address:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "  http://$ipAddress`:$port/index_standalone.html" -ForegroundColor Green
    Write-Host ""
    Write-Host "Or test from PC:" -ForegroundColor Yellow
    Write-Host "  http://localhost:$port/index_standalone.html" -ForegroundColor Green
    Write-Host ""
    Write-Host "Press Ctrl+C in this window to stop the server." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    
    # Open browser on PC automatically
    Start-Process "http://localhost:$port/index_standalone.html"
    
    # Process requests
    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response
        
        $localPath = $request.Url.LocalPath
        if ($localPath -eq "/" -or $localPath -eq "") {
            $localPath = "/index_standalone.html"
        }
        
        $filePath = Join-Path $PWD $localPath.TrimStart('/')
        
        if (Test-Path $filePath) {
            $content = [System.IO.File]::ReadAllBytes($filePath)
            
            # Set Content-Type
            if ($filePath -like "*.html") {
                $response.ContentType = "text/html; charset=utf-8"
            } elseif ($filePath -like "*.css") {
                $response.ContentType = "text/css"
            } elseif ($filePath -like "*.js") {
                $response.ContentType = "application/javascript"
            } else {
                $response.ContentType = "application/octet-stream"
            }
            
            $response.ContentLength64 = $content.Length
            $response.StatusCode = 200
            $response.OutputStream.Write($content, 0, $content.Length)
        } else {
            $response.StatusCode = 404
            $notFound = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
            $response.ContentLength64 = $notFound.Length
            $response.OutputStream.Write($notFound, 0, $notFound.Length)
        }
        
        $response.Close()
    }
} catch {
    Write-Host "[Error] Server error: $_" -ForegroundColor Red
} finally {
    if ($listener.IsListening) {
        $listener.Stop()
    }
}
