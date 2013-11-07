clear all;  close all;  clc;
 
im = imread('http://i.imgur.com/TwDQZKO.jpg');
 
r = im(:,:, 1);
g = im(:,:, 2);
b = im(:,:, 3);
  
%yeşil
bwr = abs(double(r) - 80) <= 80;
bwg = abs(double(g) - 240) <= 80;
bwb = abs(double(b) - 60) <= 80;
bw = bwr .* bwg .* bwb;
 
bwy = cat(3, bw,bw,bw);
imgy = uint8(double(im) .* bwy);
 


% sarı
bwr = abs(double(r) - 240) <= 50;
bwg = abs(double(g) - 195) <= 50;
bwb = abs(double(b) - 4) <= 50;
bw = bwr .* bwg .* bwb;

bws = cat(3, bw,bw,bw);
imgs = uint8(double(im) .* bws);


% mavi
bwr = abs(double(r) - 70) <= 70;
bwg = abs(double(g) - 140) <= 70;
bwb = abs(double(b) - 250) <= 120;
bw = bwr .* bwg .* bwb;

bwm = cat(3, bw,bw,bw);
imgm = uint8(double(im) .* bwm);


% turuncu
bwr = abs(double(r) - 250) <= 40;
bwg = abs(double(g) - 80) <= 40;
bwb = abs(double(b) - 70) <= 80;
bw = bwr .* bwg .* bwb;

bwt = cat(3, bw,bw,bw);
imgt = uint8(double(im) .* bwt);




% kırnızı
bwr = abs(double(r) - 210) <= 80;
bwg = abs(double(g) - 55) <= 28;
bwb = abs(double(b) - 70) <= 41;
bw = bwr .* bwg .* bwb;

bwk = cat(3, bw,bw,bw);
imgk = uint8(double(im) .* bwk);




% kahve
bwr = abs(double(r) - 54) <= 30;
bwg = abs(double(g) - 80) <= 60;
bwb = abs(double(b) - 30) <= 30;
bw = bwr .* bwg .* bwb;

bwka = cat(3, bw,bw,bw);
imgka = uint8(double(im) .* bwka);


figure(1);
subplot(2,3,1); imshow(imgy); title('Yeşil');
subplot(2,3,2); imshow(imgs);  title('Sarı');
subplot(2,3,3); imshow(imgm);  title('Mavi');
subplot(2,3,4); imshow(imgk);  title('Kırmızı');
subplot(2,3,5); imshow(imgka); title('Kahverengi');
subplot(2,3,6); imshow(imgt); title('Turuncu');


