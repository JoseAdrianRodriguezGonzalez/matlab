function varargout = slider2(varargin)
% ROJO MATLAB code for Rojo.fig
%      ROJO, by itself, creates a new ROJO or raises the existing
%      singleton*.
%
%      H = ROJO returns the handle to a new ROJO or the handle to
%      the existing singleton*.
%
%      ROJO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROJO.M with the given input arguments.
%
%      ROJO('Property','Value',...) creates a new ROJO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before slider2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to slider2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Rojo

% Last Modified by GUIDE v2.5 20-Apr-2023 08:30:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @slider2_OpeningFcn, ...
                   'gui_OutputFcn',  @slider2_OutputFcn, ...
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


% --- Executes just before Rojo is made visible.
function slider2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Rojo (see VARARGIN)

% Choose default command line output for Rojo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Rojo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = slider2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%valor=get(hObject,'Value');
%set(handles.text2,'String',valor);
%A=get(hObject,'Value');
%x=linspace(0,10,100);
%y=A*sin(A*x);
%plot(x,y,'r');
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Rojo_Callback(hObject, eventdata, handles)
% hObject    handle to Rojo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rojo=get(handles.Rojo,'Value');
azul=get(handles.Azul,'Value');
verde=get(handles.Verde,'Value');
color=[rojo,azul,verde];
set(handles.Cuadro,'Backgroundcolor',color);
set(handles.text5,'String',rojo*100);
set(handles.text6,'String',azul*100);
set(handles.text7,'String',verde*100);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Rojo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rojo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Azul_Callback(hObject, eventdata, handles)
% hObject    handle to Azul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

rojo=get(handles.Rojo,'Value');
azul=get(handles.Azul,'Value');
verde=get(handles.Verde,'Value');
color=[rojo,azul,verde];
set(handles.Cuadro,'Backgroundcolor',color);
set(handles.text5,'String',rojo*100);
set(handles.text6,'String',azul*100);
set(handles.text7,'String',verde*100);
% --- Executes during object creation, after setting all properties.
function Azul_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Azul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Verde_Callback(hObject, eventdata, handles)
% hObject    handle to Verde (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

rojo=get(handles.Rojo,'Value');
azul=get(handles.Azul,'Value');
verde=get(handles.Verde,'Value');
color=[rojo,azul,verde];
set(handles.Cuadro,'Backgroundcolor',color);
set(handles.text5,'String',rojo*100);
set(handles.text6,'String',azul*100);
set(handles.text7,'String',verde*100);
% --- Executes during object creation, after setting all properties.
function Verde_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Verde (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
