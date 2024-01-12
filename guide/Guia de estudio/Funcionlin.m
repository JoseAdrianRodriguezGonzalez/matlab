function varargout = Funcionlin(varargin)
% FUNCIONLIN MATLAB code for Funcionlin.fig
%      FUNCIONLIN, by itself, creates a new FUNCIONLIN or raises the existing
%      singleton*.
%
%      H = FUNCIONLIN returns the handle to a new FUNCIONLIN or the handle to
%      the existing singleton*.
%
%      FUNCIONLIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUNCIONLIN.M with the given input arguments.
%
%      FUNCIONLIN('Property','Value',...) creates a new FUNCIONLIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Funcionlin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Funcionlin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Funcionlin

% Last Modified by GUIDE v2.5 27-Apr-2023 12:07:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Funcionlin_OpeningFcn, ...
                   'gui_OutputFcn',  @Funcionlin_OutputFcn, ...
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


% --- Executes just before Funcionlin is made visible.
function Funcionlin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Funcionlin (see VARARGIN)

% Choose default command line output for Funcionlin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Funcionlin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Funcionlin_OutputFcn(hObject, eventdata, handles) 
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
A=linspace(-5,5,7);
plot(handles.axes1,A,'ro-');
