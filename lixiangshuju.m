%clear; close all; clc;
% %% Create data client object
% 
% ipAddress = 'localhost'; % Data server IP address
% serverPort = 8712; % Data server port
% nChan = 64; % 63 Number of channels, including EEG data channels plus 1 event channel
% sampleRate = 1000; % Sampling rate
% bufferSize = 60; % Data buffer size, in seconds
% dataClient = DataClient(ipAddress, serverPort, nChan, sampleRate, bufferSize); % Create client object
% dataClient.Open;
% tic;
% %% PSDA构造
% fs=1000;
% pause(5);
% toc
% data = dataClient.GetBufferData; % Get data from buffer缓存区获取数据
% sound(sin(0.1*pi*(1:1000)));
% save('data1.mat','data');
% for i=1:8
%     a(i,:)=filter1(fs,a(i,:),4,20);
% end
%%
clc;close all;clear all;
%%
    Matrix_Xsize=4;
    Matrix_Ysize=4;
    Game_matrix=zeros(Matrix_Xsize,Matrix_Ysize);
    Operation='';
    Game_matrix=Implant_num(Game_matrix,2,2); 

    disp(Game_matrix);
    
load('D:\WeChat Files\WeChat Files\zzz15911721117\FileStorage\File\2019-10\拼接后数据\led6.6hz.mat')%载入数组
data=data_comp';
fs=600;%采样率
%滤波
data(5,:)=filter1(fs,data(5,:),4,20);
data(7,:)=filter1(fs,data(7,:),4,20);
data(11,:)=filter1(fs,data(11,:),4,20);
%data(15,:)=filter1(fs,data(15,:),4,20);
%data(20,:)=filter1(fs,data(20,:),4,20);
N=3000;%信号步长
for i=1:length(data(17,:))-N%进行处理的信号总长度
    if (data(17,i)==0||data(17,i)>5)&&(data(17,i+1)>0&&data(17,i+1)<5)%trigger出现
        for j=i+1:i+N
            if (data(17,j+1)==0||data(17,j+1)>5)&&(data(17,j)>0&&data(17,j)<5)%trigger消失
                break;
            end
        end
        if j-i>=N%从第一个if到这里是为了取长度够N的有trigger的脑电数据点
    %        figure;
        a=[data(5,i+1:i+N);data(7,i+1:i+N);data(11,i+1:i+N);data(17,i+1:i+N)];

        for channel=1:3%三个通道做分析
            Temdata=a(channel,:);
            ff=fft(Temdata);
            %将幅值变为实际幅值
            p= (abs(ff));
            p=p/(N/2);
            p(1,1)=p(1,1)/2;
            p(1,:)=p(1,:).^2/N;
            X1=round(6.67*N/fs+1);
            X2=round(10*N/fs+1);
            X3=round(12*N/fs+1);
            X4=round(15*N/fs+1);
            X5=round(20*N/fs+1);%20hz为停止游戏的频率
            
            Y1=p(1,X1);
            Y2=p(1,X2);
            Y3=p(1,X3);
            Y4=p(1,X4);
            Y5=p(1,X5);
    %end
    if (Y1>Y2)&&(Y1>Y3)&&(Y1>Y4)&&(Y1>Y5)
        io='w';%fwrite(io,'w','char');%前进
    elseif (Y2>Y1)&&(Y2>Y3)&&(Y2>Y4)&&(Y2>Y5)
        io='s';%fwrite(io,'s','char');%后退
    elseif (Y3>Y1)&&(Y3>Y2)&&(Y3>Y4)&&(Y3>Y5)
        io='a';%fwrite(io,'a','char');%左转
    elseif (Y4>Y1)&&(Y4>Y3)&&(Y4>Y2)&&(Y4>Y5)
        io='d';%fwrite(io,'d','char');%右转
    elseif(Y5>Y1)&&(Y5>Y2)&&(Y5>Y3)&&(Y5>Y4)
        io='tingzhi';%fwrite(io,'tingzhi','char');%停止
    end
    %% Game body
%     Matrix_Xsize=4;
%     Matrix_Ysize=4;
%     Game_matrix=zeros(Matrix_Xsize,Matrix_Ysize);
%     Operation='';
%     Game_matrix=Implant_num(Game_matrix,2,2); 
% 
%     disp(Game_matrix);
%     
    while true
  %      Key=input('','s');
        switch io            
        case 'w'
            Operation = 'up';
        case 's'
            Operation = 'down';
        case 'a'
            Operation = 'left';
        case 'd'
            Operation = 'right';
        case 'tingzhi'
             return;   
            otherwise
                return;
        end
        Game_matrix=Move(Game_matrix,Operation);
        Game_matrix=Collision(Game_matrix,Operation);
        Game_matrix=Move(Game_matrix,Operation);
        Game_matrix=Implant_num(Game_matrix,2,1);
        disp(Game_matrix);
        if Game_over(Game_matrix)
            disp('Game Over');
            break;
        end
    end
%             %频率变为实际频率
%             F=([1:N]-1)*fs/N;
%             
%             YY=max(p);
%             for t=1:length(p)
%                 if p(t)==YY
%                     XX=(t-1)*(fs/N);
%                     break;
%                 end
%             end
%             subplot(3,1,channel);
%             plot(F(1:N/2),p(1:N/2));
%             xlabel('频率/Hz');
%              ylabel('功率谱密度/v^2*s/Hz');
% 
%             axis([0 40 0 YY*1.5]);
%             text(XX,YY,num2str(XX));
        end
             i=i+N;
        end
    end
end
%%
% k=0;
% while k<10
%     for channel=1:3%3个通道做分析
%             Temdata=a(channel,:);
%             N=length(Temdata)
%             ff=fft(Temdata);
%             %将幅值变为实际幅值
%             p= (abs(ff));
%             p=p/(N/2);
%             p(1,1)=p(1,1)/2;
%             p(1,:)=p(1,:).^2/N;

%             X1=round(6.67*N/fs+1);
%             X2=round(10*N/fs+1);
%             X3=round(12*N/fs+1);
%             X4=round(15*N/fs+1);
%             X5=round(20*N/fs+1);%20hz为停止游戏的频率
%             
%             Y1=p(1,X1);
%             Y2=p(1,X2);
%             Y3=p(1,X3);
%             Y4=p(1,X4);
%             Y5=p(1,X5);
    %end
%     if (Y1>Y2)&&(Y1>Y3)&&(Y1>Y4)&&(Y1>Y5)
%         fwrite(io,'w','char');%前进
%     elseif (Y2>Y1)&&(Y2>Y3)&&(Y2>Y4)&&(Y2>Y5)
%         fwrite(io,'s','char');%后退
%     elseif (Y3>Y1)&&(Y3>Y2)&&(Y3>Y4)&&(Y3>Y5)
%         fwrite(io,'a','char');%左转
%     elseif (Y4>Y1)&&(Y4>Y3)&&(Y4>Y2)&&(Y4>Y5)
%         fwrite(io,'d','char');%右转
%     elseif(Y5>Y1)&&(Y5>Y2)&&(Y5>Y3)&&(Y5>Y4)
%         fwrite(io,'tingzhi','char');%停止
%     end
%     sound(sin(0.1*pi*(1:1000)));    
%     pause(5);
%     data = dataClient.GetBufferData; % Get data from buffer
%     a=data_comp(1:8,:);
%     for i=1:8
%         a(i,:)=filter1(fs,a(i,:),4,20);
%     end
%     k=k+1
% end

