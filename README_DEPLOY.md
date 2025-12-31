# Safe Door Website - 배포 가이드

## 🌐 인터넷에 올려서 접속하기

### 방법 1: GitHub Pages (무료, 간단)

1. **GitHub 저장소 만들기**
   - https://github.com/new 접속
   - 저장소 이름: `safe-door` (또는 원하는 이름)
   - Public 선택
   - Create repository 클릭

2. **파일 업로드**
   - `index_standalone.html` 파일을 `index.html`로 이름 변경
   - 저장소 페이지에서 "uploading an existing file" 클릭
   - `index.html` 파일을 드래그 앤 드롭
   - "Commit changes" 클릭

3. **GitHub Pages 활성화**
   - 저장소의 Settings 탭 클릭
   - 왼쪽 메뉴에서 Pages 클릭
   - Source: "Deploy from a branch" 선택
   - Branch: "main" (또는 "master") 선택
   - Save 클릭

4. **접속 주소**
   - 몇 분 후 아래 주소로 접속:
   - `https://[사용자이름].github.io/[저장소이름]/`
   - 예: `https://username.github.io/safe-door/`

---

### 방법 2: Netlify Drop (가장 빠름! 30초)

1. **파일 준비**
   - `index_standalone.html` 파일을 `index.html`로 이름 변경

2. **Netlify Drop 접속**
   - https://app.netlify.com/drop 접속

3. **파일 드래그 앤 드롭**
   - `index.html` 파일을 페이지에 드래그 앤 드롭

4. **완료!**
   - 즉시 접속 가능한 링크 제공
   - 예: `https://random-name-12345.netlify.app`
   - 이 링크를 태블릿에서 바로 사용 가능!

---

### 방법 3: Vercel (빠르고 안정적)

1. **Vercel 접속**
   - https://vercel.com 접속 및 로그인 (GitHub 계정으로 가능)

2. **프로젝트 추가**
   - "Add New..." → "Project" 클릭
   - GitHub 저장소 선택 또는 파일 업로드

3. **자동 배포**
   - 자동으로 배포되고 링크 제공
   - 예: `https://safe-door.vercel.app`

---

## 📱 로컬 네트워크에서 빠르게 접속하기

### Quick Access 페이지 사용

1. **PC에서 실행**
   - `태블릿_실행.bat` 실행
   - IP 주소 확인 (예: 192.168.1.100)

2. **Quick Access 페이지 열기**
   - `quick_access.html` 파일을 브라우저에서 열기
   - IP 주소 입력
   - "Generate Link" 클릭
   - 생성된 링크를 태블릿에서 사용

3. **태블릿에서 접속**
   - 생성된 링크를 태블릿 브라우저에서 열기

---

## 🔗 추천 방법

**인터넷 접속이 필요하면**: Netlify Drop (가장 빠름)
**로컬 네트워크 사용 시**: `quick_access.html` 사용

