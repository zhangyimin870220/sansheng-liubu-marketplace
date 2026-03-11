# Gitee 仓库认证配置指南

## 问题分析
Gitee 仓库需要身份认证才能推送代码。当前使用的是 HTTPS 方式，需要配置凭据。

## 解决方案

### 方案一：配置 Gitee Access Token（推荐）

1. **生成 Gitee Personal Access Token**
   - 访问 https://gitee.com/profile/personal_access_tokens
   - 点击"生成新令牌"
   - 设置令牌名称和权限（至少需要 `projects` 权限）
   - 复制生成的令牌（只显示一次）

2. **在 Git 中配置认证信息**
   
   在命令行执行（将 YOUR_TOKEN 替换为你的令牌）：
   ```bash
   git remote set-url origin https://YOUR_TOKEN@gitee.com/zym1987/sansheng-liubu-marketplace.git
   ```
   
   或者推送到 Gitee 时：
   ```bash
   git push https://YOUR_TOKEN@gitee.com/zym1987/sansheng-liubu-marketplace.git master
   ```

### 方案二：配置 SSH 密钥（更安全）

1. **生成 SSH 密钥**
   ```bash
   ssh-keygen -t rsa -C "your_email@example.com"
   ```

2. **将公钥添加到 Gitee**
   - 复制 `~/.ssh/id_rsa.pub` 内容
   - 访问 https://gitee.com/profile/sshkeys
   - 点击"添加公钥"，粘贴并保存

3. **切换到 SSH URL**
   ```bash
   git remote set-url origin git@gitee.com:zym1987/sansheng-liubu-marketplace.git
   ```

### 方案三：使用凭据存储

1. **启用凭据存储**
   ```bash
   git config --global credential.helper store
   ```

2. **首次推送时输入用户名和密码/令牌**
   ```bash
   git push -u origin master
   ```
   
   系统会提示输入：
   - Username: zym1987
   - Password: (你的 Gitee 密码或 Access Token)

## 快速修复命令

将下面的命令中的 `YOUR_ACCESS_TOKEN` 替换为你的 Gitee Access Token：

```bash
cd c:/Users/ak000/CodeBuddy/Claw/marketplace
git remote set-url origin https://YOUR_ACCESS_TOKEN@gitee.com/zym1987/sansheng-liubu-marketplace.git
git push -u origin master
```

## 测试验证

执行以下命令验证配置是否成功：
```bash
git ls-remote origin
```

如果能看到输出（而不是认证错误），说明配置成功。
