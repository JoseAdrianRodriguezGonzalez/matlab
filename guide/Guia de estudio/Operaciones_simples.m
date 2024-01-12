function varargout = Operaciones_simples(varargin)
% OPERACIONES_SIMPLES MATLAB code for Operaciones_simples.fig
%      OPERACIONES_SIMPLES, by itself, creates a new OPERACIONES_SIMPLES or raises the existing
%      singleton*.
%
%      H = OPERACIONES_SIMPLES returns the handle to a new OPERACIONES_SIMPLES or the handle to
%      the existing singleton*.
%
%      OPERACIONES_SIMPLES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPERACIONES_SIMPLES.M with the given input arguments.
%
%      OPERACIONES_SIMPLES('Property','Value',...) creates a new OPERACIONES_SIMPLES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Operaciones_simples_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Operaciones_simples_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Operaciones_simples

% Last Modified by GUIDE v2.5 27-Apr-2023 10:45:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Operaciones_simples_OpeningFcn, ...
                   'gui_OutputFcn',  @Operaciones_simples_OutputFcn, ...
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


% --- Executes just before Operaciones_simples is made visible.
function Operaciones_simples_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Operaciones_simples (see VARARGIN)

% Choose default command line output for Operaciones_simples
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Operaciones_simples wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Operaciones_simples_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Suma.
function Suma_Callback(hObject, eventdata, handles)
% hObject    handle to Suma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=str2num(get(handles.AS,'string'));
B=str2num(get(handles.BS,'string'));
Resultado=A+B;
set(handles.S,'string',Resultado);
% --- Executes on button press in Resta.
function Resta_Callback(hObject, eventdata, handles)
% hObject    handle to Resta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=str2num(get(handles.AR,'string'));
B=str2num(get(handles.BR,'string'));
Resultado=A-B;
set(handles.R,'string',Resultado);

% --- Executes on button press in Multiplicacion.
function Multiplicacion_Callback(hObject, eventdata, handles)
% hObject    handle to Multiplicacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=str2num(get(handles.AM,'string'));
B=str2num(get(handles.BM,'string'));
Resultado=A*B;
set(handles.M,'string',Resultado);

% --- Executes on button press in Division.
function Division_Callback(hObject, eventdata, handles)
% hObject    handle to Division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=str2num(get(handles.AD,'string'));
B=str2num(get(handles.BD,'string'));
Resultado=A/B;
set(handles.D,'string',Resultado);


function AS_Callback(hObject, eventdata, handles)
% hObject    handle to AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AS as text
%        str2double(get(hObject,'String')) returns contents of AS as a double


% --- Executes during object creation, after setting all properties.
function AS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BS_Callback(hObject, eventdata, handles)
% hObject    handle to BS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BS as text
%        str2double(get(hObject,'String')) returns contents of BS as a double


% --- Executes during object creation, after setting all properties.
function BS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S_Callback(hObject, eventdata, handles)
% hObject    handle to S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S as text
%        str2double(get(hObject,'String')) returns contents of S as a double


% --- Executes during object creation, after setting all properties.
function S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AR_Callback(hObject, eventdata, handles)
% hObject    handle to AR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AR as text
%        str2double(get(hObject,'String')) returns contents of AR as a double


% --- Executes during object creation, after setting all properties.
function AR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR_Callback(hObject, eventdata, handles)
% hObject    handle to BR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR as text
%        str2double(get(hObject,'String')) returns contents of BR as a double


% --- Executes during object creation, after setting all properties.
function BR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function R_Callback(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R as text
%        str2double(get(hObject,'String')) returns contents of R as a double


% --- Executes during object creation, after setting all properties.
function R_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AM_Callback(hObject, eventdata, handles)
% hObject    handle to AM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AM as text
%        str2double(get(hObject,'String')) returns contents of AM as a double


% --- Executes during object creation, after setting all properties.
function AM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BM_Callback(hObject, eventdata, handles)
% hObject    handle to BM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BM as text
%        str2double(get(hObject,'String')) returns contents of BM as a double


% --- Executes during object creation, after setting all properties.
function BM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M_Callback(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M as text
%        str2double(get(hObject,'String')) returns contents of M as a double


% --- Executes during object creation, after setting all properties.
function M_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AD_Callback(hObject, eventdata, handles)
% hObject    handle to AD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AD as text
%        str2double(get(hObject,'String')) returns contents of AD as a double


% --- Executes during object creation, after setting all properties.
function AD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BD_Callback(hObject, eventdata, handles)
% hObject    handle to BD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BD as text
%        str2double(get(hObject,'String')) returns contents of BD as a double


% --- Executes during object creation, after setting all properties.
function BD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double


% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
