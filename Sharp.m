a = imread('Lion.png');
imshow(a)
title('Original Image');
b = imsharpen(a);
figure, imshow(b)
title('Sharpened Image');
