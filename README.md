# 🚀 SLAB.AI 2.0 - Lead to Learning Platform

A modern, cloud-native EdTech platform with complete DevOps implementation - from infrastructure automation to production deployment.

## 🎯 Business Value

- **Lead Conversion** - Capture and nurture learner interest into paid enrollments
- **Scalable Infrastructure** - Handle campaign spikes with auto-scaling
- **Enterprise Security** - Protect PII and payment data with zero-trust architecture
- **Measurable Performance** - API p95 < 300ms, global CDN delivery

## 🏗️ Production Architecture
CloudFront → S3 (Static) → ALB → EKS Cluster → MongoDB Atlas
↑ ↑ ↑ ↑ ↑
CDN Web Assets Load Kubernetes Database
(React App) Balancer (Node.js API)

🚀 DevOps Implementation

### Infrastructure as Code
cd infrastructure/
terraform init
terraform plan
terraform apply
✅ Completed: VPC, EKS, ECR, S3, CloudFront, Route53, WAF

CI/CD Automation
GitHub Actions Pipeline:
- Automated Docker builds on push
- Security scanning & vulnerability checks
- ECR image push with Git SHA versioning
- Kubernetes deployment to EKS
- Environment-specific configurations
Security & Compliance
SSM Secrets Manager - Secure credential storage
IRSA (IAM Roles) - Least privilege access for pods
Private Subnets - Database isolation from public internet
TLS/SSL - ACM certificates for end-to-end encryption
Monitoring & Observability
Prometheus + Grafana for metrics
CloudWatch for AWS services
Application Load Balancer access logs
SLO dashboards for business metrics
📁 Project Structure
slab-ai-v2/
├── .github/workflows/     # CI/CD pipelines
├── infrastructure/        # Terraform code
├── backend/              # Node.js microservices
├── frontend/             # React application
├── docs/                 # Architecture & runbooks
└── kubernetes/           # K8s manifests
🔧 Quick Start
Local Development

# Start all services
docker-compose up --build

# Access application
# Frontend: http://localhost:3000
# Backend API: http://localhost:3001/health
Production Deployment

# 1. Infrastructure
cd infrastructure && terraform apply

# 2. Cluster access
aws eks update-kubeconfig --region ca-central-1 --name slab-ai-dev-dev

# 3. Deploy applications
kubectl apply -f kubernetes/
🛡️ Security Features
Input validation with express-validator
JWT authentication with secure token storage
Helmet security headers
CORS configuration
SSM for secrets management
IRSA for AWS service access
📊 API Endpoints
GET /health - System health
POST /api/leads - Capture leads
GET /api/leads - List leads
POST /api/courses - Create courses
POST /api/auth/register - User registration
POST /api/payments/create-intent - Payment processing
🎯 Business Metrics
Funnel Health: Visit → Lead conversion rate
Reliability: ≥99.9% monthly uptime
Performance: API p95 < 300ms, TTFB < 200ms
Delivery: Weekly releases with <10% change failure rate
🔍 Evidence of Implementation
Terraform State: Proven infrastructure deployment (VPC, EKS, networking)
CI/CD Pipeline: Automated build and deployment process
Security Documentation: SSM secrets, IRSA roles, network security
Architecture Diagrams: Multi-AZ production design
GitHub Repository: https://github.com/Kartik27baliyan/Slab.ai-EdTech-platform-
Submission Ready: Complete DevOps implementation documented and verified
