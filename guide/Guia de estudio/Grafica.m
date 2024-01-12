function varargout = Grafica(varargin)
% GRAFICA MATLAB code for Grafica.fig
%      GRAFICA, by itself, creates a new GRAFICA or raises the existing
%      singleton*.
%
%      H = GRAFICA returns the handle to a new GRAFICA or the handle to
%      the existing singleton*.
%
%      GRAFICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICA.M with the given input arguments.
%
%      GRAFICA('Property','Value',...) creates a new GRAFICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Grafica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Grafica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Grafica

% Last Modified by GUIDE v2.5 27-Apr-2023 11:21:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Grafica_OpeningFcn, ...
                   'gui_OutputFcn',  @Grafica_OutputFcn, ...
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


% --- Executes just before Grafica is made visible.
function Grafica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Grafica (see VARARGIN)

% Choose default command line output for Grafica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Grafica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Grafica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Grafica.
function Grafica_Callback(hObject, eventdata, handles)
% hObject    handle to Grafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.Grafica,'value');
x=linspace(0,100,5);

y=A.*sin(x);
plot(handles.axes1,x,y);


% --- Executes during object creation, after setting all properties.
function Grafica_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Grafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
