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

function out = model
%
% skin_final_b.m
%
% Model exported on Jul 2 2011, 01:43 by COMSOL 4.1.0.88.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('E:\2010\LV\Comsol\New Folder');

model.modelNode.create('mod1');

model.geom.create('geom1', 3);

model.mesh.create('mesh1', 'geom1');

model.geom('geom1').run;
model.geom('geom1').run('');
model.geom('geom1').feature.create('wp1', 'WorkPlane');

model.param.set('side_length', '3[cm]');

model.geom('geom1').feature('wp1').geom.feature.create('b1', 'BezierPolygon');
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', 1);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' '0'; '0' '0'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1'});
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length', 1, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', [1 1]);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' '0' '0'; '0' 'side_length' 'side_length'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1' '1' '1'});
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length', 0, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '0', 1, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length/2', 0, 2);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))', 1, 2);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length/2', 0, 2);
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', [1 1 1]);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' 'side_length' 'side_length/2' 'side_length/2'; '0' '0' 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))' 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1' '1' '1' '1' '1'});

model.param.set('taxel_radius', '2[mm]');
model.param.set('x1', '0.5[cm]');
model.param.set('y1', '0.3[cm]');
model.param.set('pitch', '5[mm]');
model.param.set('y2', 'y1');
model.param.set('x2', 'x1+pitch');
model.param.set('x3', 'x1+pitch/2');
model.param.set('y3', 'y1 + pitch*sqrt(3)/2');

model.geom('geom1').feature('wp1').geom.feature.create('c1', 'Circle');
model.geom('geom1').feature('wp1').geom.feature('c1').set('r', 'taxel_radius');
model.geom('geom1').feature('wp1').geom.feature('c1').setIndex('pos', 'x1', 0);
model.geom('geom1').feature('wp1').geom.feature('c1').setIndex('pos', 'y1', 1);
model.geom('geom1').feature('wp1').geom.run('c1');
model.geom('geom1').feature('wp1').geom.run('c1');
model.geom('geom1').feature('wp1').geom.feature.create('c2', 'Circle');
model.geom('geom1').feature('wp1').geom.feature('c2').set('r', 'taxel_radius');
model.geom('geom1').feature('wp1').geom.feature('c2').setIndex('pos', 'x2', 0);
model.geom('geom1').feature('wp1').geom.feature('c2').setIndex('pos', 'y2', 1);
model.geom('geom1').feature('wp1').geom.run('c2');
model.geom('geom1').feature('wp1').geom.run('c2');
model.geom('geom1').feature('wp1').geom.feature.create('c3', 'Circle');
model.geom('geom1').feature('wp1').geom.feature('c3').set('r', 'taxel_radius');
model.geom('geom1').feature('wp1').geom.feature('c3').setIndex('pos', 'x3', 0);
model.geom('geom1').feature('wp1').geom.feature('c3').setIndex('pos', 'y3', 1);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.run('c3');
model.geom('geom1').feature('wp1').geom.feature.create('copy1', 'Copy');
model.geom('geom1').feature('wp1').geom.feature('copy1').selection('input').set({'c1' 'c2' 'c3'});

model.param.set('T_height', 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))');

model.geom('geom1').feature('wp1').geom.feature('copy1').setIndex('displ', 'side_length/4', 0);
model.geom('geom1').feature('wp1').geom.feature('copy1').setIndex('displ', 'T_height/2', 1);
model.geom('geom1').feature('wp1').geom.run('copy1');
model.geom('geom1').feature('wp1').geom.feature.create('mir1', 'Mirror');
model.geom('geom1').feature('wp1').geom.feature('mir1').selection('input').set({'copy1(1)' 'copy1(2)' 'copy1(3)'});
model.geom('geom1').feature('wp1').geom.feature('mir1').set('keep', 'on');
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('pos', '0', 0);
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('pos', 'T_height/2', 1);
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.run('mir1');
model.geom('geom1').feature('wp1').geom.feature.create('copy2', 'Copy');
model.geom('geom1').feature('wp1').geom.feature('copy2').selection('input').set({'c1' 'c2' 'c3'});
model.geom('geom1').feature('wp1').geom.feature('copy2').setIndex('displ', 'side_length/2', 0);
model.geom('geom1').feature('wp1').geom.run('copy2');
model.geom('geom1').run('');
model.geom('geom1').feature.create('wp2', 'WorkPlane');
model.geom('geom1').feature('wp2').geom.feature.create('b1', 'BezierPolygon');
model.geom('geom1').feature('wp2').geom.feature('b1').set('degree', 1);
model.geom('geom1').feature('wp2').geom.feature('b1').set('p', {'0' '0'; '0' '0'});
model.geom('geom1').feature('wp2').geom.feature('b1').set('w', {'1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'side_length', 1, 1);
model.geom('geom1').feature('wp2').geom.feature('b1').set('degree', [1 1]);
model.geom('geom1').feature('wp2').geom.feature('b1').set('p', {'0' '0' '0'; '0' 'side_length' 'side_length'});
model.geom('geom1').feature('wp2').geom.feature('b1').set('w', {'1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'side_length', 0, 1);
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', '0', 1, 1);
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'side_length/2', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))', 1, 2);
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'side_length/2', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b1').set('degree', [1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b1').set('p', {'0' 'side_length' 'side_length/2' 'side_length/2'; '0' '0' 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))' 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))'});
model.geom('geom1').feature('wp2').geom.feature('b1').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.runAll;
model.geom('geom1').run('wp2');
model.geom('geom1').run('wp2');
model.geom('geom1').feature.create('ext1', 'Extrude');

model.param.set('elastomer_thickness', '2[mm]');

model.geom('geom1').feature('ext1').setIndex('distance', 'elastomer_thickness', 0);
model.geom('geom1').runAll;
model.geom('geom1').run;

model.mesh('mesh1').feature.create('ftet1', 'FreeTet');
model.mesh('mesh1').run('ftet1');
model.mesh('mesh1').feature('ftet1').selection.geom('geom1');
model.mesh('mesh1').run('ftet1');

model.geom('geom1').feature('fin').set('action', 'union');
model.geom('geom1').run('fin');
model.geom('geom1').feature('fin').set('action', 'assembly');
model.geom('geom1').runAll;
model.geom('geom1').feature('fin').set('action', 'union');
model.geom('geom1').runAll;
model.geom('geom1').feature('fin').set('action', 'assembly');
model.geom('geom1').run;
model.geom('geom1').feature('fin').set('action', 'union');
model.geom('geom1').runAll;
model.geom('geom1').run;

model.material.create('mat1');
model.material('mat1').name('dielectric');
model.material('mat1').materialModel('def').set('relpermittivity', '6');

model.geom('geom1').feature.create('wp3', 'WorkPlane');

model.param.set('shield_radius', '2.2[mm]');

model.geom('geom1').feature('wp3').geom.feature.create('c1', 'Circle');
model.geom('geom1').feature('wp3').geom.feature('c1').set('r', 'shield_radius');
model.geom('geom1').feature('wp3').geom.feature('c1').setIndex('pos', 'x1', 0);
model.geom('geom1').feature('wp3').geom.feature('c1').setIndex('pos', 'y1', 1);
model.geom('geom1').feature('wp3').geom.run('c1');
model.geom('geom1').feature('wp3').geom.feature.create('c2', 'Circle');
model.geom('geom1').feature('wp3').geom.feature('c2').set('r', 'shield_radius');
model.geom('geom1').feature('wp3').geom.feature('c2').setIndex('pos', 'x2', 0);
model.geom('geom1').feature('wp3').geom.feature('c2').setIndex('pos', 'y2', 1);
model.geom('geom1').feature('wp3').geom.run('c2');
model.geom('geom1').feature('wp3').geom.feature.create('c3', 'Circle');
model.geom('geom1').feature('wp3').geom.feature('c3').set('r', 'shield_radius');
model.geom('geom1').feature('wp3').geom.feature('c3').setIndex('pos', 'x3', 0);
model.geom('geom1').feature('wp3').geom.feature('c3').setIndex('pos', 'y3', 1);
model.geom('geom1').feature('wp3').geom.run('c3');
model.geom('geom1').feature('wp3').geom.feature.create('copy1', 'Copy');
model.geom('geom1').feature('wp3').geom.feature('copy1').selection('input').set({'c1' 'c2' 'c3'});
model.geom('geom1').feature('wp3').geom.feature('copy1').setIndex('displ', 'side_length/4', 0);
model.geom('geom1').feature('wp3').geom.feature('copy1').setIndex('displ', 'T_height/2', 1);
model.geom('geom1').feature('wp3').geom.run('copy1');
model.geom('geom1').feature('wp3').geom.feature.create('mir1', 'Mirror');
model.geom('geom1').feature('wp3').geom.feature('mir1').setIndex('pos', 'T_height/2', 1);
model.geom('geom1').feature('wp3').geom.feature('mir1').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp3').geom.feature('mir1').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp3').geom.feature('mir1').selection('input').set({'copy1(1)' 'copy1(2)' 'copy1(3)'});
model.geom('geom1').feature('wp3').geom.feature('mir1').set('keep', 'on');
model.geom('geom1').feature('wp3').geom.run('mir1');
model.geom('geom1').feature('wp3').geom.feature.create('copy2', 'Copy');
model.geom('geom1').feature('wp3').geom.feature('copy2').selection('input').set({'c1' 'c2' 'c3'});
model.geom('geom1').feature('wp3').geom.feature('copy2').setIndex('displ', 'side_length/2', 0);
model.geom('geom1').feature('wp3').geom.run('copy2');
model.geom('geom1').run;
model.geom('geom1').run('wp3');

model.param.set('rP', '5[mm]');
model.param.descr('rP', 'radius of the applied pressure area');

model.geom('geom1').feature.create('wp4', 'WorkPlane');
model.geom('geom1').feature('wp4').set('quickz', 'elastomer_thickness');
model.geom('geom1').run('wp4');
model.geom('geom1').run('wp4');
model.geom('geom1').feature('wp4').geom.feature.create('c1', 'Circle');
model.geom('geom1').feature('wp4').geom.feature('c1').set('r', '1[mm]');
model.geom('geom1').feature('wp4').geom.feature('c1').setIndex('pos', 'side_length/2', 0);
model.geom('geom1').feature('wp4').geom.feature('c1').setIndex('pos', '1[cm]', 1);
model.geom('geom1').feature('wp4').geom.run('c1');
model.geom('geom1').feature('wp4').geom.feature('c1').set('r', 'rP');
model.geom('geom1').feature('wp4').geom.run('c1');
model.geom('geom1').run;

model.param.set('para', '0[mm]');
model.param.descr('para', 'force_displacement');

model.mesh('mesh1').feature('size').set('custom', 'on');
model.mesh('mesh1').feature('size').set('hmin', '2.4E-4');
model.mesh('mesh1').feature('size').set('hmax', '0.001');
model.mesh('mesh1').run('size');
model.mesh('mesh1').run('size');
model.mesh('mesh1').run;


model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.set({'ext1'});
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.set({'ext1'});
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.set({'ext1'});
model.geom('geom1').measureFinal.selection.geom('geom1', 2);
model.geom('geom1').measureFinal.selection.set([11]);

model.name('param perla shield copy.mph');
model.name('param perla shield copy.mph');

model.param.remove('load_param');
model.param.set('load_param', '0');
model.param.descr('load_param', 'displacement');

model.name('Skin.mph');
model.name('model.mph');

model.physics.create('solid', 'SolidMechanics', 'geom1');

model.study.create('std1');
model.study('std1').feature.create('stat', 'Stationary');

model.physics('solid').feature('lemm1').set('E_mat', 1, 'userdef');
model.physics('solid').feature('lemm1').set('E', 1, '150e3');
model.physics('solid').feature('lemm1').set('nu_mat', 1, 'userdef');
model.physics('solid').feature('lemm1').set('nu', 1, '0.4');
model.physics('solid').feature('lemm1').set('rho_mat', 1, 'userdef');
model.physics('solid').feature('lemm1').set('rho', 1, '240');
model.physics('solid').feature.create('bndl1', 'BoundaryLoad', 2);
model.physics('solid').feature('bndl1').set('FperArea', {'0' '0' '-para'});
model.physics('solid').feature.create('fix1', 'Fixed', 2);
model.physics('solid').feature('fix1').selection.set([3 5 6 7 8 9 10 12 13 14 15 16 17 18 19 21 22 23 24 25 26 27 28 29 30]);
model.physics('solid').feature('bndl1').selection.set([11]);

model.param.set('para', '0');

model.physics.create('ale', 'MovingMesh', 'geom1');
model.physics('ale').feature.create('free1', 'FreeDeformation', 3);
model.physics('ale').feature.remove('free1');
model.physics('ale').feature.create('pres1', 'PrescribedDeformation', 3);
model.physics('ale').feature('pres1').set('dx', 1, 'u');
model.physics('ale').feature('pres1').set('dx', 2, 'v');
model.physics('ale').feature('pres1').set('dx', 3, 'w');

model.study('std1').feature.create('param', 'Parametric');
model.study('std1').feature('param').set('pname', 'para');
model.study('std1').feature('param').set('plist', 'range(0,10e3,100e3)');
model.study('std1').feature('stat').set('physselection', 'ale');

model.sol.create('sol1');
model.sol('sol1').feature.create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').feature.create('v1', 'Variables');
model.sol('sol1').feature.create('s1', 'Stationary');
model.sol('sol1').feature('s1').feature.create('p1', 'Parametric');
model.sol('sol1').feature('s1').feature('p1').set('pname', 'para');
model.sol('sol1').feature('s1').feature('p1').set('plist', 'range(0,10e3,100e3)');
model.sol('sol1').feature('s1').feature('p1').set('plot', 'off');
model.sol('sol1').feature('s1').feature('p1').set('probesel', 'all');
%model.sol('sol1').feature('s1').feature('p1').set('probes', []);
model.sol('sol1').feature('s1').feature.create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature.create('i1', 'Iterative');
model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'i1');
model.sol('sol1').feature('s1').feature('i1').feature.create('mg1', 'Multigrid');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');
model.sol('sol1').feature.remove('s1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').feature.create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'stat');
model.sol('sol1').feature.create('v1', 'Variables');
model.sol('sol1').feature.create('s1', 'Stationary');
model.sol('sol1').feature('s1').feature.create('p1', 'Parametric');
model.sol('sol1').feature('s1').feature('p1').set('pname', 'para');
model.sol('sol1').feature('s1').feature('p1').set('plist', 'range(0,10e3,100e3)');
model.sol('sol1').feature('s1').feature('p1').set('plot', 'off');
model.sol('sol1').feature('s1').feature('p1').set('probesel', 'all');
%model.sol('sol1').feature('s1').feature('p1').set('probes', []);
model.sol('sol1').feature('s1').feature.create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature.create('i1', 'Iterative');
model.sol('sol1').feature('s1').feature('i1').set('linsolver', 'gmres');
model.sol('sol1').feature('s1').feature('fc1').set('linsolver', 'i1');
model.sol('sol1').feature('s1').feature('i1').feature.create('mg1', 'Multigrid');
model.sol('sol1').feature('s1').feature('i1').feature('mg1').set('prefun', 'gmg');
model.sol('sol1').feature('s1').feature.remove('fcDef');
model.sol('sol1').attach('std1');

model.param.set('V0', '2.6');
model.param.descr('V0', 'voltage');

model.physics.create('es', 'Electrostatics', 'geom1');
model.physics('es').feature.create('gnd1', 'Ground', 2);
model.physics('es').feature('gnd1').selection.set([4 5 7 9 11 12 13 16 17 21 22 25 27 29]);
model.physics('es').feature.create('term1', 'Terminal', 2);
model.physics('es').feature('term1').selection.set([3]);
model.physics('es').feature('term1').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term1').set('V0', 1, 'V0');
model.physics('es').feature.create('term2', 'Terminal', 2);
model.physics('es').feature('term2').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term2').selection.set([19]);
model.physics('es').feature('term2').set('V0', 1, 'V0');
model.physics('es').feature.create('term3', 'Terminal', 2);
model.physics('es').feature('term3').selection.set([15]);
model.physics('es').feature('term3').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term3').set('V0', 1, 'V0');
model.physics('es').feature.create('term4', 'Terminal', 2);
model.physics('es').feature('term4').selection.set([23]);
model.physics('es').feature('term4').set('Q0', 1, 'V0');
model.physics('es').feature('term4').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term4').set('V0', 1, 'V0');
model.physics('es').feature.create('term5', 'Terminal', 2);
model.physics('es').feature('term5').selection.set([14]);
model.physics('es').feature('term5').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term5').set('V0', 1, 'V0');
model.physics('es').feature.create('term6', 'Terminal', 2);
model.physics('es').feature('term6').selection.set([28]);
model.physics('es').feature('term6').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term6').set('V0', 1, 'V0');
model.physics('es').feature.create('term7', 'Terminal', 2);
model.physics('es').feature('term7').selection.set([18]);
model.physics('es').feature('term7').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term7').set('V0', 1, 'V0');
model.physics('es').feature.create('term8', 'Terminal', 2);
model.physics('es').feature('term8').selection.set([8]);
model.physics('es').feature('term8').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term8').set('V0', 1, 'V0');
model.physics('es').feature.create('term9', 'Terminal', 2);
model.physics('es').feature('term9').selection.set([30]);
model.physics('es').feature('term9').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term9').set('V0', 1, 'V0');
model.physics('es').feature.create('term10', 'Terminal', 2);
model.physics('es').feature('term10').selection.set([26]);
model.physics('es').feature('term10').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term10').set('V0', 1, 'V0');
model.physics('es').feature.create('term11', 'Terminal', 2);
model.physics('es').feature('term11').selection.set([10]);
model.physics('es').feature('term11').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term11').set('V0', 1, 'V0');
model.physics('es').feature.create('term12', 'Terminal', 2);
model.physics('es').feature('term12').selection.set([6]);
model.physics('es').feature('term12').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term12').set('V0', 1, 'V0');
model.physics('es').feature.create('term13', 'Terminal', 2);
model.physics('es').feature('term13').selection.set([24]);
model.physics('es').feature('term13').set('TerminalType', 1, 'Voltage');
model.physics('es').feature('term13').set('V0', 1, 'V0');

model.study.create('std2');
model.study('std2').feature.create('stat', 'Stationary');
model.study('std2').feature('stat').set('physselection', 'solid');
model.study('std2').feature('stat').set('activate', {'solid' 'off' 'ale' 'on' 'es' 'on'});
model.study('std2').feature('stat').set('physselection', 'ale');
model.study('std2').feature('stat').set('activate', {'solid' 'off' 'ale' 'off' 'es' 'on'});

model.sol.create('sol2');
model.sol('sol2').feature.create('st1', 'StudyStep');
model.sol('sol2').feature('st1').set('study', 'std2');
model.sol('sol2').feature('st1').set('studystep', 'stat');
model.sol('sol2').feature.create('v1', 'Variables');
model.sol('sol2').feature.create('s1', 'Stationary');
model.sol('sol2').feature('s1').feature.create('fc1', 'FullyCoupled');
model.sol('sol2').feature('s1').feature.create('i1', 'Iterative');
model.sol('sol2').feature('s1').feature('i1').set('linsolver', 'cg');
model.sol('sol2').feature('s1').feature('fc1').set('linsolver', 'i1');
model.sol('sol2').feature('s1').feature('i1').feature.create('mg1', 'Multigrid');
model.sol('sol2').feature('s1').feature('i1').feature('mg1').set('prefun', 'amg');
model.sol('sol2').feature('s1').feature.remove('fcDef');
model.sol('sol2').attach('std2');
model.sol('sol2').feature('v1').set('notsolmethod', 'sol');
model.sol('sol2').feature('v1').set('notsol', 'sol1');

model.study('std1').feature('stat').set('physselection', 'es');
model.study('std1').feature('stat').set('activate', {'solid' 'on' 'ale' 'on' 'es' 'on'});

model.name('model3.mph');
model.name('skin_not_run(to make mfile).mph');

model.param.set('stress', '40e3');
model.param.set('V0', '3.3');
model.param.set('E', '151e3');
model.param.descr('E', 'static Young''s modulus');
model.param.descr('stress', 'applied pressure');
model.param.set('EpsR', '6');
model.param.descr('EpsR', 'electric relative permittivity');

model.material('mat1').materialModel('def').set('relpermittivity', 'EpsR');

model.physics('solid').feature('lemm1').set('E', 1, 'E');
model.physics('solid').feature('lemm1').set('nu', 1, 'poisson');
model.physics('solid').feature('lemm1').set('rho', 1, 'density');

model.param.set('poisson', '0.4');
model.param.descr('poisson', 'Poisson''s ratio');
model.param.set('density', '240');
model.param.descr('density', 'material density');

model.study('std1').feature('param').set('plist', 'range(0,stress/10,stress)');
model.study('std1').feature('stat').set('physselection', 'solid');

model.sol('sol1').feature('s1').feature('p1').set('plist', 'range(0,stress/10,stress)');

model.physics('es').feature('gnd1').selection.set([4 11]);

model.view('view1').set('renderwireframe', true);

model.physics('es').feature('term1').selection.set([19]);
model.physics('es').feature('term2').selection.set([15]);
model.physics('es').feature('term3').selection.set([24]);
model.physics('es').feature('term4').selection.set([14]);
model.physics('es').feature('term5').selection.set([23]);
model.physics('es').feature('term6').selection.set([8]);
model.physics('es').feature('term8').selection.set([28]);
model.physics('es').feature('term9').selection.set([6]);
model.physics('es').feature('term10').selection.set([10]);
model.physics('es').feature('term11').selection.set([26]);
model.physics('es').feature('term12').selection.set([30]);
model.physics('es').feature('term13').selection.set([3]);
model.physics('es').feature('term6').set('V0', 1, 'V0');

model.study('std1').feature('stat').set('physselection', 'es');
model.study('std1').feature('stat').set('activate', {'solid' 'on' 'ale' 'on' 'es' 'on'});
model.study('std1').feature('stat').set('physselection', 'es');

model.result.create('pg1', 3);
model.result('pg1').set('data', 'dset1');
model.result('pg1').feature.create('surf1', 'Surface');
model.result('pg1').feature('surf1').feature.create('def1', 'Deform');
model.result('pg1').feature('surf1').feature('def1').set('scaleactive', 'on');
model.result('pg1').feature('surf1').feature('def1').set('scale', '1');
model.result.create('pg2', 3);
model.result('pg2').set('data', 'dset1');
model.result('pg2').feature.create('slc1', 'Slice');

model.param.set('elastomer_thickness', '1.2[mm]');
model.param.set('s', '69.91');
model.param.descr('s', 'the area of the applied pressure region');
model.param.set('stress_x', 'side_length/2');
model.param.set('stress_y', '1[cm]');
model.param.descr('stress_x', 'x coordinate of the ellipes area');
model.param.descr('stress_y', 'y coordinate of the ellipes area');
model.param.set('a', 'sqrt(s/(pi*1.5))[mm]');
model.param.set('b', 'a*1.5');
model.param.descr('a', 'semi major axis of the ellipes');
model.param.descr('b', 'semi minor axis of the ellipes');

model.geom('geom1').feature('wp4').geom.run('c1');
model.geom('geom1').feature('wp4').geom.feature.create('e1', 'Ellipse');
model.geom('geom1').feature('wp4').geom.feature('e1').setIndex('pos', 'stress_x', 0);
model.geom('geom1').feature('wp4').geom.feature('e1').setIndex('pos', 'stress_y', 1);
model.geom('geom1').feature('wp4').geom.feature('e1').setIndex('semiaxes', 'a', 0);
model.geom('geom1').feature('wp4').geom.feature('e1').setIndex('semiaxes', 'b', 1);
model.geom('geom1').feature('wp4').geom.run('e1');
model.geom('geom1').feature('wp4').geom.feature('c1').active(false);
model.geom('geom1').run;

model.physics('solid').feature('bndl1').selection.set([15]);

out = model;
