#!/usr/bin/env bash
# exit on error
set -o errexit

# 1. Install Python dependencies
# pip install -r requirements.txt (Already done in buildCommand)

# 2. Build Frontend
echo "📦 Building Frontend..."
if [ -d "frontend" ]; then
    cd frontend
    npm install
    npm run build
    cd ..
else
    echo "❌ Error: frontend directory not found!"
    exit 1
fi

echo "✅ Build Complete!"
