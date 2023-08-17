%x = 0:1:29;
%y = [0 51 255 17 2 255 255 255 255 68 51 34 17 2 255 255 255 255 68 51 34 17 2 255 255 255 255 68 51 34 ];
%plot(x,y)
fileID0 = fopen('FRAM0_0.BIN','r');
FRAM0 = fread(fileID0, Inf, 'int16');
figure;
plot(FRAM0);
title('FRAM0');

fileID1 = fopen('FRAM1_0.BIN','r');
FRAM1 = fread(fileID1, Inf, 'int16');
figure;
plot(FRAM1);
title('FRAM1');

fileID2 = fopen('FRAM2_0.BIN','r');
FRAM2 = fread(fileID2, Inf, 'int16');
figure;
plot(FRAM2);
title('FRAM2');

fileID3 = fopen('FRAM3_0.BIN','r');
FRAM3 = fread(fileID3, Inf, 'int16');
figure;
plot(FRAM3);
title('FRAM3');

