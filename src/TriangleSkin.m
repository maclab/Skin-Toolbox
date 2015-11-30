% This file is part of Skin Toolbox.
% 
% Skin Toolbox is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% Skin Toolbox is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with Skin Toolbox.  If not, see <http://www.gnu.org/licenses/>.

function varargout = TriangleSkin(varargin)
% TRIANGLESKIN M-file for TriangleSkin.fig
%      TRIANGLESKIN, by itself, creates a new TRIANGLESKIN or raises the existing
%      singleton*.
%
%      H = TRIANGLESKIN returns the handle to a new TRIANGLESKIN or the handle to
%      the existing singleton*.
%
%      TRIANGLESKIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRIANGLESKIN.M with the given input arguments.
%
%      TRIANGLESKIN('Property','Value',...) creates a new TRIANGLESKIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TriangleSkin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TriangleSkin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TriangleSkin

% Last Modified by GUIDE v2.5 22-Aug-2014 17:58:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TriangleSkin_OpeningFcn, ...
                   'gui_OutputFcn',  @TriangleSkin_OutputFcn, ...
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


% --- Executes just before TriangleSkin is made visible.
function TriangleSkin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TriangleSkin (see VARARGIN)
set(handles.uipanel_Optimization,'Visible','off');
% Choose default command line output for TriangleSkin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

imshow('Triangular.jpg', 'Parent', handles.axes_Triangular)
imshow('hexagon.jpg', 'Parent', handles.axes_hexagon)
imshow('TouchArea.jpg', 'Parent', handles.axes_TouchArea)
imshow('TriangularCap.jpg', 'Parent', handles.axes_TriangularCap)
imshow('SkinPatchCap.jpg', 'Parent', handles.axes_SkinPatchCap)

% --- Outputs from this function are returned to the command line.
function varargout = TriangleSkin_OutputFcn(hObject, eventdata, handles) 
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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global model
h= waitbar(0,'Loading the Comsol model...');
model = skin_final;
delete(h);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global model pressure

%pressure aera
s = str2double(get(handles.edit_TypeOfTouch2,'String'));
X = str2double(get(handles.edit_TypeOfTouch3,'String')); %convert to meter unit
Y = str2double(get(handles.edit_TypeOfTouch4,'String'));

model.param.set('stress',pressure*1e3);
%model.param.set('stress','30e3');
model.study('std1').feature('param').set('plist', 'range(0,stress/10,stress)');
model.study('std1').feature('stat').set('physselection', 'solid');

model.sol('sol1').feature('s1').feature('p1').set('plist', 'range(0,stress/10,stress)');

model.param.set('s', s);
model.param.set('stress_x',X/1000);
model.param.set('stress_y',Y/1000);

h= waitbar(0,num2str(pressure));

% geometrical parameters
taxel_radius = str2double(get(handles.edit1,'String'));
pitch = str2double(get(handles.edit2,'String'));
elastomer_thickness = str2double(get(handles.edit3,'String'));
side_length = str2double(get(handles.edit4,'String'));

model.param.set('taxel_radius ', taxel_radius*1e-3 );
model.param.set('elastomer_thickness', elastomer_thickness*1e-3);
model.param.set('pitch', pitch*1e-3);
model.param.set('side_length', side_length/1000);


%meterial parameters
E= str2double(get(handles.edit7,'String'));
poisson = get(handles.edit8,'String');
EpsR = get(handles.edit9,'String');

model.param.set('E', E*1e3 );
model.param.set('poisson', poisson);
model.param.set('EpsR', EpsR);

waitbar(0.5,h,'working...');
model.sol('sol1').runAll;
%model.result('pg1').run;
model.result('pg1').setIndex('looplevel', '11', 0);
model.result('pg1').run;
model.result('pg2').setIndex('looplevel', '11', 0);
model.result('pg2').run;
%model.physics('ale').feature('pres1').selection.all;
model.sol('sol2').runAll;
waitbar(1,h,'Finished');
delete(h);

figure('Name','Result1','NumberTitle','off')
mphplot(model,'pg1','rangenum',1)

figure('Name','Result2','NumberTitle','off')
mphplot(model,'pg2','rangenum',1)

% figure('Name','Deformation','NumberTitle','off')


% --- Executes during object creation, after setting all properties.
function pushbutton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when selected object is changed in uipanel4.
function uipanel4_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel4 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
global pressure;
switch get(eventdata.NewValue,'Tag')   % Get Tag of selected object
    case 'radiobutton_TypeOfTouch1'
      %pressure = 10;
      set(handles.edit_TypeOfTouch1,'String',10);
    case 'radiobutton_TypeOfTouch2'
      %pressure = 40;
      set(handles.edit_TypeOfTouch1,'String',40);
    case 'radiobutton_TypeOfTouch3'
      pressure = str2double(get(handles.edit_TypeOfTouch1,'String'));
    otherwise
      %pressure = 40;
      pressure = str2double(get(handles.edit_TypeOfTouch1,'String'));
       % Code for when there is no match. 
end
pressure = str2double(get(handles.edit_TypeOfTouch1,'String'));
%pressure


function edit_TypeOfTouch1_Callback(hObject, eventdata, handles)
% hObject    handle to edit_TypeOfTouch1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_TypeOfTouch1 as text
%        str2double(get(hObject,'String')) returns contents of edit_TypeOfTouch1 as a double


% --- Executes during object creation, after setting all properties.
function edit_TypeOfTouch1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_TypeOfTouch1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_TypeOfTouch2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_TypeOfTouch2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_TypeOfTouch2 as text
%        str2double(get(hObject,'String')) returns contents of edit_TypeOfTouch2 as a double


% --- Executes during object creation, after setting all properties.
function edit_TypeOfTouch2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_TypeOfTouch2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
global pressure;
%pressure
StressStrain3;
EpsR = [4.27 5.31 5.26 2.31 3.08 3.92 4.80 6 ];
i = (get(handles.listbox1,'Value'));
if (i <4)||(i==8)
    poisson = 0.4;
else
    poisson = 0.2;
end
sigma = pressure/1000; %convert from kPa to MPa 
strain = (p(1,i)*sigma^3 + p(2,i)*sigma^2 + p(3,i)*sigma + p(4,i))/100;
E = pressure/strain;
set(handles.edit7,'String',E);
set(handles.edit8,'String',poisson);
set(handles.edit9,'String',EpsR(i));



% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_TypeOfTouch3_Callback(hObject, eventdata, handles)
% hObject    handle to edit_TypeOfTouch2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_TypeOfTouch2 as text
%        str2double(get(hObject,'String')) returns contents of edit_TypeOfTouch2 as a double


% --- Executes during object creation, after setting all properties.
function edit_TypeOfTouch3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_TypeOfTouch2 (see GCBO)
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


% --- Executes when selected object is changed in uipanel5.
function uipanel5_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel5 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
switch get(eventdata.NewValue,'Tag')   % Get Tag of selected object
    case 'radiobutton4'
      s = 69.91;
    case 'radiobutton5'
      s = 108.80; 
    case 'radiobutton6'
      s = 163.61;
    otherwise
      s = 24;
       % Code for when there is no match. 
end
set(handles.edit_TypeOfTouch2,'String',s);


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global model
h= waitbar(0,'Loading the Comsol model...');
model = skin_patch;
delete(h);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h= waitbar(0,'Updating the model, please wait...');
global model patch module

% geometrical parameters
taxel_radius = str2double(get(handles.edit1,'String'));
pitch = str2double(get(handles.edit2,'String'));
elastomer_thickness = str2double(get(handles.edit3,'String'));
side_length = str2double(get(handles.edit4,'String'));

model.param.set('taxel_radius ', taxel_radius*1e-3 );
model.param.set('elastomer_thickness', elastomer_thickness*1e-3);
model.param.set('pitch', pitch*1e-3);
model.param.set('side_length', side_length/1000);


%meterial parameters
E= str2double(get(handles.edit7,'String'));
poisson = get(handles.edit8,'String');
EpsR = get(handles.edit9,'String');


model.param.set('E', E*1e3 );
model.param.set('poisson', poisson);
model.param.set('EpsR', EpsR);

%pressure
pressure = str2double(get(handles.edit_TypeOfTouch1,'String'));
s = str2double(get(handles.edit_TypeOfTouch2,'String'));
X = str2double(get(handles.edit_TypeOfTouch3,'String')); %convert to meter unit
Y = str2double(get(handles.edit_TypeOfTouch4,'String'));

model.param.set('stress',pressure*1e3);
model.param.set('s', s);
model.param.set('stress_x',X/1000);
model.param.set('stress_y',Y/1000);



%% adding module for skin patch
model.geom('geom1').feature('wp2').geom.feature('b1').active(patch(1));
model.geom('geom1').feature('wp2').geom.feature('b2').active(patch(2));
model.geom('geom1').feature('wp2').geom.feature('b3').active(patch(3));
model.geom('geom1').feature('wp2').geom.feature('b4').active(patch(4));
model.geom('geom1').feature('wp2').geom.feature('b5').active(patch(5));
model.geom('geom1').feature('wp2').geom.feature('b6').active(patch(6));

model.geom('geom1').feature('wp1').geom.feature('mir2').active(false);
model.geom('geom1').feature('wp1').geom.feature('mir3').active(false);
model.geom('geom1').feature('wp1').geom.feature('mir4').active(false);
model.geom('geom1').feature('wp1').geom.feature('mir5').active(false);
model.geom('geom1').feature('wp1').geom.feature('mir6').active(false);

model.geom('geom1').feature('wp3').geom.feature('mir2').active(false);
model.geom('geom1').feature('wp3').geom.feature('mir3').active(false);
model.geom('geom1').feature('wp3').geom.feature('mir4').active(false);
model.geom('geom1').feature('wp3').geom.feature('mir5').active(false);
model.geom('geom1').feature('wp3').geom.feature('mir6').active(false);

if module(2)
model.geom('geom1').feature('wp1').geom.feature('mir2').active(true);
model.geom('geom1').feature('wp1').geom.feature('mir2').selection('input').set({'b1' 'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp3').geom.feature('mir2').active(true);
model.geom('geom1').feature('wp3').geom.feature('mir2').selection('input').set({'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
end

if module(3)
model.geom('geom1').feature('wp1').geom.feature('mir3').active(true);
model.geom('geom1').feature('wp1').geom.feature('mir3').selection('input').set({'b1' 'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp3').geom.feature('mir3').active(true);
model.geom('geom1').feature('wp3').geom.feature('mir3').selection('input').set({'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
end


if module(4)
model.geom('geom1').feature('wp1').geom.feature('mir4').active(true);
model.geom('geom1').feature('wp1').geom.feature('mir4').selection('input').set({'mir2(1)' 'mir2(10)' 'mir2(11)' 'mir2(12)' 'mir2(13)' 'mir2(2)' 'mir2(3)' 'mir2(4)' 'mir2(5)' 'mir2(6)' 'mir2(7)' 'mir2(8)' 'mir2(9)'});
model.geom('geom1').feature('wp3').geom.feature('mir4').active(true);
model.geom('geom1').feature('wp3').geom.feature('mir4').selection('input').set({'mir2(1)' 'mir2(10)' 'mir2(11)' 'mir2(12)' 'mir2(2)' 'mir2(3)' 'mir2(4)' 'mir2(5)' 'mir2(6)' 'mir2(7)' 'mir2(8)' 'mir2(9)'});
end

if module(5)
model.geom('geom1').feature('wp1').geom.feature('mir5').active(true);
model.geom('geom1').feature('wp1').geom.feature('mir5').selection('input').set({'mir3(1)' 'mir3(10)' 'mir3(11)' 'mir3(12)' 'mir3(13)' 'mir3(2)' 'mir3(3)' 'mir3(4)' 'mir3(5)' 'mir3(6)' 'mir3(7)' 'mir3(8)' 'mir3(9)'});
model.geom('geom1').feature('wp3').geom.feature('mir5').active(true);
model.geom('geom1').feature('wp3').geom.feature('mir5').selection('input').set({'mir3(1)' 'mir3(10)' 'mir3(11)' 'mir3(12)' 'mir3(2)' 'mir3(3)' 'mir3(4)' 'mir3(5)' 'mir3(6)' 'mir3(7)' 'mir3(8)' 'mir3(9)'});
end

if module(6)
model.geom('geom1').feature('wp1').geom.feature('mir6').active(true);
model.geom('geom1').feature('wp1').geom.feature('mir6').selection('input').set({'b1' 'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp3').geom.feature('mir6').active(true);
model.geom('geom1').feature('wp3').geom.feature('mir6').selection('input').set({'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
end

model.geom('geom1').runAll;
model.geom('geom1').run;


%%
% for the contact region
a = sqrt(s/(pi*1.5));
b = a*1.5;
delta = 0.1;
m = [X-a-delta X+a+delta; Y-b-delta Y+b+delta; elastomer_thickness-delta elastomer_thickness+delta ]/1000;
n = mphselectbox(model,'geom1',m,'boundary');
model.physics('solid').feature('bndl1').selection.set([n]);
BoundingBox = model.geom('geom1').getBoundingBox();
FixBox = [BoundingBox(1)-delta/1000 BoundingBox(2)+delta/1000; BoundingBox(3)-delta/1000 BoundingBox(4)+delta/1000; 0 elastomer_thickness/1000 - delta/1000];
FixBoundaries = mphselectbox(model,'geom1',FixBox,'boundary');
model.physics('solid').feature('fix1').selection.set(FixBoundaries);

figure;
mphgeom(model,'geom1','facealpha',0.5);

waitbar(0.2,h,'Running the simulation, please wait...');

model.sol('sol1').runAll;
model.result('pg1').run;
waitbar(1,h,'Finished');
delete(h);

figure('Name','Result1','NumberTitle','off')
mphplot(model,'pg1','rangenum',1)

figure('Name','Result2','NumberTitle','off')
mphplot(model,'pg2','rangenum',1)




% --- Executes during object creation, after setting all properties.
function uipanel_SkinPatch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel_SkinPatch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit_TypeOfTouch4_Callback(hObject, eventdata, handles)
% hObject    handle to edit_TypeOfTouch4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_TypeOfTouch4 as text
%        str2double(get(hObject,'String')) returns contents of edit_TypeOfTouch4 as a double


% --- Executes during object creation, after setting all properties.
function edit_TypeOfTouch4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_TypeOfTouch4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in radiobutton12.
function radiobutton12_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton12


% --- Executes on button press in radiobutton11.
function radiobutton11_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton11


% --- Executes when selected object is changed in uipanel_patch.
function uipanel_patch_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel_patch 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
global patch module
patch  = [false false false false false false] ;
module  = [false false false false false false] ;
switch get(eventdata.NewValue,'Tag')   % Get Tag of selected object
    case 'radiobutton7'
      patch(1)=true;
      module(1) = true;
    case 'radiobutton8'
      patch(2)=true;
      module(1:2) = true;
    case 'radiobutton9'
      patch(3)=true;
      module(1:3) = true;
    case 'radiobutton10'
      patch(4)=true;
      module(1:4) = true;
    case 'radiobutton11'
      patch(5)=true; 
      module(1:5) = true;
    case 'radiobutton12'
      patch(6)=true;
      module(1:6) = true;
    otherwise
      patch(1)=true;
      module(1) = true;
       % Code for when there is no match. 
end

% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
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


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global model

index_selected = num2str(get(handles.listbox2,'Value'));
expression = ['es.C' index_selected index_selected];
capacitance = mpheval(model,expression);
C = max(max(capacitance.d1));
set(handles.edit12,'String',C);


% --------------------------------------------------------------------
function Menu_Deformation_Callback(hObject, eventdata, handles)
% hObject    handle to Menu_Deformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel_TriangularModule,'Visible','on');
set(handles.uipanel_Electrostatics,'Visible','off');
set(handles.uipanel_Optimization,'Visible','off');
set(findobj(handles.axes_Triangular,'Type','image'), 'Visible', 'on')


% --------------------------------------------------------------------
function Menu_Electrostatics_Callback(hObject, eventdata, handles)
% hObject    handle to Menu_Electrostatics (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel_TriangularModule,'Visible','off');
set(handles.uipanel_Electrostatics,'Visible','on');
set(handles.uipanel_Optimization,'Visible','off');



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


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% % --- Executes during object creation, after setting all properties.
 function axes_TouchArea_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_TouchArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% imshow('TouchArea.jpg')
% Hint: place code in OpeningFcn to populate axes_TouchArea


% --------------------------------------------------------------------
function Menu_Optimization_Callback(hObject, eventdata, handles)
% hObject    handle to Menu_Optimization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel_TriangularModule,'Visible','on');
set(handles.uipanel_Optimization,'Visible','on');
set(handles.uipanel_Electrostatics,'Visible','off');
%set(findobj(handles.axes_Triangular,'Type','image'), 'Visible', 'off')
%cla(handles.axes_Triangular)

% --- Executes when selected object is changed in uipanel_OptimizationObjective.
function uipanel_OptimizationObjective_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel_OptimizationObjective 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
global objective;
switch get(eventdata.NewValue,'Tag')   % Get Tag of selected object
    case 'radiobutton_Objective1'
      objective = 1;
    case 'radiobutton_Objective2'
      objective = 2;
    case 'radiobutton_Objective3'
      objective = 3;
    otherwise
      objective = 1;
       % Code for when there is no match. 
end

% --- Executes on button press in pushbutton_Optimization.
function pushbutton_Optimization_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Optimization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global objective pressure;
if objective == 1
    [Material,Sensitivity,MinimumThickness, MinimumWeight]=objective1(pressure/1e3);
    set(handles.edit_OptResultMaterial,'String',Material);
    set(handles.edit_OptResultSensitivity,'String',Sensitivity);
    set(handles.edit_OptResultThickness,'String',MinimumThickness);
    set(handles.edit_OptResultWeight,'String',MinimumWeight);

elseif objective == 2
    [Material,Sensitivity,MinimumThickness, MinimumWeight]=objective2(pressure/1e3);
    set(handles.edit_OptResultMaterial,'String',Material);
    set(handles.edit_OptResultSensitivity,'String',Sensitivity);
    set(handles.edit_OptResultThickness,'String',MinimumThickness);
    set(handles.edit_OptResultWeight,'String',MinimumWeight);
    
elseif objective == 3
    [ParetoFront]=objective3(pressure/1e3);    
end


function edit_OptResultMaterial_Callback(hObject, eventdata, handles)
% hObject    handle to edit_OptResultMaterial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function edit_OptResultMaterial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_OptResultMaterial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_OptResultSensitivity_Callback(hObject, eventdata, handles)
% hObject    handle to edit_OptResultSensitivity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_OptResultSensitivity as text
%        str2double(get(hObject,'String')) returns contents of edit_OptResultSensitivity as a double


% --- Executes during object creation, after setting all properties.
function edit_OptResultSensitivity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_OptResultSensitivity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_OptResultThickness_Callback(hObject, eventdata, handles)
% hObject    handle to edit_OptResultThickness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_OptResultThickness as text
%        str2double(get(hObject,'String')) returns contents of edit_OptResultThickness as a double


% --- Executes during object creation, after setting all properties.
function edit_OptResultThickness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_OptResultThickness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit_OptResultWeight_Callback(hObject, eventdata, handles)
% hObject    handle to edit_OptResultWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_OptResultWeight as text
%        str2double(get(hObject,'String')) returns contents of edit_OptResultWeight as a double


% --- Executes during object creation, after setting all properties.
function edit_OptResultWeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_OptResultWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
