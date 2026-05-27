#!/bin/bash

echo "==============================="
echo "EAIT CI/CD Deployment Pipeline"
echo "==============================="

echo ""
echo "STEP 1 — Building latest portal image..."
docker build -t student-portal ../app

echo ""
echo "STEP 2 — Stopping old portal container..."
docker stop portal || true

echo ""
echo "STEP 3 — Removing old container..."
docker rm portal || true

echo ""
echo "STEP 4 — Deploying new portal..."
docker run -d -p 5000:5000 --name portal student-portal

echo ""
echo "==============================="
echo "Deployment completed successfully"
echo "==============================="
