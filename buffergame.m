function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalhid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 06-Oct-2019 10:39:01

% Begin initialization code - DO NOT EDIT
%% Create data client object

ipAddress = 'localhost'; % Data server IP address
serverPort = 8712; % Data server port
nChan = 64; % 63 Number of channels, including EEG data channels plus 1 event channel
sampleRate = 1000; % Sampling rate
bufferSize = 60; % Data buffer size, in seconds
dataClient = DataClient(ipAddress,  serverPort, nChan, sampleRate, bufferSize); % Create client object
dataClient.Open;
tic;
%%
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% 标题文本框


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(handles.axes1)
I = imread('timg.jpg')
imread(I)
% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% 步数文本框


% --- Executes during object creation, after setting all properties.
function text4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% text4.create一直到text19.create分别是第一个一直到最后一个2048显示格文本框



function w1_Callback(hObject, eventdata, handles)
% hObject    handle to w1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w1 as text
%        str2double(get(hObject,'String')) returns contents of w1 as a double


% --- Executes during object creation, after setting all properties.
function w1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w2_Callback(hObject, eventdata, handles)
% hObject    handle to w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w2 as text
%        str2double(get(hObject,'String')) returns contents of w2 as a double


% --- Executes during object creation, after setting all properties.
function w2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w3_Callback(hObject, eventdata, handles)
% hObject    handle to w3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w3 as text
%        str2double(get(hObject,'String')) returns contents of w3 as a double


% --- Executes during object creation, after setting all properties.
function w3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w4_Callback(hObject, eventdata, handles)
% hObject    handle to w4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w4 as text
%        str2double(get(hObject,'String')) returns contents of w4 as a double


% --- Executes during object creation, after setting all properties.
function w4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w8_Callback(hObject, eventdata, handles)
% hObject    handle to w8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w8 as text
%        str2double(get(hObject,'String')) returns contents of w8 as a double


% --- Executes during object creation, after setting all properties.
function w8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w7_Callback(hObject, eventdata, handles)
% hObject    handle to w7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w7 as text
%        str2double(get(hObject,'String')) returns contents of w7 as a double


% --- Executes during object creation, after setting all properties.
function w7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w6_Callback(hObject, eventdata, handles)
% hObject    handle to w6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w6 as text
%        str2double(get(hObject,'String')) returns contents of w6 as a double


% --- Executes during object creation, after setting all properties.
function w6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w5_Callback(hObject, eventdata, handles)
% hObject    handle to w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w2 as text
%        str2double(get(hObject,'String')) returns contents of w2 as a double


% --- Executes during object creation, after setting all properties.
function w5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w9_Callback(hObject, eventdata, handles)
% hObject    handle to w3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w3 as text
%        str2double(get(hObject,'String')) returns contents of w3 as a double


% --- Executes during object creation, after setting all properties.
function w9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w10_Callback(hObject, eventdata, handles)
% hObject    handle to w7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w7 as text
%        str2double(get(hObject,'String')) returns contents of w7 as a double


% --- Executes during object creation, after setting all properties.
function w10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w11_Callback(hObject, eventdata, handles)
% hObject    handle to w11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w11 as text
%        str2double(get(hObject,'String')) returns contents of w11 as a double


% --- Executes during object creation, after setting all properties.
function w11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w12_Callback(hObject, eventdata, handles)
% hObject    handle to w12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w12 as text
%        str2double(get(hObject,'String')) returns contents of w12 as a double


% --- Executes during object creation, after setting all properties.
function w12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w13_Callback(hObject, eventdata, handles)
% hObject    handle to w4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w4 as text
%        str2double(get(hObject,'String')) returns contents of w4 as a double


% --- Executes during object creation, after setting all properties.
function w13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w14_Callback(hObject, eventdata, handles)
% hObject    handle to w8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w8 as text
%        str2double(get(hObject,'String')) returns contents of w8 as a double


% --- Executes during object creation, after setting all properties.
function w14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w15_Callback(hObject, eventdata, handles)
% hObject    handle to w12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w12 as text
%        str2double(get(hObject,'String')) returns contents of w12 as a double


% --- Executes during object creation, after setting all properties.
function w15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w16_Callback(hObject, eventdata, handles)
% hObject    handle to w16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w16 as text
%        str2double(get(hObject,'String')) returns contents of w16 as a double


% --- Executes during object creation, after setting all properties.
function w16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 初始化M矩阵  
global M
global step_num
step_num = 0;
M = zeros(4,4);
num = randperm(16,2);
M(num) = 2;

index = find(M~=0);
M1 = cell(1,16);
for i = 1:length(index)
    M1{index(i)} = M(index(i));
end
set(handles.up,'enable','on');
set(handles.down,'enable','on');
set(handles.left,'enable','on');
set(handles.right,'enable','on');

set(handles.w1,'String',num2str(M1{1}));
set(handles.w2,'String',num2str(M1{2}));
set(handles.w3,'String',num2str(M1{3}));
set(handles.w4,'String',num2str(M1{4}));
set(handles.w5,'String',num2str(M1{5}));
set(handles.w6,'String',num2str(M1{6}));
set(handles.w7,'String',num2str(M1{7}));
set(handles.w8,'String',num2str(M1{8}));
set(handles.w9,'String',num2str(M1{9}));
set(handles.w10,'String',num2str(M1{10}));
set(handles.w11,'String',num2str(M1{11}));
set(handles.w12,'String',num2str(M1{12}));
set(handles.w13,'String',num2str(M1{13}));
set(handles.w14,'String',num2str(M1{14}));
set(handles.w15,'String',num2str(M1{15}));
set(handles.w16,'String',num2str(M1{16}));
set(handles.step,'String',num2str(step_num));

% load('/Users/apple/Desktop/深圳脑机/数据/LED_four_red_10Hz2.mat')%载入数组
% %15Hz 右
% %12Hz 左
% %10Hz 下？？？？？？？？？？？
% %6.6Hz 上
% data=data_comp';
% fs=600;%采样率
% %滤波
% data(5,:)=filter1(fs,data(5,:),4,20);
% data(7,:)=filter1(fs,data(7,:),4,20);
% data(11,:)=filter1(fs,data(11,:),4,20);
% %data(15,:)=filter1(fs,data(15,:),4,20);
% %data(20,:)=filter1(fs,data(20,:),4,20);
% N=3000;%信号步长
% for i=1:length(data(17,:))-N%进行处理的信号总长度
%     if (data(17,i)==0||data(17,i)>5)&&(data(17,i+1)>0&&data(17,i+1)<5)%trigger出现
%         for j=i+1:i+N
%             if (data(17,j+1)==0||data(17,j+1)>5)&&(data(17,j)>0&&data(17,j)<5)%trigger消失
%                 break;
%             end
%         end
    
%         if j-i>=N%从第一个if到这里是为了取长度够N的有trigger的脑电数据点
%             %figure;
%             a=[data(5,i+1:i+N);data(7,i+1:i+N);data(11,i+1:i+N);data(17,i+1:i+N)];
%     
k=0;
Y1=0;Y2=0;Y3=0;Y4=0;Y5=0;
while k<10
            for channel=1:8%三个通道做分析
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
            end
    
            if (Y1>Y2)&&(Y1>Y3)&&(Y1>Y4)&&(Y1>Y5)
            	way='w'%fwrite(way,'w','char');%前进
            elseif (Y2>Y1)&&(Y2>Y3)&&(Y2>Y4)&&(Y2>Y5)
                way='s'%fwrite(way,'s','char');%后退
            elseif (Y3>Y1)&&(Y3>Y2)&&(Y3>Y4)&&(Y3>Y5)
                way='a'%fwrite(way,'a','char');%左转
            elseif (Y4>Y1)&&(Y4>Y3)&&(Y4>Y2)&&(Y4>Y5)
                way='d'%fwrite(way,'d','char');%右转
            elseif(Y5>Y1)&&(Y5>Y2)&&(Y5>Y3)&&(Y5>Y4)
                way='q';%fwrite(way,'tingzhi','char');%停止
            end
                   sound(sin(0.1*pi*(1:1000)));    
                   pause(5);
                   data = dataClient.GetBufferData; % Get data from buffer
                   a=data_comp(1:8,:);
             for i=1:8
                 a(i,:)=filter1(fs,a(i,:),4,20);
             end
                 k=k+1;
end
                if nnz(M)~=17 % M中不为0的个数
                    temp = 1;
                    MM1 = move(M,way);
                    if sum(sum(abs(M-MM1))) ~= 0   %如果前后有变化，才添加2
                    MM1 = add_single_2(MM1);
                    step_num = step_num+1;
                    temp = 0;
                    end
                    M = MM1;

                    index = find(M~=0);
                    M1 = cell(1,16);
                    for i = 1:length(index)
                        M1{index(i)} = M(index(i));
                    end
                    set(handles.w1,'String',num2str(M1{1}));
                    set(handles.w2,'String',num2str(M1{2}));
                    set(handles.w3,'String',num2str(M1{3}));
                    set(handles.w4,'String',num2str(M1{4}));
                    set(handles.w5,'String',num2str(M1{5}));
                    set(handles.w6,'String',num2str(M1{6}));
                    set(handles.w7,'String',num2str(M1{7}));
                    set(handles.w8,'String',num2str(M1{8}));
                    set(handles.w9,'String',num2str(M1{9}));
                    set(handles.w10,'String',num2str(M1{10}));
                    set(handles.w11,'String',num2str(M1{11}));
                    set(handles.w12,'String',num2str(M1{12}));
                    set(handles.w13,'String',num2str(M1{13}));
                    set(handles.w14,'String',num2str(M1{14}));
                    set(handles.w15,'String',num2str(M1{15}));
                    set(handles.w16,'String',num2str(M1{16}));
                    set(handles.step,'String',num2str(step_num));
                end
                
                if nnz(M)==16 && temp
                    M1 = cell(1,16);
                        for i = 1:16
                            M1{i} = 'over';
                        end
                    set(handles.w1,'String',(M1{1}));
                    set(handles.w2,'String',(M1{2}));
                    set(handles.w3,'String',(M1{3}));
                    set(handles.w4,'String',(M1{4}));
                    set(handles.w5,'String',(M1{5}));
                    set(handles.w6,'String',(M1{6}));
                    set(handles.w7,'String',(M1{7}));
                    set(handles.w8,'String',(M1{8}));
                    set(handles.w9,'String',(M1{9}));
                    set(handles.w10,'String',(M1{10}));
                    set(handles.w11,'String',(M1{11}));
                    set(handles.w12,'String',(M1{12}));
                    set(handles.w13,'String',(M1{13}));
                    set(handles.w14,'String',(M1{14}));
                    set(handles.w15,'String',(M1{15}));
                    set(handles.w16,'String',(M1{16}));
                    set(handles.up,'enable','off');
                    set(handles.down,'enable','off');
                    set(handles.left,'enable','off');
                    set(handles.right,'enable','off');
                end
                pause(1);
       

        %end
                %i=i+N
    %end
%end



% --- Executes on button press in up.
function up_Callback(hObject, eventdata, handles)
% hObject    handle to up (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M
global step_num
if nnz(M)~=17 % M中不为0的个数
    temp = 1;
    MM1 = move(M,'w');
    if sum(sum(abs(M-MM1))) ~= 0   %如果前后有变化，才添加2
        MM1 = add_single_2(MM1);
        step_num = step_num+1;
        temp = 0;
    end
    M = MM1;

    index = find(M~=0);
    M1 = cell(1,16);
    for i = 1:length(index)
        M1{index(i)} = M(index(i));
    end
    set(handles.w1,'String',num2str(M1{1}));
    set(handles.w2,'String',num2str(M1{2}));
    set(handles.w3,'String',num2str(M1{3}));
    set(handles.w4,'String',num2str(M1{4}));
    set(handles.w5,'String',num2str(M1{5}));
    set(handles.w6,'String',num2str(M1{6}));
    set(handles.w7,'String',num2str(M1{7}));
    set(handles.w8,'String',num2str(M1{8}));
    set(handles.w9,'String',num2str(M1{9}));
    set(handles.w10,'String',num2str(M1{10}));
    set(handles.w11,'String',num2str(M1{11}));
    set(handles.w12,'String',num2str(M1{12}));
    set(handles.w13,'String',num2str(M1{13}));
    set(handles.w14,'String',num2str(M1{14}));
    set(handles.w15,'String',num2str(M1{15}));
    set(handles.w16,'String',num2str(M1{16}));
    set(handles.step,'String',num2str(step_num));
end
if nnz(M)==16 && temp
M1 = cell(1,16);
for i = 1:16
    M1{i} = 'over';
end
set(handles.w1,'String',(M1{1}));
set(handles.w2,'String',(M1{2}));
set(handles.w3,'String',(M1{3}));
set(handles.w4,'String',(M1{4}));
set(handles.w5,'String',(M1{5}));
set(handles.w6,'String',(M1{6}));
set(handles.w7,'String',(M1{7}));
set(handles.w8,'String',(M1{8}));
set(handles.w9,'String',(M1{9}));
set(handles.w10,'String',(M1{10}));
set(handles.w11,'String',(M1{11}));
set(handles.w12,'String',(M1{12}));
set(handles.w13,'String',(M1{13}));
set(handles.w14,'String',(M1{14}));
set(handles.w15,'String',(M1{15}));
set(handles.w16,'String',(M1{16}));
set(handles.up,'enable','off');
set(handles.down,'enable','off');
set(handles.left,'enable','off');
set(handles.right,'enable','off');
end


% --- Executes on button press in left.
function left_Callback(hObject, eventdata, handles)
% hObject    handle to left (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M
global step_num
if nnz(M)~=17 % M中不为0的个数
    temp = 1;
    MM1 = move(M,'a');
    if sum(sum(abs(M-MM1))) ~= 0   %如果前后有变化，才添加2
        MM1 = add_single_2(MM1);
        step_num = step_num+1;
        temp = 0;
    end
    M = MM1;

    index = find(M~=0);
    M1 = cell(1,16);
    for i = 1:length(index)
        M1{index(i)} = M(index(i));
    end
    set(handles.w1,'String',num2str(M1{1}));
    set(handles.w2,'String',num2str(M1{2}));
    set(handles.w3,'String',num2str(M1{3}));
    set(handles.w4,'String',num2str(M1{4}));
    set(handles.w5,'String',num2str(M1{5}));
    set(handles.w6,'String',num2str(M1{6}));
    set(handles.w7,'String',num2str(M1{7}));
    set(handles.w8,'String',num2str(M1{8}));
    set(handles.w9,'String',num2str(M1{9}));
    set(handles.w10,'String',num2str(M1{10}));
    set(handles.w11,'String',num2str(M1{11}));
    set(handles.w12,'String',num2str(M1{12}));
    set(handles.w13,'String',num2str(M1{13}));
    set(handles.w14,'String',num2str(M1{14}));
    set(handles.w15,'String',num2str(M1{15}));
    set(handles.w16,'String',num2str(M1{16}));
    set(handles.step,'String',num2str(step_num));
end
if nnz(M)==16 && temp
M1 = cell(1,16);
for i = 1:16
    M1{i} = 'over';
end
set(handles.w1,'String',(M1{1}));
set(handles.w2,'String',(M1{2}));
set(handles.w3,'String',(M1{3}));
set(handles.w4,'String',(M1{4}));
set(handles.w5,'String',(M1{5}));
set(handles.w6,'String',(M1{6}));
set(handles.w7,'String',(M1{7}));
set(handles.w8,'String',(M1{8}));
set(handles.w9,'String',(M1{9}));
set(handles.w10,'String',(M1{10}));
set(handles.w11,'String',(M1{11}));
set(handles.w12,'String',(M1{12}));
set(handles.w13,'String',(M1{13}));
set(handles.w14,'String',(M1{14}));
set(handles.w15,'String',(M1{15}));
set(handles.w16,'String',(M1{16}));
set(handles.up,'enable','off');
set(handles.down,'enable','off');
set(handles.left,'enable','off');
set(handles.right,'enable','off');
end


% --- Executes on button press in right.
function right_Callback(hObject, eventdata, handles)
% hObject    handle to right (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M
global step_num
if nnz(M)~=17 % M中不为0的个数
    temp = 1;
    MM1 = move(M,'d');
    if sum(sum(abs(M-MM1))) ~= 0   %如果前后有变化，才添加2
        MM1 = add_single_2(MM1);
        step_num = step_num+1;
        temp = 0;
    end
    M = MM1;

    index = find(M~=0);
    M1 = cell(1,16);
    for i = 1:length(index)
        M1{index(i)} = M(index(i));
    end
    set(handles.w1,'String',num2str(M1{1}));
    set(handles.w2,'String',num2str(M1{2}));
    set(handles.w3,'String',num2str(M1{3}));
    set(handles.w4,'String',num2str(M1{4}));
    set(handles.w5,'String',num2str(M1{5}));
    set(handles.w6,'String',num2str(M1{6}));
    set(handles.w7,'String',num2str(M1{7}));
    set(handles.w8,'String',num2str(M1{8}));
    set(handles.w9,'String',num2str(M1{9}));
    set(handles.w10,'String',num2str(M1{10}));
    set(handles.w11,'String',num2str(M1{11}));
    set(handles.w12,'String',num2str(M1{12}));
    set(handles.w13,'String',num2str(M1{13}));
    set(handles.w14,'String',num2str(M1{14}));
    set(handles.w15,'String',num2str(M1{15}));
    set(handles.w16,'String',num2str(M1{16}));
    set(handles.step,'String',num2str(step_num));
end
if nnz(M)==16 && temp
M1 = cell(1,16);
for i = 1:16
    M1{i} = 'over';
end
set(handles.w1,'String',(M1{1}));
set(handles.w2,'String',(M1{2}));
set(handles.w3,'String',(M1{3}));
set(handles.w4,'String',(M1{4}));
set(handles.w5,'String',(M1{5}));
set(handles.w6,'String',(M1{6}));
set(handles.w7,'String',(M1{7}));
set(handles.w8,'String',(M1{8}));
set(handles.w9,'String',(M1{9}));
set(handles.w10,'String',(M1{10}));
set(handles.w11,'String',(M1{11}));
set(handles.w12,'String',(M1{12}));
set(handles.w13,'String',(M1{13}));
set(handles.w14,'String',(M1{14}));
set(handles.w15,'String',(M1{15}));
set(handles.w16,'String',(M1{16}));
set(handles.up,'enable','off');
set(handles.down,'enable','off');
set(handles.left,'enable','off');
set(handles.right,'enable','off');
end


% --- Executes on button press in down.
function down_Callback(hObject, eventdata, handles)
% hObject    handle to down (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M
global step_num
if nnz(M)~=17 % M中不为0的个数
    temp = 1;
    MM1 = move(M,'s');
    if sum(sum(abs(M-MM1))) ~= 0   %如果前后有变化，才添加2
        MM1 = add_single_2(MM1);
        step_num = step_num+1;
        temp = 0;
    end
    M = MM1;

    index = find(M~=0);
    M1 = cell(1,16);
    for i = 1:length(index)
        M1{index(i)} = M(index(i));
    end
    set(handles.w1,'String',num2str(M1{1}));
    set(handles.w2,'String',num2str(M1{2}));
    set(handles.w3,'String',num2str(M1{3}));
    set(handles.w4,'String',num2str(M1{4}));
    set(handles.w5,'String',num2str(M1{5}));
    set(handles.w6,'String',num2str(M1{6}));
    set(handles.w7,'String',num2str(M1{7}));
    set(handles.w8,'String',num2str(M1{8}));
    set(handles.w9,'String',num2str(M1{9}));
    set(handles.w10,'String',num2str(M1{10}));
    set(handles.w11,'String',num2str(M1{11}));
    set(handles.w12,'String',num2str(M1{12}));
    set(handles.w13,'String',num2str(M1{13}));
    set(handles.w14,'String',num2str(M1{14}));
    set(handles.w15,'String',num2str(M1{15}));
    set(handles.w16,'String',num2str(M1{16}));
    set(handles.step,'String',num2str(step_num));
end
if nnz(M)==16 && temp
M1 = cell(1,16);
for i = 1:16
    M1{i} = 'over';
end
set(handles.w1,'String',(M1{1}));
set(handles.w2,'String',(M1{2}));
set(handles.w3,'String',(M1{3}));
set(handles.w4,'String',(M1{4}));
set(handles.w5,'String',(M1{5}));
set(handles.w6,'String',(M1{6}));
set(handles.w7,'String',(M1{7}));
set(handles.w8,'String',(M1{8}));
set(handles.w9,'String',(M1{9}));
set(handles.w10,'String',(M1{10}));
set(handles.w11,'String',(M1{11}));
set(handles.w12,'String',(M1{12}));
set(handles.w13,'String',(M1{13}));
set(handles.w14,'String',(M1{14}));
set(handles.w15,'String',(M1{15}));
set(handles.w16,'String',(M1{16}));
set(handles.up,'enable','off');
set(handles.down,'enable','off');
set(handles.left,'enable','off');
set(handles.right,'enable','off');
end


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


