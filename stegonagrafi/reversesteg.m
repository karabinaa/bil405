close all;
A=imread('stegocolor.bmp'); 

B1 = bitget(A,1)*2^5; B2 = bitget(A,2)*2^6 ; B3 = bitget(A,3)*2^7; B4 = bitget(A,4)*2^7 ; B5 = bitget(A,5)*2^4 ; B6 = bitget(A,6)*2^5 ; B7 = bitget(A,7)*2^6 ; B8 = bitget(A,8)*2^7 ;

figure,subplot(3,3,1),imshow(B1); subplot(3,3,2),imshow(B2); subplot(3,3,3),imshow(B3); subplot(3,3,4),imshow(B4); subplot(3,3,5),imshow(B5); subplot(3,3,6),imshow(B6); subplot(3,3,7),imshow(B7); subplot(3,3,8),imshow(B8);





 B=B1+B2+B3+B4;figure; imshow(B)