#!/bin/bash

echo "🚀 ListMonk Deployment Helper"
echo "=============================="
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Git repository not found. Please run:"
    echo "   git init"
    echo "   git add ."
    echo "   git commit -m 'Initial commit'"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/ListMonk.git"
    echo "   git push -u origin main"
    echo ""
    exit 1
fi

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "❌ Git remote origin not found. Please add your GitHub repository:"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/ListMonk.git"
    echo ""
    exit 1
fi

echo "✅ Git repository found"
echo ""

# Get current remote URL
REMOTE_URL=$(git remote get-url origin)
echo "📁 Repository: $REMOTE_URL"
echo ""

# Extract username and repo name
if [[ $REMOTE_URL =~ github\.com[:/]([^/]+)/([^/]+)\.git ]]; then
    USERNAME=${BASH_REMATCH[1]}
    REPO_NAME=${BASH_REMATCH[2]}
    echo "👤 GitHub Username: $USERNAME"
    echo "📦 Repository Name: $REPO_NAME"
    echo ""
else
    echo "❌ Could not parse GitHub repository URL"
    exit 1
fi

# Update the .do/app.yaml file with the correct username
echo "🔧 Updating configuration files..."
sed -i.bak "s/YOUR_GITHUB_USERNAME/$USERNAME/g" .do/app.yaml

echo "✅ Configuration updated!"
echo ""

echo "📋 Next Steps:"
echo "==============="
echo "1. Push your changes to GitHub:"
echo "   git add ."
echo "   git commit -m 'Add DigitalOcean deployment config'"
echo "   git push"
echo ""
echo "2. Go to DigitalOcean App Platform:"
echo "   https://cloud.digitalocean.com/apps"
echo ""
echo "3. Click 'Create App' and select your GitHub repository"
echo ""
echo "4. DigitalOcean will automatically detect the configuration"
echo ""
echo "5. Click 'Create Resources' to deploy"
echo ""
echo "💰 Estimated Cost: ~$12/month"
echo "   - App: $5/month"
echo "   - Database: $7/month"
echo ""
echo "🎉 Your ListMonk app will be available at:"
echo "   https://your-app-name.ondigitalocean.app"
echo ""
echo "🔑 Login with: admin / your_secure_password_here"
echo ""
echo "⚠️  Don't forget to change the default password in .do/app.yaml!"
