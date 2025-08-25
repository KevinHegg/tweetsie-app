@echo off
echo 🚀 Updating Tweetsie repository...
echo.

"C:\Program Files\Git\bin\git.exe" add .
"C:\Program Files\Git\bin\git.exe" commit -m "feat: update staging page"
"C:\Program Files\Git\bin\git.exe" push

echo.
echo ✅ Repository updated successfully!
echo 🌐 Netlify will auto-deploy in a few minutes
pause
