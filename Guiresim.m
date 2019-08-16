function varargout = Guiresim(varargin)
% GUIRESIM MATLAB code for Guiresim.fig
%      GUIRESIM, by itself, creates a new GUIRESIM or raises the existing
%      singleton*.
%
%      H = GUIRESIM returns the handle to a new GUIRESIM or the handle to
%      the existing singleton*.
%
%      GUIRESIM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIRESIM.M with the given input arguments.
%
%      GUIRESIM('Property','Value',...) creates a new GUIRESIM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Guiresim_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Guiresim_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Guiresim

% Last Modified by GUIDE v2.5 15-Mar-2019 09:59:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Guiresim_OpeningFcn, ...
                   'gui_OutputFcn',  @Guiresim_OutputFcn, ...
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


% --- Executes just before Guiresim is made visible.
function Guiresim_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Guiresim (see VARARGIN)

% Choose default command line output for Guiresim
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes2)
imshow('C:\Users\YÜKSEL\Desktop\Project\x.JPG');
% UIWAIT makes Guiresim wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Guiresim_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in cikis.
function cikis_Callback(hObject, eventdata, handles)
% hObject    handle to cikis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

delete(handles.figure1);
clear

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


% --- Executes on button press in resimyukle.
function resimyukle_Callback(hObject, eventdata, handles)
% hObject    handle to resimyukle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image 

[filename,pathname]=uigetfile();
if filename==0
   msgbox(sprintf('lütfen bir görüntü seçiniz'),'Hata','Error')
   
end
axes(handles.axes1)
image=imread(filename);
imshow(image);
set(handles.edit1,'String',filename)
set(handles.edit2,'String',pathname)


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image 
axes(handles.axes1)
imshow(image);

% --- Executes on button press in siyahbeyaz.
function siyahbeyaz_Callback(hObject, eventdata, handles)
% hObject    handle to siyahbeyaz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image 
axes(handles.axes1)
x=im2bw(image)

imshow(x);
% --- Executes on button press in griyecevir.
function griyecevir_Callback(hObject, eventdata, handles)
% hObject    handle to griyecevir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image 
axes(handles.axes1)
y=rgb2gray(image);
imshow(y);


% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global image
axes(handles.axes1)
tt=im2double(image);
val=0.9*get(hObject,'Value')-0.5;
imbright=tt+val;

imshow(imbright);
% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in yuztani.
function yuztani_Callback(hObject, eventdata, handles)
% hObject    handle to yuztani (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image 
axes(handles.axes1)
FDetect = vision.CascadeObjectDetector;
BB = step(FDetect,image);
 hold on 
for i=1:size(BB,1)
   rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','g');
end
title('TANINAN YÜZLER');
hold off;


% --- Executes on button press in eslestir.
function eslestir_Callback(hObject, eventdata, handles)
% hObject    handle to eslestir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
playergame(databasees)
