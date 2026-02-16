#!/bin/bash

# AI Credit Scoring - GitHub Upload Script
# This script helps you quickly push the project to GitHub

echo "================================="
echo "AI Credit Scoring GitHub Setup"
echo "================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   - Windows: https://git-scm.com/download/win"
    echo "   - Mac: brew install git"
    echo "   - Linux: sudo apt-get install git"
    exit 1
fi

echo "✓ Git is installed"
echo ""

# Get user information
read -p "Enter your GitHub username: " github_username
read -p "Enter your repository name (e.g., ai-credit-scoring): " repo_name

echo ""
echo "Repository URL will be: https://github.com/$github_username/$repo_name"
read -p "Is this correct? (y/n): " confirm

if [ "$confirm" != "y" ]; then
    echo "Setup cancelled."
    exit 0
fi

echo ""
echo "📦 Initializing Git repository..."
git init

echo ""
echo "➕ Adding files..."
git add .

echo ""
echo "💾 Creating initial commit..."
git commit -m "Initial commit: AI-Powered Credit Scoring System with 15-slide presentation and ML prototype"

echo ""
echo "🔗 Connecting to GitHub..."
git remote add origin "https://github.com/$github_username/$repo_name.git"

echo ""
echo "⬆️ Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "================================="
echo "✅ SUCCESS!"
echo "================================="
echo ""
echo "Your project is now on GitHub!"
echo "Visit: https://github.com/$github_username/$repo_name"
echo ""
echo "To make updates later, use:"
echo "  git add ."
echo "  git commit -m 'Your message'"
echo "  git push"
echo ""
