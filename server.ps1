$port = 8000
$url = "http://localhost:$port/standalone.html"

# HTTP 리스너 생성
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()

Write-Host "서버가 시작되었습니다!"
Write-Host "브라우저에서 다음 링크를 열어주세요:"
Write-Host $url -ForegroundColor Green
Write-Host ""
Write-Host "서버를 중지하려면 Ctrl+C를 누르세요."
Write-Host ""

# 브라우저 열기
Start-Process $url

# 요청 처리
while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response
    
    $localPath = $request.Url.LocalPath
    if ($localPath -eq "/" -or $localPath -eq "") {
        $localPath = "/standalone.html"
    }
    
    $filePath = Join-Path $PWD $localPath.TrimStart('/')
    
    if (Test-Path $filePath) {
        $content = [System.IO.File]::ReadAllBytes($filePath)
        $response.ContentType = "text/html"
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





