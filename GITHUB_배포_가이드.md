# GitHub Pages 배포하기 - 한글 가이드

## 🚀 빠른 배포 가이드 (5분)

### 1단계: GitHub 계정 만들기 (없는 경우)

1. https://github.com/signup 접속
2. 사용자 이름, 이메일, 비밀번호 입력
3. "Create account" 클릭
4. 이메일 인증 완료

---

### 2단계: 새 저장소 만들기

1. https://github.com/new 접속
   (또는 GitHub 로그인 후 우측 상단 + 버튼 → New repository)

2. 저장소 정보 입력:
   - **Repository name**: `safe-door` (원하는 이름으로 변경 가능)
   - **Description**: Safe Door Website (선택사항)
   - **Public** 선택 (중요: GitHub Pages는 Public만 무료)
   - **README, .gitignore, license는 모두 체크하지 않기**

3. **"Create repository"** 버튼 클릭

---

### 3단계: 파일 업로드하기

1. 저장소 페이지에서 **"uploading an existing file"** 링크 클릭

2. 파일 업로드:
   - `index.html` 파일을 브라우저 창에 **드래그 앤 드롭**
   - 또는 "choose your files" 클릭하여 파일 선택

3. 페이지 맨 아래로 스크롤:
   - **Commit message**: "Initial commit: Safe Door website"
   - **"Commit changes"** 버튼 클릭

---

### 4단계: GitHub Pages 활성화

1. 저장소 페이지 상단 메뉴에서 **"Settings"** 탭 클릭

2. 왼쪽 사이드바에서 **"Pages"** 클릭

3. Source 설정:
   - **Source**: "Deploy from a branch" 선택
   - **Branch**: `main` 선택 (또는 `master` - 저장소에 따라 다름)
   - **Folder**: `/ (root)` 선택

4. **"Save"** 버튼 클릭

---

### 5단계: 접속하기!

1. **1-2분 정도 기다리기** (배포 진행 중)

2. Settings → Pages 페이지 상단에 배포 완료 메시지와 주소가 표시됩니다:
   ```
   Your site is live at https://[사용자이름].github.io/[저장소이름]/
   ```

3. 예시:
   - 사용자 이름이 `john`이고 저장소 이름이 `safe-door`인 경우
   - 접속 주소: `https://john.github.io/safe-door/`

4. **태블릿 브라우저에서 위 주소로 접속하면 끝!** 🎉

---

## 📝 파일 수정 방법

나중에 웹사이트를 수정하고 싶다면:

1. 저장소 페이지에서 `index.html` 파일 클릭
2. 우측 상단 **연필 아이콘** (✏️) 클릭
3. 파일 내용 수정
4. 페이지 하단:
   - Commit message 입력
   - "Commit changes" 클릭
5. 자동으로 다시 배포됨 (1-2분 소요)

---

## ❓ 자주 묻는 질문

**Q: "Your site is ready to be published" 메시지가 계속 나옵니다**
- A: Source에서 branch를 선택하고 Save 했는지 확인하세요
- 처음 배포는 시간이 걸릴 수 있습니다 (최대 5분)

**Q: 404 오류가 나옵니다**
- A: 파일 이름이 정확히 `index.html`인지 확인하세요
- Settings → Pages에서 branch 설정을 확인하세요

**Q: 변경사항이 안 보입니다**
- A: 배포가 완료될 때까지 1-2분 기다려보세요
- 브라우저 새로고침 (Ctrl+Shift+R) 해보세요

---

## ✅ 체크리스트

배포 전 확인:
- [ ] GitHub 계정 만들기 완료
- [ ] Public 저장소 만들기 완료
- [ ] `index.html` 파일 업로드 완료
- [ ] Settings → Pages에서 Source 설정 완료
- [ ] 배포 완료 확인 (주소 확인)

---

## 💡 팁

- GitHub Pages는 완전 무료입니다
- 저장소 이름을 바꾸면 주소도 바뀝니다
- 파일을 업데이트하면 자동으로 다시 배포됩니다
- 커스텀 도메인도 연결할 수 있습니다 (Settings → Pages)

---

## 📞 도움이 필요하면

자세한 영어 가이드: `GITHUB_DEPLOY_GUIDE.md`

