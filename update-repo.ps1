# Quick repo update script - run this instead of individual git commands
Write-Host "🚀 Updating Tweetsie repository..." -ForegroundColor Green

# Add all changes
& "C:\Program Files\Git\bin\git.exe" add .

# Commit with timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
& "C:\Program Files\Git\bin\git.exe" commit -m "feat: update staging page - $timestamp"

# Push to GitHub
& "C:\Program Files\Git\bin\git.exe" push

Write-Host "✅ Repository updated successfully!" -ForegroundColor Green
Write-Host "🌐 Netlify will auto-deploy in a few minutes" -ForegroundColor Yellow
