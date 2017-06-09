%% Features. By: Adrián Alemán Zapata

im=imread('lena.bmp');%Read image
im= im2double(im);
%% Roberts
 ker1=[1 0; 0 -1]; %Kernels
 ker2=[0 1; -1 0];
Gx=abs(conv2(im,ker1,'same')); %Convolution
Gy=abs(conv2(im,ker2,'same'));
G = sqrt( Gx.^2 + Gy.^2); %Finding the sum 
g=histeq(G); %Histogram equalization
BW1 = im2bw(g, 0.85); %Thresholding
imshow(BW1)
title('Roberts')
%% Prewitt

ker1=[1 0 -1; 1 0 -1; 1 0 -1]; %Kernels
ker2=[1 1 1; 0 0 0; -1 -1 -1];
Gx=abs(conv2(im,ker1,'same')); %Convolution
Gy=abs(conv2(im,ker2,'same'));
G = sqrt( Gx.^2 + Gy.^2); %Finding the sum
g=histeq(G); %Histogram equalization
BW2 = im2bw(g, 0.85); %Thresholding
imshow(BW2)
title('Prewitt')
%% Sobel

ker1=[1 0 -1; 2 0 -2; 1 0 -1];% Kernel
ker2=[1 2 1; 0 0 0; -1 -2 -1];
Gx=abs(conv2(im,ker1,'same')); %Convolution
Gy=abs(conv2(im,ker2,'same'));
G = sqrt( Gx.^2 + Gy.^2); %Finding Sum
g=histeq(G); %Histogram equalization
BW3 = im2bw(g, 0.85); %Thresholding
imshow(BW3)
title('Sobel')

%% Plotting
subplot(1,3,1)
imshow(BW1)
title('Roberts')

subplot(1,3,2)
imshow(BW2)
title('Prewitt')

subplot(1,3,3)
imshow(BW3)
title('Sobel')
