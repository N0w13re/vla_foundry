#!/bin/bash

# 如果参数是 list，就执行 --list
if [ "$1" = "list" ]; then
    python vla_foundry/data/scripts/download_dataset.py --list

# 否则执行 --task + 路径
else
    python vla_foundry/data/scripts/download_dataset.py --task "$1" --local_path ./data/"$1"
    # python vla_foundry/data/scripts/download_wget.py --task "$1" --local_path ./data/"$1"
fi