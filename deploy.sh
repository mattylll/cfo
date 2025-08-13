#!/bin/bash

# Deploy script for CFO+ website to GitHub Pages

echo "🚀 Deploying CFO+ website to GitHub Pages..."

# Add your GitHub repository as origin
# Replace YOUR_GITHUB_USERNAME with your actual GitHub username
echo "📝 Please enter your GitHub username:"
read GITHUB_USERNAME

echo "Adding remote origin..."
git remote add origin https://github.com/$GITHUB_USERNAME/cfo-plus.git 2>/dev/null || git remote set-url origin https://github.com/$GITHUB_USERNAME/cfo-plus.git

echo "📤 Pushing to GitHub..."
git push -u origin main

echo "⚙️ Configuring GitHub Pages..."
echo "Please follow these steps in your GitHub repository:"
echo "1. Go to https://github.com/$GITHUB_USERNAME/cfo-plus/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Under 'Branch', select 'main' and '/ (root)'"
echo "4. Click 'Save'"
echo ""
echo "🌐 Your site will be available at: https://$GITHUB_USERNAME.github.io/cfo-plus/"
echo "Note: It may take a few minutes for the site to become available."