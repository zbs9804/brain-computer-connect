clear all;
%���������ڣ���������--------------------
instrhwinfo('Bluetooth');
io = Bluetooth('BT04-A',1);
fopen(io);
%��С���������ǰ���������޹�------------------------------
fwrite(io,'$3#','char');
pause(2);
fwrite(io,'$4#','char');
pause(2);
fwrite(io,'$1#','char');
pause(2);
fwrite(io,'$2#','char');
pause(2);