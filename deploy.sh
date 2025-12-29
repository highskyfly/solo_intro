#!/bin/bash

echo "🌿 绿意盎然 - 网站部署脚本"
echo "============================"
echo ""

# 检查是否安装了 gh CLI
if command -v gh &> /dev/null; then
    echo "✅ 检测到 GitHub CLI"
    
    # 检查登录状态
    if gh auth status &> /dev/null; then
        echo "✅ 已登录 GitHub"
        
        # 创建仓库
        echo ""
        echo "📦 创建 GitHub 仓库..."
        gh repo create solo_intro --public --description "🌿 绿意盎然 - 花草养护记录网站" --source=. --push
        
        echo ""
        echo "✅ 仓库创建成功！"
        echo ""
        echo "📝 下一步："
        echo "1. 打开 https://github.com/highskyfly/solo_intro/settings/pages"
        echo "2. 在 'Source' 部分选择 'main' 分支"
        echo "3. 点击 'Save'"
        echo "4. 等待 1-2 分钟部署完成"
        echo ""
        echo "🌐 网站将发布在："
        echo "   https://highskyfly.github.io/solo_intro/"
        echo ""
    else
        echo "⚠️  未登录 GitHub，请先运行: gh auth login"
    fi
else
    echo "📝 GitHub CLI 未安装，请手动操作："
    echo ""
    echo "步骤 1：创建 GitHub 仓库"
    echo "   1. 打开 https://github.com/new"
    echo "   2. Repository name 输入: solo_intro"
    echo "   3. 选择 Public"
    echo "   4. 不要勾选任何选项，直接点击 'Create repository'"
    echo ""
    echo "步骤 2：推送代码"
    echo "   运行以下命令："
    echo ""
    echo "   git remote add origin https://github.com/highskyfly/solo_intro.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
    echo ""
    echo "步骤 3：启用 GitHub Pages"
    echo "   1. 打开 https://github.com/highskyfly/solo_intro/settings/pages"
    echo "   2. Source 选择 'main' 分支"
    echo "   3. 点击 'Save'"
    echo "   4. 等待 1-2 分钟"
    echo ""
    echo "🌐 部署完成后访问："
    echo "   https://highskyfly.github.io/solo_intro/"
fi
