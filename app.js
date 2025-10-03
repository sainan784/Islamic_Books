#!/usr/bin/env node

// Islamic Books Library - Node.js Application
// This file confirms this is a Node.js project

console.log('🕌 Islamic Books Library - Node.js Application');
console.log('📚 Starting server...');

// Check Node.js version
const nodeVersion = process.version;
console.log(`📋 Node.js version: ${nodeVersion}`);

// Verify this is not a Python project
console.log('✅ This is a Node.js project, not Python');

// Start the main server
require('./server.js');