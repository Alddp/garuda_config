#!/usr/bin/env fish

# 设置源目录和目标目录
set target_dir $HOME/.config/applications_config
set source_dir $HOME/.local/share/applications

# 检查源目录是否存在
if not test -d $source_dir
    echo "Source directory $source_dir does not exist."
    exit 1
end

# 检查目标目录是否存在
if not test -d $target_dir
    echo "Target directory $target_dir does not exist. Creating it..."
    mkdir -p $target_dir
end

# 遍历源目录中的所有文件
for file in $source_dir/*
    # 检查当前项是否是文件
    if test -f $file
        # 创建符号链接
        ln -sf $file $target_dir/
        echo "Linked: $file -> $target_dir/"
    else
        echo "Skipping non-file: $file"
    end
end

echo "Sync completed!"
