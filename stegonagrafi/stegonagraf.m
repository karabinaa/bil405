
covername = input('imge dosyan�z�n ad�n� uzant�s� ile giriniz (�rn jennifer.bmp): ', 's');

messagename = input('gizlenecek imgenizin ad�n� uzant�s� ile giriniz: ', 's');
 

cover = imread(covername);
message = imread(messagename);
 

figure(1), imshow(cover); title('Orjinal �mge (Cover Image)');
figure(2), imshow(message);title('Saklanan �mge (Message Image)');
 

cover=double(cover);
message=double(message);
 

imbed=3;
 

messageshift=bitshift(message,-(8-imbed));
 

showmess=uint8(messageshift);
showmess=bitshift(showmess,8-imbed);
figure(3),imshow(showmess);title('Saklanacak 4 Bitlik imge');
 

coverzero = cover;
for i=1:imbed
coverzero=bitset(coverzero,i,0);
end
 

stego = uint8(coverzero)+uint8(messageshift);
figure(4),imshow(stego);title('Stego image');
 

imwrite(showmess,'showmesscolor.bmp'); 
 

imwrite(stego,'stegocolor.bmp');
