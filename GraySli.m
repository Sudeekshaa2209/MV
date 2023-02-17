clc;
clear all;
i=imread('Lion.png');
j=double(i);
k=double(i);
[row,col]=size(j);
T1=100 %Lowest threshold value
T2=200 % Highest threshold value
for x=1:row
for y=1:col
if((j(x,y)>T1) && (j(x,y)<T2))
j(x,y)=i(x,y);
k(x,y)=255;
else
j(x,y)=0;
k(x,y)=0;
end
end
end
subplot(311), imshow(i), title('Original image')
subplot(312), imshow(uint8(j)), title('Graylevel slicing with background')
subplot(313), imshow(uint8(k)), title('Graylevel slicing without background')