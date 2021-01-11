%% Clear the workspace and the screen
sca; % �����Ļ��ʾ���� 
close all; % �ر����д���
clearvars; % ������й����е����б���
% trigger(0); % �����ڵĵ�ƽ��Ϊ��

%% Here we call some default settings for setting up Psychtoolbox
PsychDefaultSetup(2); % ���ȶȱȽ�,ѡ��һ������ģʽ,����Ϊ0,1,2������Խ��������Խ��
Screen('Preference', 'SkipSyncTests', 1); % �������������ݵ�ʱ��
% Get the screen numbers. This gives us a number for each of the screens
% attached to our computer.
screens = Screen('Screens'); % ��������Ϊ��ʾ���б�0=ȫ����1=��һ����ʾ����2=�ڶ�����ʾ��

% To draw we select the maximum of these numbers. So in a situation where we
% have two screens attached to our monitor we will draw to the external
% screen.
screenNumber = max(screens); % ������ֱ�ǩ������ʾ��������ʾ

% Define black and white (white will be 1 and black 0). This is because
% in general luminace values are defined between 0 and 1 with 255 steps in
% between. All values in Psychtoolbox are defined between 0 and 1
white = WhiteIndex(screenNumber);
black = BlackIndex(screenNumber); % ������Ļ���ԣ��õ�ԭʼ��ɫ��ԭʼ��ɫ

% Do a simply calculation to calculate the luminance value for grey. This
% will be half the luminace values for white
grey = white / 2; % ���ݰ�ɫȷ����ɫ

% Open an on screen window using PsychImaging and color it grey.
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, grey); % ������Ļ����
% window�Ǵ��ھ����windowRect�Ǵ������꣬color�Ǵ��ڵı�����ɫ

% Measure the vertical refresh rate of the monitor
ifi = Screen('GetFlipInterval', window); % ��ȡ���ڵ�ˢ��ʱ��,ǰ�������ͺ󻺳���֮���ˢ�£��൱����ʾ����Ļˢ��һ֡����Ҫ��ʱ��

% Retreive the maximum priority number
topPriorityLevel = MaxPriority(window);
Priority(topPriorityLevel); % ȷ�����ڵ����ȼ�����

% Get the centre coordinate of the window
[xCenter, yCenter] = RectCenter(windowRect); % ��ȡ���ڵ���������ֵ

% Make a base Rect of 200 by 200 pixels
baseRect = [0 0 150 150]; % �����С��ȷ��

% Define black,white and red
black = [1 1 1];
white = [0 0 0];
red   = [1 0 0]; % ��ɫ��ȷ��

% Numer of frames to wait when specifying good timing. Note: the use of
% wait frames is to show a generalisable coding. For example, by using
% waitframes = 2 one would flip on every other frame. See the PTB
% documentation for details. In what follows we flip every frame.

waitframes = 1;
rectColor1 = white;
rectColor2 = white;
rectColor3 = white;
rectColor4 = white; % ��ֵ��ȷ��
rectColor5 = white;

img  = imread('pause.jpg');
imgu = imread('up.jpg');
imgd = imread('down.jpg');
imgl = imread('left.jpg');
imgr = imread('right.jpg');
% img1 = imread('left_sys.jpg');
% img2 = imread('right_sys.jpg');
% img3 = imread('up_sys.jpg');
% img4 = imread('down_sys.jpg');

% Flip outside of the loop to get a time stamp
vbl = Screen('Flip', window); % ʹ����Ļ�Ľ�����ٳ���
time = 0;
s = 0;
m=0;
% vidobj = videoinput('winvideo',1);  
% triggerconfig(vidobj,'manual');  
% start(vidobj); 
%% Run until a key is pressed
while time < 1200 % �ж��Ƿ񵽴�Ԥ��ʱ��
%     snapshot = getsnapshot(vidobj);
%     Screen('PutImage',window,snapshot);
%     vbl = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);
%     % ����ʵ��������
%     pause(1);
    % ��ͣ5��
     %dx = 4*rand(1,1)+0.5;
     dx = 1;
     switch round(dx)  %��ȡһ�������
         case 1    
           Screen('PutImage',window,imgu);
           vbl = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);
         case 2
           Screen('PutImage',window,imgd);
           vbl = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);
         case 3
           Screen('PutImage',window,imgl);
           vbl = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);
         case 4
           Screen('PutImage',window,imgl);
           vbl = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);
         otherwise
           Screen('PutImage',window,imgr);
           vbl = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);
           
     end
     pause(3);
%      switch round(dx)  %��ȡһ�������
%          case 1    
%            trigger(1); % ���ڵ�ƽ��Ϊ1
%          case 2
%            trigger(2); % ���ڵ�ƽ��Ϊ2
%          case 3
%            trigger(3); % ���ڵ�ƽ��Ϊ3
%          otherwise
%            trigger(4); % ���ڵ�ƽ��Ϊ4
%      end
     % Center the rectangle on the centre of the screen
     centeredRect1 = CenterRectOnPointd(baseRect, xCenter, yCenter*0.05);
     centeredRect2 = CenterRectOnPointd(baseRect, xCenter, yCenter*1.95); 
     centeredRect3 = CenterRectOnPointd(baseRect, xCenter*0.03, yCenter);
     centeredRect4 = CenterRectOnPointd(baseRect, xCenter*1.97, yCenter);% ����Ļ��ʾ��4�������趨��Ļ������λ��
     centeredRect5 = CenterRectOnPointd(baseRect, xCenter, yCenter);
     while time-s*1200 < 1200
         % Draw the rect to the screen
         Screen('FillRect', window, rectColor1, centeredRect1);
         Screen('FillRect', window, rectColor2, centeredRect2);
         Screen('FillRect', window, rectColor3, centeredRect3);
         Screen('FillRect', window, rectColor4, centeredRect4); % ����Ļ���ض��ĵ�λ������Ӧ�ķ���,ȷ����ɫ��ȷ��λ��
         Screen('FillRect', window, rectColor5, centeredRect5);
%          Screen('PutImage', window, img1,[283,354,483,414]);
%          Screen('PutImage', window, img2,[883,354,1083,414]);
%          Screen('PutImage', window, img3,[653,234,713,334]);
%          Screen('PutImage', window, img4,[653,434,713,534]);

         % Flip to the screen
         vbl = Screen('Flip', window, vbl + (waitframes - 0.5) * ifi);% �л�ʱ��ͬ��Ļˢ��ʱ��һ��
         time = time + 1;
         a = rem(time,9);% time/9ȡ����������ƵΪ6.7HZ
        if a == 5
           rectColor1 = [0 0 0];% ����Ϊ5ʱ������ȡɫΪ��ɫ
        elseif a == 0
           rectColor1 = [1 1 1];% ����Ϊ0ʱ������ȡɫΪ��ɫ
        end
        b=rem(time,6);% time/6ȡ��������ƵΪ10HZ
        if b == 3
           rectColor2 = [0 0 0];% ����Ϊ3ʱ������ȡɫΪ��ɫ
        elseif b == 0
           rectColor2 = [1 1 1];% ����Ϊ0ʱ������ȡɫΪ��ɫ
        end
        c=rem(time,5);% time/5ȡ��������ƵΪ12HZ
        if c == 3
           rectColor3 = [0 0 0];% ����Ϊ3ʱ������ȡɫΪ��ɫ
        elseif c == 0
           rectColor3 = [1 1 1];% ����Ϊ0ʱ������ȡɫΪ��ɫ
        end
        d=rem(time,4);% time/4ȡ��������ƵΪ15HZ
        if d == 2
           rectColor4 = [0 0 0];% ����Ϊ2ʱ������ȡɫΪ��ɫ
        elseif d == 0
           rectColor4 = [1 1 1];% ����Ϊ0ʱ������ȡɫΪ��ɫ     
        end
        e=rem(time,3);%time/3ȡ��������ƵΪ20HZ
        if e == 1
           rectColor5 = [0 0 0];% ����Ϊ1ʱ������ȡɫΪ��ɫ
        elseif e == 0
           rectColor5 = [1 1 1];% ����Ϊ0ʱ������ȡɫΪ��ɫ     
        end
     end 
    s = s+1;
%     trigger(0); % ���ڵ�ƽ��Ϊ0
end
% stop(vidobj);  
% delete(vidobj);  
% Clear the screen.
sca;