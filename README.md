# 황도연 — CV

소프트웨어 엔지니어입니다. 도메인을 이해하고 그것을 제품으로 만들어가는 일을 합니다.

[waylake@waylake.com](mailto:waylake@waylake.com) · [GitHub](https://github.com/waylake) · [LinkedIn](https://www.linkedin.com/in/waylake) · [PDF 이력서](cv.pdf)

## 소개

탄소회계, 임상시험, B2B SaaS 분야에서 일하며 비개발자와의 협업을 통해 실제로 쓰이는 소프트웨어를 만들어왔습니다.

무엇을 만들 것인가와 함께 어떻게 운영할 것인가도 중요하게 생각합니다. 코드가 배포되고 사용자에게 닿기까지의 과정을 직접 설계하고 개선해왔으며, 최근에는 AI를 활용해 사람과 소프트웨어 사이의 간격을 줄이는 작업에 집중하고 있습니다.

## 경력

### (주) 리뉴어스랩 — Tech Manager · 풀스택 개발 및 인프라 관리

`2024.09 — 현재`

소규모 팀에서 제품이 없던 상태로 시작해 여러 서비스를 기획부터 배포까지 만들어냈습니다. 사용자 피드백을 반영하는 개발 사이클을 처음부터 구축했고, 제품이 늘어나며 복잡해지는 인프라를 GitHub CI/CD와 온프레미스 환경에서 직접 관리했습니다.

- GHG Protocol 표준에 따른 기업 탄소 배출량 산정 플랫폼을 엔드투엔드로 구축했습니다. 조직별 데이터 수집 기능과 수집 자동화, 배출계수를 적용한 다중 가스 산정 엔진, 결과 대시보드까지 설계하고 개발했습니다.
- Scope 1·2·3 전 영역의 산정식을 구현했고, Scope 3는 Category 1·2·3·4·6·7·8·9·13을 직접 담당했습니다. IEA, Ecoinvent, Exiobase 등 배출계수 데이터베이스를 정제해 각 Category에 맞는 산정식에 적용했습니다.
- Docker 기반 멀티 컨테이너 아키텍처로 다수 서비스 간 통신을 구성했고, 원클릭 배포 파이프라인을 만들어 개발–배포 사이클을 단순화했습니다.
- B2B SaaS 고객 문의 대응과 기능 가이드를 위한 LLM 기반 Agent 시스템을 설계했고, 기업마다 상이한 비정형 데이터를 통합 스키마로 변환하는 AI 파이프라인을 구축했습니다.

### 주식회사 메디아이플러스 — Developer

`2022.02 — 2024.03`

전 세계 임상시험 데이터를 수집하고 정제해 빅데이터 구조로 통합하는 작업으로 시작했습니다. 기관마다 표기 방식과 스키마가 달라 이를 통합하는 것이 핵심 과제였습니다.

- Python과 MySQL로 수집·정제 파이프라인을 구축해 일일 자동 수집이 가능하도록 전환했습니다.
- Tomcat + Spring Boot 레거시를 React와 Express로 전면 마이그레이션했습니다. 프론트엔드는 React Chart로 데이터를 시각화하고 TanStack Query로 검색 성능을 개선했으며, 백엔드는 JWT 인증과 AWS RDS 자동 백업을 연동했습니다.
- Jenkins, Terraform, Ansible을 조합해 배포를 IaC 방식으로 전환하고 AWS Load Balancer까지 적용했습니다.
- 임상시험 Regulation과 Guidelines를 제공하는 웹 서비스를 개발했습니다. 오픈소스 LLM Vicuna를 사내 서버에 설치해 OpenAI 호환 API로 래핑하고, 프롬프트 엔지니어링으로 데이터 정제에 적용했습니다.

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
