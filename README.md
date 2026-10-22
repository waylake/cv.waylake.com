# 황도연 — CV

소프트웨어 엔지니어입니다. 도메인을 이해하고 그것을 제품으로 만들어가는 일을 합니다.

[waylake@waylake.com](mailto:waylake@waylake.com) · [GitHub](https://github.com/waylake) · [LinkedIn](https://www.linkedin.com/in/waylake) · [PDF 이력서](cv.pdf)

## 소개

탄소회계, 임상시험, B2B SaaS 분야에서 일하며 비개발자와의 협업을 통해 실제로 쓰이는 소프트웨어를 만들어왔습니다.

무엇을 만들 것인가와 함께 어떻게 운영할 것인가도 중요하게 생각합니다. 코드가 배포되고 사용자에게 닿기까지의 과정을 직접 설계하고 개선해왔으며, 최근에는 AI를 활용해 사람과 소프트웨어 사이의 간격을 줄이는 작업에 집중하고 있습니다.

## 경력

### (주) 리뉴어스랩 — Tech Manager · 풀스택 개발 · 인프라 · 개발 생산성

`2024.09 — 현재`

제품이 없던 5인 팀에 합류해 탄소회계 플랫폼 CarbonLink를 기획부터 배포·운영까지 만들었습니다. 계산 엔진과 웹앱, 비동기 워커, AWS 인프라를 직접 담당했고, 2026년에는 팀이 커지면서 개발 기반(CI/CD·보안 기준선·기록)을 세우는 일로 범위를 넓혔습니다.

#### CarbonLink — 기업 탄소 인벤토리 플랫폼 `2024.09 —`

- **GHG Protocol Scope 1·2·3 산정 엔진** — Scope 3 Category 1·2·3·4·6·7·8·9·13 산정식을 직접 구현하고, IEA·Ecoinvent·Exiobase 계수 DB를 정제해 적용했습니다.
- **이질적인 입력의 통합** — 엑셀·문서 OCR·SAP ERP를 한 스키마로 받고, SAP 8종 6,600만 건을 원본 식별자를 유지한 채 이관해 건수를 대조했습니다.
- **큰 연산을 큐 기반 워커로 분리** — 배출량 재계산·보고서 PDF·요약 집계를 워커로 나누고, 언어가 다른 서비스 사이만 언어 중립 프로토콜로 연결했습니다.

#### 감사 대응 제품 — Audit-trail `2025 —`

- **제3자 검증 대응 화면** — 폴더·파일 드라이브, 다년도 비교, Scope 1·2 활동자료 시트를 한 화면에 묶어 개발 환경까지 배포했습니다.
- **측정 가능한 감사추적** — 10문항 Question Set을 시스템 조건으로 옮겨, 값을 남기는 쓰기 지점 7.3% → 93.9%(865곳), 행위자 기록 1.1% → 99.2%까지 올렸습니다.

#### 인프라 · 릴리스 `2025 —`

- **AWS ECS 13개 서비스를 Terraform으로** — Route53–ALB–ECS 구성, 서비스별 오토스케일, Redis Streams·Celery·BullMQ 큐를 언어 경계에 맞춰 분리했습니다.
- **사내 GitHub Actions 러너를 조직 단위로** — 같은 검사가 40분 넘게 대기하던 것을 16초로 줄이고, 실행 자리도 2개에서 5개로 늘렸습니다. 전용 계정·자동 재기동·자원 상한을 걸었습니다.
- **월 비용을 서비스 단위로 계량화** — 구성 전체가 한 달 $2,734임을 밝히고, 중복 수집되던 감사 로그를 정리해 월 약 $170를 줄였습니다.

#### relay — 엔지니어링 운영 기판 `2026 —`

- **비동기 조정을 git 기반 신호 스트림으로** — 규약을 문서가 아니라 결정론적 검사로 강제하고, 신호만 건드린 PR은 검사 통과 시 사람 손 없이 머지됩니다.
- **주간 다이제스트 엔진(외부 의존성 0)** — 리더·비개발 멤버가 코드를 열지 않고 진행·결정·블로커를 읽고, Notion 기획 33건을 GitHub Projects로 옮겨 보드와 기록의 경계를 세웠습니다.
- **상주 AI 관리자와 macOS 앱** — 계약서·반응 워크플로로 읽히지 않는 기록을 지적하게 하고, SwiftUI 앱(외부 패키지 0, 1.10.0)을 직접 만들었습니다.

### 주식회사 메디아이플러스 — Developer

`2022.02 — 2024.03`

전 세계 임상시험 데이터를 수집하고 정제해 빅데이터 구조로 통합하는 작업으로 시작했습니다.

- **임상시험 데이터 통합** — 기관마다 다른 표기·스키마를 Python과 MySQL 파이프라인으로 합치고 일일 자동 수집까지 만들었습니다.
- **레거시 전면 마이그레이션** — Tomcat + Spring Boot를 React와 Express로 옮겼습니다. React Chart로 시각화하고 TanStack Query로 검색 성능을 개선했으며, JWT 인증과 AWS RDS 자동 백업을 연동했습니다.
- **IaC 기반 배포 전환** — Jenkins·Terraform·Ansible을 조합해 배포를 코드화하고 AWS Load Balancer를 적용했습니다.
- **규제·가이드라인 서비스** — 임상시험 Regulation과 Guidelines를 제공하는 웹 서비스를 개발했고, 오픈소스 LLM Vicuna를 사내 서버에 설치해 OpenAI 호환 API로 래핑한 뒤 프롬프트 엔지니어링으로 데이터 정제에 적용했습니다.

## 논문

**How AI Research Views Dance: A Topic Modeling Analysis of Domestic and International Scholarly Index Databases**
김윤지, 황도연 · 디지털문화아카이브지 (JDCA), KCI 등재, 2026 · [DOI](https://doi.org/10.23089/jdca.2026.8.3.010)
SCOPUS와 KCI에 색인된 AI-무용 연구 논문을 대상으로 토픽 모델링을 수행해 국내외 연구의 지식 구조를 비교 분석했습니다.

**유튜브 데이터 기반 한국 교방춤의 주제 유형 및 유사 표현 기법**
김윤지, 황도연 · 디지털문화아카이브지 (JDCA), KCI 등재, 2024 · [DOI](https://doi.org/10.23089/jdca.2024.7.2.001)
YouTube Data API로 교방춤 영상 메타데이터를 수집하고, 감성 분석과 토픽 모델링을 통해 주제 유형과 시청자 인식 구조를 분석했습니다.

## 기술

- **언어** TypeScript, Python, JavaScript
- **프레임워크** React, Next.js, Express, FastAPI
- **인프라** Docker, Terraform, Ansible, AWS
- **데이터베이스** MongoDB, PostgreSQL, MySQL
- **CI/CD** GitHub Actions, Jenkins

## 학력

**한세사이버보안고등학교 — 해킹보안과** · `2019 — 2022`

## 자격

**정보처리기능사** · 한국산업인력공단
