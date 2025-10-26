# 🚀 SLAB.AI 2.0 - Lead to Learning Platform

A modern, cloud-native EdTech platform that captures leads, manages enrollments, and delivers educational content with enterprise-grade reliability.

## 🎯 Features

- **Lead Capture System** - Convert visitors into verified leads
- **Course Management** - Create and manage educational content
- **User Authentication** - Secure registration and login
- **Payment Integration** - Stripe-powered payment processing
- **Real-time Dashboard** - Monitor leads and business metrics
- **Cloud-Ready Architecture** - Built for AWS deployment

## 🏗️ Architecture

- **Frontend**: React SPA with Vite
- **Backend**: Node.js Express API
- **Database**: MongoDB
- **Infrastructure**: Docker, Kubernetes, AWS-ready
- **Monitoring**: Prometheus metrics, health checks

## 🚀 Quick Start

### Local Development
```bash
# Start all services
docker-compose up --build

# Access application
# Frontend: http://localhost:3000
# Backend API: http://localhost:3001/health
Production Deployment
Bash

# Deploy to Kubernetes
kubectl apply -k infrastructure/kubernetes
📁 Project Structure
text

slab-ai-v2/
├── backend/                 # Node.js API
├── frontend/               # React application  
├── infrastructure/         # K8s manifests
├── docs/                   # Documentation
└── docker-compose.yml      # Local development
🔧 API Endpoints
GET /health - System health
POST /api/leads - Capture leads
GET /api/leads - List leads
POST /api/courses - Create courses
POST /api/auth/register - User registration
POST /api/payments/create-intent - Payment processing
📊 Monitoring
Metrics: GET /metrics (Prometheus format)
Health: GET /health (JSON status)
🛡️ Security
Input validation with express-validator
JWT authentication
Helmet security headers
CORS configuration
