clear; close all; clc;

%% Create data client object
    ipAddress = 'localhost'; % Data server IP address
    serverPort = 8712; % Data server port
    nChan = 9; % Number of channels, including EEG data channels plus 1 event channel
    sampleRate = 1000; % Sampling rate
    bufferSize = 1; % Data buffer size, in seconds
    dataClient = DataClient(ipAddress, serverPort, nChan, sampleRate, bufferSize); % Create client object
    dataClient.Open;

    locutoff=4;
    hicutoff=20;


%% Game body
    Matrix_Xsize=4;
    Matrix_Ysize=4;
    Game_matrix=zeros(Matrix_Xsize,Matrix_Ysize);
    Operation='';
    Game_matrix=Implant_num(Game_matrix,2,2); 

    disp(Game_matrix);
    
    while true
        Operation=Input_PSDASSVEP(sampleRate,bufferSize,dataClient,locutoff,hicutoff);
        %{
        Key=input('','s');
        switch Key            
        case 'w'
            Operation = 'up';
        case 's'
            Operation = 'down';
        case 'a'
            Operation = 'left';
        case 'd'
            Operation = 'right';
        end
        %}
        Game_matrix=Move(Game_matrix,Operation);
        Game_matrix=Collision(Game_matrix,Operation);
        Game_matrix=Move(Game_matrix,Operation);
        Game_matrix=Implant_num(Game_matrix,2,1);
        disp(Game_matrix);
        if Game_over(Game_matrix)
            disp('Game Over');
            Key=Input_PSDASSVEP(sampleRate,bufferSize,dataClient,locutoff,hicutoff);
            %Key=input('continue?','s');
            if Key=='continue'
                Game_matrix=zeros(Matrix_Xsize,Matrix_Ysize);
                Operation='';
                Game_matrix=Implant_num(Game_matrix,2,2);               
            else
                break;
            end
        end
    end


    




