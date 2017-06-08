
im=imread('lena.bmp');%Read image
%% Roberts
ker=[1 1;-1 -1]; %Roberts kernel
nuevo=imfilter(im,ker); %Filter image
BW1 = im2bw(nuevo, 0.025); %Binarize image
imshow(BW1) 
title('Roberts')

%% Prewitt
%Prewitt x and y kernels
ker1=[1 0 -1; 1 0 -1; 1 0 -1];
ker2=[1 1 1; 0 0 0; -1 -1 -1];

M=ker1+ker2; %Add both directions
veamos=imfilter(im,M); %Filter image
BW2 = im2bw(veamos, 0.125); %Binarize image
imshow(BW2)
title('Prewitt')

%% Sobel
%Sobel x and y kernels
ker1=[1 0 -1; 2 0 -2; 1 0 -1];
ker2=[1 2 1; 0 0 0; -1 -2 -1];

M=ker1+ker2; %Add both directions
veamos=imfilter(im,M); %Filter image
BW3 = im2bw(veamos, 0.125); %Binarize image
imshow(BW3)
title('Sobel')

%% Canny edge detector
%a)
I=imread('needle.png'); % Read image
%Canny parameters
T1=0.02;
T2=0.4;
sigma=2;
res1=edge(I,'Canny',[T1,T2],sigma); %Edge detector
imshow(res1)
title('T1=0.02 T2=0.4 sigma=2')