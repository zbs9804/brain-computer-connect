function filter_data=filter1(fs,data,locutoff,hicutoff)
%线性FIR数字滤波器
%trans=0.15;%部分宽度的过渡区
nyq=fs*0.5;
min_filtorder=15;%最小滤波长度
if locutoff>0,
    filtorder = 3*fix(fs/locutoff);%fix()表示取整数
elseif hicutoff>0,
    filtorder = 3*fix(fs/hicutoff);
end 

if filtorder < min_filtorder
    filtorder = min_filtorder;
end

N=filtorder;
flag = 'noscale'; 
win = hann(N+1);

b  = fir1(N, [locutoff hicutoff]/(nyq), 'bandpass', win, flag);
filter_data = filtfilt(b,1,data);%零相位数字滤波器