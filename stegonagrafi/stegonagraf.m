
covername = input('imge dosyanýzýn adýný uzantýsý ile giriniz (örn jennifer.bmp): ', 's');

messagename = input('gizlenecek imgenizin adýný uzantýsý ile giriniz: ', 's');
 

cover = imread(covername);
message = imread(messagename);
 

figure(1), imshow(cover); title('Orjinal Ýmge (Cover Image)');
figure(2), imshow(message);title('Saklanan Ýmge (Message Image)');
 

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
