#!/bin/bash

# Render Deployment Script for Islamic Books Library
echo "🚀 Starting deployment of Islamic Books Library..."

# Verify Node.js environment
echo "📋 Node.js version: $(node --version)"
echo "📋 NPM version: $(npm --version)"

# Install dependencies
echo "📦 Installing backend dependencies..."
npm install

# Install client dependencies and build
echo "📦 Installing client dependencies..."
cd client && npm install

echo "🔨 Building React app..."
npm run build

echo "✅ Build completed successfully!"
echo "🌟 Islamic Books Library is ready for deployment!"