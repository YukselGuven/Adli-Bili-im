function varargout = databasees(varargin)

% DATABASEES MATLAB code for databasees.fig
%      DATABASEES, by itself, creates a new DATABASEES or raises the existing
%      singleton*.
%
%      H = DATABASEES returns the handle to a new DATABASEES or the handle to
%      the existing singleton*.
%
%      DATABASEES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATABASEES.M with the given input arguments.
%
%      DATABASEES('Property','Value',...) creates a new DATABASEES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before databasees_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to databasees_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help databasees

% Last Modified by GUIDE v2.5 22-Mar-2019 09:45:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @databasees_OpeningFcn, ...
                   'gui_OutputFcn',  @databasees_OutputFcn, ...
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


% --- Executes just before databasees is made visible.
function databasees_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to databasees (see VARARGIN)

% Choose default command line output for databasees
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes databasees wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = databasees_OutputFcn(hObject, eventdata, handles)
global image1
image1 = imread('C:\Users\YÜKSEL\Desktop\pca\Project\Ali_soydan.png');

axes(handles.axes1)
imshow(image1);
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in esle.
function esle_Callback(hObject, eventdata, handles)
playergame(son)
% hObject    handle to esle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in yeniyuz.
function yeniyuz_Callback(hObject, eventdata, handles)
% hObject    handle to yeniyuz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
playergame(ekle)