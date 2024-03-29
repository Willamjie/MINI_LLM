#!/usr/bin/bash
CUDA_VISIBLE_DEVICES=0,1,2 accelerate launch --multi_gpu  --config_file accelerate_multi_gpu.yaml ./pre_train.py > log 2>&1 &
# accelerate launch $1

# 使用方式，后面接一个训练脚本即可， 如：./train.sh sft.py
