
function varargout = test_v3(varargin)
% TEST_V3 MATLAB code for test_v3.fig
%      TEST_V3, by itself, creates a new TEST_V3 or raises the existing
%      singleton*.
%
%      H = TEST_V3 returns the handle to a new TEST_V3 or the handle to
%      the existing singleton*.
%
%      TEST_V3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST_V3.M with the given input arguments.
%
%      TEST_V3('Property','Value',...) creates a new TEST_V3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_v3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_v3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test_v3

% Last Modified by GUIDE v2.5 26-May-2024 18:48:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_v3_OpeningFcn, ...
                   'gui_OutputFcn',  @test_v3_OutputFcn, ...
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


% --- Executes just before test_v3 is made visible.
function test_v3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test_v3 (see VARARGIN)

% Choose default command line output for test_v3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test_v3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_v3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in rb4.
function rb4_Callback(hObject, eventdata, handles)
% hObject    handle to rb4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb4


% --- Executes on button press in rb5.
function rb5_Callback(hObject, eventdata, handles)
% hObject    handle to rb5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb5


% --- Executes on button press in rb6.
function rb6_Callback(hObject, eventdata, handles)
% hObject    handle to rb6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb6


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
global b;

disp(a)
disp(b)




% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
switch (get(eventdata.NewValue,'Tag'))
    case 'rb1'
        a = 1/4; 
    case 'rb2'
        a = 1/3;
    case 'rb3'
        a = 1/2;
    case 'rb4'
        a = 1;
    case 'rb5'
        a = 2; 
    case 'rb6'
        a = 3;
    case 'rb7'
        a = 4;
    otherwise
        a = 0
end


% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global b;
switch (get(eventdata.NewValue,'Tag'))
    case 'rb1'
        b = 1/4; 
    case 'rb2'
        b = 1/3;
    case 'rb3'
        b = 1/2;
    case 'rb4'
        b = 1;
    case 'rb5'
        b = 2; 
    case 'rb6'
        b = 3;
    case 'rb7'
        b = 4;
    otherwise
        b = 0
end
