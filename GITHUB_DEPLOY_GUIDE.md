# GitHub Pages에 배포하기 - 단계별 가이드

## 🚀 빠른 배포 (5분 안에 완료!)

### STEP 1: GitHub 계정 만들기 (이미 있으면 스킵)

1. https://github.com/signup 접속
2. 사용자 이름, 이메일, 비밀번호 입력
3. "Create account" 클릭
4. 이메일 인증 완료

---

### STEP 2: 새 저장소 만들기

1. https://github.com/new 접속 (또는 GitHub 로그인 후 우측 상단 + 버튼 → New repository)

2. 저장소 정보 입력:
   - **Repository name**: `safe-door` (또는 원하는 이름)
   - **Description**: Safe Door Website (선택사항)
   - **Public** 선택 (GitHub Pages는 Public 저장소만 무료)
   - **README 파일은 체크하지 않기** (이미 index.html이 있음)

3. "Create repository" 버튼 클릭

---

### STEP 3: 파일 업로드하기

1. 저장소 페이지에서 **"uploading an existing file"** 링크 클릭
   (또는 README가 없다면 자동으로 표시됨)

2. 파일 업로드:
   - **방법 A: 드래그 앤 드롭**
     - `index.html` 파일을 브라우저 창에 드래그 앤 드롭
   
   - **방법 B: 파일 선택**
     - "choose your files" 클릭
     - `index.html` 파일 선택

3. 페이지 하단으로 스크롤:
   - **Commit message**: "Initial commit: Safe Door website" (또는 원하는 메시지)
   - **"Commit changes"** 버튼 클릭

---

### STEP 4: GitHub Pages 활성화

1. 저장소 페이지에서 **"Settings"** 탭 클릭
   (저장소 상단 메뉴에서 오른쪽 끝)

2. 왼쪽 사이드바에서 **"Pages"** 클릭
   (Code and automation 섹션 아래)

3. Source 설정:
   - **Source**: "Deploy from a branch" 선택
   - **Branch**: `main` (또는 `master`) 선택
   - **Folder**: `/ (root)` 선택 (기본값)

4. **"Save"** 버튼 클릭

---

### STEP 5: 접속하기!

1. 몇 초~2분 정도 기다리기 (배포 진행 중)

2. 저장소 Settings → Pages로 돌아가면 상단에 배포된 주소가 표시됩니다:
   ```
   Your site is live at https://[사용자이름].github.io/[저장소이름]/
   ```

3. 예시:
   - 사용자 이름: `john`
   - 저장소 이름: `safe-door`
   - 접속 주소: `https://john.github.io/safe-door/`

4. **태블릿 브라우저에서 위 주소로 접속!** 🎉

---

## 📝 파일 업데이트 방법

나중에 파일을 수정하고 싶다면:

1. 저장소 페이지에서 `index.html` 파일 클릭
2. 우측 상단 **연필 아이콘** (✏️) 클릭
3. 파일 내용 수정
4. 페이지 하단으로 스크롤:
   - Commit message 입력
   - "Commit changes" 클릭
5. 자동으로 다시 배포됨 (1-2분 소요)

---

## 🔧 문제 해결

**Q: "Your site is ready to be published" 메시지가 계속 표시됩니다**
- A: Source에서 branch를 선택하고 Save 했는지 확인
- 몇 분 더 기다려보세요 (최초 배포는 시간이 걸릴 수 있음)

**Q: 404 오류가 표시됩니다**
- A: 파일 이름이 정확히 `index.html`인지 확인 (대소문자 구분)
- 저장소 Settings → Pages에서 branch가 제대로 선택되어 있는지 확인

**Q: 변경사항이 반영되지 않습니다**
- A: 배포가 완료될 때까지 1-2분 기다리기
- 브라우저 캐시 삭제 후 다시 시도 (Ctrl+Shift+R)

---

## ✅ 체크리스트

배포 전 확인:
- [ ] GitHub 계정 생성 완료
- [ ] Public 저장소 생성 완료
- [ ] `index.html` 파일 업로드 완료
- [ ] Settings → Pages에서 Source 설정 완료
- [ ] 배포 완료 확인 (Settings → Pages에서 주소 확인)

---

## 🎯 완료 후 할 일

1. 생성된 GitHub Pages 주소를 메모하거나 북마크
2. 태블릿 브라우저에서 주소 입력하여 접속 테스트
3. 즐겁게 사용하기! 🚀

---

## 💡 팁

- GitHub Pages는 무료로 무제한 사용 가능
- 저장소 이름을 바꾸면 주소도 변경됨
- 파일을 업데이트하면 자동으로 다시 배포됨
- 커스텀 도메인도 연결 가능 (Settings → Pages)

