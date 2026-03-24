clc; clear; close all;
% main.m:
% - Invoke algorithms, calculate evaluation metrics, and show images

% img01
img_1 = imread('../image/ORIGIN/img01.jpg');
img_1_he = hist_eq(img_1);
%img_1_clahe = cla_hist_eq(img_1);
%img_1_lime = retinex_lime(img_1);
figure(1);
subplot(2,2,1); imshow(img_1);
subplot(2,2,2); imshow(img_1_he);
%subplot(2,2,3); imshow(img_1_clahe);
%subplot(2,2,4); imshow(img_1_lime);

% img02

% img03

% img04

% img05