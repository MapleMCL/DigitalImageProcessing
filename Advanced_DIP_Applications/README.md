# Advanced DIP Applications

## Introduction
基于课程《数字图像处理应用进阶实践》，本项目涵盖了八类经典的数字图像处理场景，采用多种图像处理算法解决实际问题，并针对每一类场景选用合适的评价指标（metrics）进行效果评估.

## Covered Tasks / Algorithms / Evaluation Metrics
- **图像增强**：Histogram，Retinex model
    - LOE（Lightness Order Error）
- **图像降噪**：局部滤波，Co-occurrence filter
- **图像还原**：维纳滤波，Dark channel prior
- **图像分割**：聚类，超像素
- **特征提取**：灰度共生矩阵，SIFT
- **图像配准**：基于特征的自动图像配准，3D点云配准
- **图像重建**：Marching cube，Poisson surface reconstruction
- **图像滤波**：卡尔曼滤波器

## Implementation
1. 使用 **MATLAB / Python** 实现多种图像处理算法
2. 熟悉 **OpenCV** 等主流图像处理库
3. 构建模块化代码结构（算法/评估指标），支持不同任务的扩展与复用

## Goal
- 掌握经典数字图像处理算法的原理与实现  
- 理解不同任务对应的评价指标体系  
- 建立从算法设计到效果评估的完整图像处理流程 