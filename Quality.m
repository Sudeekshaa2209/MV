clc
A = imread('Par.jpg');
Anoise = imnoise(A,'Gaussian',0,0.05);
Ablur = imgaussfilt(A,2);
score = piqe(A);
score_noise = piqe(Anoise);
score_blur = piqe(Ablur);
figure
montage({A,Anoise,Ablur},'Size',[1 3])
title({['Original Image: PIQE score = ',
num2str(score),' | Noisy Image: PIQE score =', num2str(score_noise),' ' '| Blurred Image: PIQE score = ', num2str(score_blur)]},'FontSize',12)