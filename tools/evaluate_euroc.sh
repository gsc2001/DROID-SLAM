#!/bin/bash


EUROC_PATH=datasets/EuRoC

evalset=(
    MH_01_easy
)

for seq in ${evalset[@]}; do
    python evaluation_scripts/test_euroc.py --datapath=$EUROC_PATH/$seq --gt=data/euroc_groundtruth/$seq.txt --weights=droid.pth $@
done

