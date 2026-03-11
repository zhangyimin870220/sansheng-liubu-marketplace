#!/bin/bash
cd /c/Users/ak000/CodeBuddy/Claw/marketplace

# 配置用户
git config user.name "zhangyimin870220"
git config user.email "zhangyimin870220@users.noreply.github.com"

# 提交
git commit -m "Initial commit: 三省六部制插件市场"

# 添加远程仓库
git remote add origin git@gitee.com:zym1987/sansheng-liubu-marketplace.git 2>/dev/null || true
git remote add github git@github.com:zhangyimin870220/sansheng-liubu-marketplace.git 2>/dev/null || true

# 推送
git push -u origin master || git push origin master
git push -u github master || git push github master

echo "推送完成!"
