#!/bin/bash

echo "================================================"
echo "🕌 Islamic Books Library - Node.js Build Script"
echo "================================================"

# Verify this is Node.js environment
echo "📋 Checking Node.js environment..."
echo "Node.js version: $(node --version)"
echo "NPM version: $(npm --version)"
echo "Platform: $(uname -s)"

# Confirm this is NOT a Python project
echo ""
echo "✅ Confirming: This is a Node.js project"
echo "❌ This is NOT a Python project"
echo "❌ No requirements.txt needed"
echo "❌ No pip install needed"

# Clean install
echo ""
echo "📦 Installing Node.js dependencies..."
npm ci --only=production

# Build client
echo ""
echo "🔨 Building React client..."
cd client
npm install --only=production
npm run build
cd ..

echo ""
echo "✅ Build completed successfully!"
echo "🚀 Ready to start Node.js server"