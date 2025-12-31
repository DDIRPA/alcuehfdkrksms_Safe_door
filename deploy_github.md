# GitHub Pages에 배포하는 방법

## 방법 1: 간단한 GitHub Pages 배포 (추천)

1. GitHub 계정 만들기 (없는 경우): https://github.com/signup

2. 새 저장소 만들기:
   - https://github.com/new 에서
   - 저장소 이름: `safe-door-website` (또는 원하는 이름)
   - Public으로 설정
   - Create repository 클릭

3. 파일 업로드:
   - 저장소 페이지에서 "uploading an existing file" 클릭
   - `index_standalone.html` 파일을 드래그 앤 드롭
   - 파일 이름을 `index.html`로 변경
   - Commit changes 클릭

4. GitHub Pages 활성화:
   - 저장소 Settings 탭 클릭
   - 왼쪽 메뉴에서 Pages 클릭
   - Source를 "Deploy from a branch" 선택
   - Branch를 "main" (또는 "master") 선택
   - Save 클릭

5. 접속 주소:
   - 몇 분 후 아래 주소로 접속 가능:
   - `https://[사용자이름].github.io/[저장소이름]/`
   - 예: `https://username.github.io/safe-door-website/`

## 방법 2: Netlify Drop (더 빠름!)

1. https://app.netlify.com/drop 접속

2. `index_standalone.html` 파일을 이름을 `index.html`로 변경

3. 파일을 Netlify Drop 페이지에 드래그 앤 드롭

4. 즉시 접속 가능한 링크가 제공됩니다!
   - 예: `https://random-name-12345.netlify.app`

## 방법 3: Vercel (빠르고 간단)

1. https://vercel.com 접속 및 로그인

2. "Add New..." → "Project" 클릭

3. GitHub 저장소 연결 또는 파일 업로드

4. 자동으로 배포 및 링크 제공

