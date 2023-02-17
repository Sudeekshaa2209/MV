clc
clear all
image = imread('Parrot.png');
I= imread('Parrot.png');
subplot(2,2,1)
imshow(I)
subplot(2,2,2)
imhist(I)
J = histeq(image);
subplot(2,2,3)
imshow(J)
subplot(2,2,4)
imhist(J)
