clear all;
%打开蓝牙串口，建立连接--------------------
instrhwinfo('Bluetooth');
io = Bluetooth('BT04-A',1);
fopen(io);
%向小车发送命令，前面与蓝牙无关------------------------------
fwrite(io,'$3#','char');
pause(2);
fwrite(io,'$4#','char');
pause(2);
fwrite(io,'$1#','char');
pause(2);
fwrite(io,'$2#','char');
pause(2);