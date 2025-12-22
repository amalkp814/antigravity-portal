#!/bin/bash

echo "🚀 Deploying to GitHub Pages..."

# Ensure we're on main branch
git checkout main

# Commit any pending changes
git add .
git commit -m "🚀 Production deployment $(date +%Y-%m-%d)" || echo "No changes to commit"

# Push to GitHub
git push origin main

echo ""
echo "✅ Pushed to GitHub!"
echo ""
echo "📋 Next steps:"
echo "1. Go to GitHub repo settings"
echo "2. Navigate to Pages section"
echo "3. Select 'main' branch"
echo "4. Save"
echo ""
echo "Your site will be live at:"
echo "https://YOUR-USERNAME.github.io/antigravity-portal"
echo ""
echo "🎉 Deployment complete!"
