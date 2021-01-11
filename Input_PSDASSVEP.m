function Input_PSDASSVEP = Input_PSDASSVEP(fs,bufferSize,dataClient,locutoff,hicutoff)
    % Collect and process the signal and identify the command
    % Ruturn the input command
    Command_list=struct(1,'up',2,'down',3,'left',4,'right',5,'continue');
    pause(bufferSize);
    data = dataClient.GetBufferData; % Get data from buffer
    sound(sin(0.1*pi*(1:1000)));
    Data_ssvep=data(1:8,:);
    for i=1:8
        Data_ssvep(i,:)=filter1(fs,Data_ssvep(i,:),locutoff,hicutoff);
    end
    Target_frequency(1:4)=0;
    for channel=1:8
        Sample=length(Data_ssvep(channel));
        Data_ft=fft(Data_ssvep(channel));
        Data_power=(abs(Data_ft));
        Data_power=Data_power/(sample/2);
        Data_power(1,1)=Data_power(1,1)/2;
        Data_power(1,:)=Data_power(1,:).^2/N;

        Target_power(1)=round(6.67*sample/fs+1);
        Target_power(2)=round(10*sample/fs+1);
        Target_power(3)=round(12*sample/fs+1);
        Target_power(4)=round(15*sample/fs+1);
        Target_power(4)=round(20*sample/fs+1);
        
        for i = 1:5
            Target_frequency(i)=Target_frequency(i)+Target_frequency(i);
        end
    end
    [~,Command]=max(Target_frequency);
    Input_PSDASSVEP=Command_list.(Command);
end