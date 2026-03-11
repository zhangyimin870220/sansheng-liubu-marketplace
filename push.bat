@echo off
cd /d C:\Users\ak000\CodeBuddy\Claw\marketplace
D:\Git\cmd\git.exe commit -m "Initial commit"
D:\Git\cmd\git.exe remote add origin https://gitee.com/zym1987/sansheng-liubu-marketplace.git
D:\Git\cmd\git.exe remote add github https://github.com/zhangyimin870220/sansheng-liubu-marketplace.git
D:\Git\cmd\git.exe push -u origin master
D:\Git\cmd\git.exe push -u github master
echo Done!
pause
