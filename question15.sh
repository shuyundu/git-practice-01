#!/bin/bash
# 获取远程分支 branch1
git fetch origin branch1

# 确保在 main 分支
git checkout main
git pull origin main

# 合并 branch1
git merge branch1 || (echo "Merge conflict detected. Resolve conflicts manually.")

# 如果有冲突，手动解决并添加修改后的文件
git add file1.txt dir1/file3 2>/dev/null
git commit -m "Resolved merge conflicts in file1.txt and dir1/file3" 2>/dev/null || echo "No conflicts to commit."

