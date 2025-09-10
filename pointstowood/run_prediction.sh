#!/bin/bash


docker run --gpus all --rm \
    -v /home/kg281/data:/data \
    -v /home/kg281/projects/PointsToWood/pointstowood:/src \
    points2wood:latest \
    python -u predict.py \
    --point-cloud /data/input.ply \
    --model /src/model/global.pth \
    --batch_size 8 \
    --is-wood 0.50 \
    --grid_size 2.0 4.0 \
    --min_pts 128 \
    --max_pts 16384 \
    --odir /data/output \