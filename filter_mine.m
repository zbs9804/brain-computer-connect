function filter_data=filter1(fs,data,locutoff,hicutoff)
%����FIR�����˲���
%trans=0.15;%���ֿ�ȵĹ�����
nyq=fs*0.5;
min_filtorder=15;%��С�˲�����
if locutoff>0,
    filtorder = 3*fix(fs/locutoff);%fix()��ʾȡ����
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
filter_data = filtfilt(b,1,data);%����λ�����˲���