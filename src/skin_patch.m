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
% skin_final8.m
%
% Model exported on Jun 9 2011, 18:43 by COMSOL 4.1.0.88.

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
model.geom('geom1').feature('wp1').geom.feature.create('b1', 'BezierPolygon');
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', 1);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' '0'; '0' '0'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1'});
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '-1.5', 0, 0);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '1.5', 1, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '0', 0, 0);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length', 1, 1);

model.param.set('side_length', '3[cm]');

model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', [1 1]);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' '0' '0'; '0' 'side_length' 'side_length'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1' '1' '1'});
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length/2', 0, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'sqrt(9- pow(side_length,2))', 1, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'sqrt(9- (side_length*side_length))', 1, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '0', 0, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length/2', 0, 2);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '0', 1, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'sqrt(9- (side_length*side_length))', 1, 2);
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', [1 1 1]);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' '0' 'side_length/2' 'side_length/2'; '0' '0' 'sqrt(9- (side_length*side_length))' 'sqrt(9- (side_length*side_length))'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp1').geom.run('b1');
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '0', 0, 3);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length', 1, 3);
model.geom('geom1').feature('wp1').geom.run('b1');
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length', 1, 1);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '0', 1, 1);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length', 1, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '0', 1, 3);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.run('b1');
model.geom('geom1').feature('wp1').geom.run('b1');
model.geom('geom1').feature('wp1').geom.run('b1');
model.geom('geom1').feature('wp1').geom.run('b1');
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', [1 1]);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' '0' '0'; '0' 'side_length' '0'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1' '1' '1'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', 1);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' '0'; '0' 'side_length'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1'});
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length', 0, 1);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', '0', 1, 1);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', [1 1]);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' 'side_length' 'side_length'; '0' '0' '0'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1' '1' '1'});
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'side_length/2', 0, 2);
model.geom('geom1').feature('wp1').geom.feature('b1').setIndex('p', 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))', 1, 2);
model.geom('geom1').feature('wp1').geom.feature('b1').set('degree', [1 1 1]);
model.geom('geom1').feature('wp1').geom.feature('b1').set('p', {'0' 'side_length' 'side_length/2' 'side_length/2'; '0' '0' 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))' 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))'});
model.geom('geom1').feature('wp1').geom.feature('b1').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.run('b1');
model.geom('geom1').feature('wp1').geom.feature.create('c1', 'Circle');

model.param.set('taxel_radius', '2[mm]');
model.param.set('x1', '0.5[cm]');
model.param.set('y1', '0.3[cm]');
model.param.set('pitch', '5[mm]');
model.param.set('y2', 'y1');
model.param.set('x2', 'x1+pitch');
model.param.set('x3', 'x1+pitch/2');
model.param.set('y3', 'y1 + pitch*sqrt(3)/2');

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
model.geom('geom1').feature('wp1').geom.feature('copy1').selection('input').set({'c1' 'c2' 'c3'});
model.geom('geom1').feature('wp1').geom.feature('copy1').setIndex('displ', 'T_lengh/4', 0);

model.param.set('T_heigh', 'sqrt((T_lenght*T_lenght)-((T_lenght/2)*(T_lenght/2)))');
model.param.remove('T_heigh');
model.param.set('T_height', 'sqrt((T_lenght*T_lenght)-((T_lenght/2)*(T_lenght/2)))');

model.geom('geom1').feature('wp1').geom.feature('copy1').setIndex('displ', 'T_height', 1);
model.geom('geom1').feature('wp1').geom.feature('copy1').setIndex('displ', 'T_lenght/4', 0);

model.param.set('T_height', 'sqrt((side_length*side_length)-((side_length/2)*(side_length/2)))');

model.geom('geom1').feature('wp1').geom.feature('copy1').setIndex('displ', 'side_length/4', 0);
model.geom('geom1').feature('wp1').geom.run('copy1');
model.geom('geom1').feature('wp1').geom.feature('copy1').setIndex('displ', 'T_height/2', 1);
model.geom('geom1').feature('wp1').geom.run('copy1');
model.geom('geom1').feature('wp1').geom.run('copy1');
model.geom('geom1').feature('wp1').geom.feature.create('mir1', 'Mirror');
model.geom('geom1').feature('wp1').geom.feature('mir1').selection('input').set({'copy1(1)' 'copy1(2)' 'copy1(3)'});
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('pos', 'T_lenght/2', 1);
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('pos', 'T_height/2', 1);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('mir1').set('keep', 'on');
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('pos', 'T_height/2', 0);
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('pos', '0', 1);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('pos', '0', 0);
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('pos', 'T_height/2', 1);
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp1').geom.feature('mir1').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.run('mir1');
model.geom('geom1').feature('wp1').geom.feature.create('copy2', 'Copy');
model.geom('geom1').feature('wp1').geom.feature('copy2').selection('input').set({'c1' 'c2' 'c3'});
model.geom('geom1').feature('wp1').geom.feature('copy2').setIndex('displ', 'side_length', 0);
model.geom('geom1').feature('wp1').geom.runAll;
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

model.material.create('mat1');
model.material('mat1').name('Polyurethane [solid]');
model.material('mat1').materialModel('def').set('thermalconductivity', 'k(T[1/K])[W/(m*K)]');
model.material('mat1').materialModel('def').set('density', 'rho(T[1/K])[kg/m^3]');
model.material('mat1').materialModel('def').func.create('k', 'Piecewise');
model.material('mat1').materialModel('def').func('k').set('funcname', 'k');
model.material('mat1').materialModel('def').func('k').set('arg', 'T');
model.material('mat1').materialModel('def').func('k').set('extrap', 'constant');
model.material('mat1').materialModel('def').func('k').set('pieces', {'293.0' '368.0' '0.197+3.349E-4*T^1'});
model.material('mat1').materialModel('def').func.create('rho', 'Piecewise');
model.material('mat1').materialModel('def').func('rho').set('funcname', 'rho');
model.material('mat1').materialModel('def').func('rho').set('arg', 'T');
model.material('mat1').materialModel('def').func('rho').set('extrap', 'constant');
model.material('mat1').materialModel('def').func('rho').set('pieces', {'293.0' '303.0' '1250.0'});
model.material('mat1').materialModel('def').addInput('temperature');
model.material('mat1').materialModel('def').set('relpermittivity', '6');

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

model.material.remove('mat1');
model.material.create('mat1');
model.material('mat1').name('dielectric');
model.material('mat1').materialModel('def').set('relpermittivity', '6');

model.geom('geom1').feature('wp1').geom.feature('c1').set('r', 'taxel_radius/2');
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.feature('c2').set('r', 'taxel_radius/2');
model.geom('geom1').feature('wp1').geom.feature('c3').set('r', 'taxel_radius/2');
model.geom('geom1').feature('wp1').geom.runAll;

model.name('param perla.mph');

model.geom('geom1').feature('wp1').geom.feature('c1').set('r', 'taxel_radius');
model.geom('geom1').feature('wp1').geom.feature('c2').set('r', 'taxel_radius');
model.geom('geom1').feature('wp1').geom.feature('c3').set('r', 'taxel_radius');
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').run;
model.geom('geom1').run('wp1');
model.geom('geom1').feature.create('wp3', 'WorkPlane');

model.param.set('shield_radius', '2.1[mm]');

model.geom('geom1').feature('wp3').geom.feature.create('c1', 'Circle');
model.geom('geom1').feature('wp3').geom.feature('c1').set('r', 'shield_radius');
model.geom('geom1').feature('wp3').geom.feature('c1').setIndex('pos', 'x1', 0);
model.geom('geom1').feature('wp3').geom.feature('c1').setIndex('pos', 'y1', 1);
model.geom('geom1').feature('wp3').geom.run('c1');

model.param.set('shield_radius', '2.2[mm]');

model.geom('geom1').feature('wp3').geom.run('c1');
model.geom('geom1').feature('wp3').geom.run('c1');
model.geom('geom1').feature('wp3').geom.feature.create('c2', 'Circle');
model.geom('geom1').feature('wp3').geom.feature('c2').set('r', 'shield_radius');
model.geom('geom1').feature('wp3').geom.feature('c2').setIndex('pos', 'x2', 0);
model.geom('geom1').feature('wp3').geom.feature('c2').setIndex('pos', 'y2', 1);
model.geom('geom1').feature('wp3').geom.run('c2');
model.geom('geom1').feature('wp3').geom.run('c2');
model.geom('geom1').feature('wp3').geom.feature.create('c3', 'Circle');
model.geom('geom1').feature('wp3').geom.feature('c3').set('r', 'shield_radius');
model.geom('geom1').feature('wp3').geom.feature('c3').setIndex('pos', 'x3', 0);
model.geom('geom1').feature('wp3').geom.feature('c3').setIndex('pos', 'y3', 1);
model.geom('geom1').feature('wp3').geom.run('c3');
model.geom('geom1').feature('wp3').geom.run('c3');
model.geom('geom1').feature('wp3').geom.feature.create('copy1', 'Copy');
model.geom('geom1').feature('wp3').geom.feature('copy1').selection('input').set({'c1' 'c2' 'c3'});
model.geom('geom1').feature('wp3').geom.feature('copy1').setIndex('displ', 'side_length/4', 0);
model.geom('geom1').feature('wp3').geom.feature('copy1').setIndex('displ', 'T_height/2', 1);
model.geom('geom1').feature('wp3').geom.run('copy1');
model.geom('geom1').feature('wp3').geom.run('copy1');
model.geom('geom1').feature('wp3').geom.feature.create('mir1', 'Mirror');
model.geom('geom1').feature('wp3').geom.feature('mir1').setIndex('pos', 'T_height/2', 1);
model.geom('geom1').feature('wp3').geom.feature('mir1').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp3').geom.feature('mir1').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp3').geom.feature('mir1').selection('input').set({'copy1(1)' 'copy1(2)' 'copy1(3)'});
model.geom('geom1').feature('wp3').geom.run('mir1');
model.geom('geom1').feature('wp3').geom.feature('mir1').set('keep', 'on');
model.geom('geom1').feature('wp3').geom.run('mir1');
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
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.set({'ext1'});
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.set({'ext1'});
model.geom('geom1').measure.selection.init;
model.geom('geom1').measure.selection.set({'ext1'});

model.param.set('force_vol', '300e3[N/m^3]');
model.param.descr('force_vol', 'force per volume');

model.geom('geom1').measureFinal.selection.geom('geom1', 2);
model.geom('geom1').measureFinal.selection.set([11]);

model.mesh.create('mesh2', 'geom1');
model.mesh.remove('mesh2');
model.mesh.create('mesh2', 'geom1');
model.mesh('mesh2').feature.create('conv1', 'Convert');
model.mesh('mesh2').runCurrent;
model.mesh('mesh2').feature.remove('conv1');
model.mesh.remove('mesh2');

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

model.study('std1').feature('stat').set('physselection', 'es');

model.sol('sol1').feature('v1').feature('mod1_V').set('solvefor', 'on');

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

model.param.set('poisson', '0.4');
model.param.descr('poisson', 'Poisson''s ratio');

model.physics('solid').feature('lemm1').set('rho', 1, 'density');

model.param.set('density', '240');
model.param.descr('density', 'material density');

model.study('std1').feature('param').set('plist', 'range(0,stress/10,stress)');
model.study('std1').feature('stat').set('physselection', 'solid');

model.sol('sol1').feature('s1').feature('p1').set('plist', 'range(0,stress/10,stress)');

model.physics('es').feature('gnd1').selection.set([4 11]);

model.view('view1').set('renderwireframe', true);

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

model.name('test3.mph');
model.name('skin_not_run(to make mfile).mph');

model.geom('geom1').run('wp4');

model.name('skin_final4.mph');

model.param.set('offset', '0.5[mm]');
model.param.set('xx1', '0');
model.param.set('yy1', '0');
model.param.set('X1', 'xx1-offset*sqrt(3)');
model.param.set('Y1', 'yy1-offset');
model.param.set('xx2', 'side_length/2');
model.param.set('yy2', '0');
model.param.set('X2', 'xx2+offset*sqrt(3)');
model.param.set('Y2', 'Y1');
model.param.set('xx3', 'side_length/2');
model.param.set('xx2', 'side_length');
model.param.set('yy3', 'side_length*sqrt(3)/2');
model.param.set('X3', 'xx3');
model.param.set('Y3', 'yy3+offset*sqrt(3)');

model.geom('geom1').feature('wp2').geom.feature('b1').set('degree', 1);
model.geom('geom1').feature('wp2').geom.feature('b1').set('p', {'0' '0'; '0' '0'});
model.geom('geom1').feature('wp2').geom.feature('b1').set('w', {'1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'X1', 0, 0);
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'Y1', 1, 0);
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'X2', 0, 1);
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'Y2', 1, 1);
model.geom('geom1').feature('wp2').geom.run('b1');
model.geom('geom1').feature('wp2').geom.feature('b1').set('degree', [1 1]);
model.geom('geom1').feature('wp2').geom.feature('b1').set('p', {'X1' 'X2' 'X2'; 'Y1' 'Y2' 'Y2'});
model.geom('geom1').feature('wp2').geom.feature('b1').set('w', {'1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'X3', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b1').setIndex('p', 'Y3', 1, 2);
model.geom('geom1').feature('wp2').geom.feature('b1').set('degree', [1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b1').set('p', {'X1' 'X2' 'X3' 'X3'; 'Y1' 'Y2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b1').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b1').set('p', {'X1' 'X2' 'X3' 'X1'; 'Y1' 'Y2' 'Y3' 'Y1'});
model.geom('geom1').feature('wp2').geom.run('b1');
model.geom('geom1').feature('wp1').geom.feature.create('mir2', 'Mirror');
model.geom('geom1').feature('wp1').geom.feature('mir2').selection('input').set({'b1' 'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('pos', 'X2', 0);
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('pos', 'Y2', 1);
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('axis', '2*sqrt(3)', 0);
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('axis', '3', 1);
model.geom('geom1').feature('wp1').geom.run('mir2');
model.geom('geom1').feature('wp1').geom.feature('mir2').set('keep', 'on');
model.geom('geom1').feature('wp1').geom.run('mir2');
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('axis', '-2*sqrt(3)', 0);
model.geom('geom1').feature('wp1').geom.run('mir2');
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('axis', '-sqrt(3)', 0);
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp1').geom.run('mir2');
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('pos', 'X1', 0);
model.geom('geom1').feature('wp1').geom.feature('mir2').setIndex('pos', 'Y1', 1);
model.geom('geom1').feature('wp1').geom.run('mir2');
model.geom('geom1').feature('wp1').geom.run('mir2');
model.geom('geom1').feature('wp1').geom.feature.create('mir3', 'Mirror');
model.geom('geom1').feature('wp1').geom.feature('mir2').active(false);
model.geom('geom1').feature('wp1').geom.run('mir2');
model.geom('geom1').feature('wp1').geom.feature('mir3').selection('input').set({'b1' 'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp1').geom.feature('mir3').setIndex('pos', '2', 0);
model.geom('geom1').feature('wp1').geom.feature('mir3').setIndex('pos', 'X', 0);
model.geom('geom1').feature('wp1').geom.feature('mir3').setIndex('pos', 'X2', 0);
model.geom('geom1').feature('wp1').geom.feature('mir3').setIndex('pos', 'Y2', 1);
model.geom('geom1').feature('wp1').geom.feature('mir3').setIndex('axis', 'sqrt(3)', 0);
model.geom('geom1').feature('wp1').geom.feature('mir3').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp1').geom.run('mir3');
model.geom('geom1').feature('wp1').geom.feature('mir3').set('keep', 'on');
model.geom('geom1').feature('wp1').geom.run('mir3');
model.geom('geom1').feature('wp1').geom.feature('mir2').active(true);
model.geom('geom1').feature('wp1').geom.runAll;
model.geom('geom1').feature('wp1').geom.run('mir3');
model.geom('geom1').feature('wp1').geom.feature.create('mir4', 'Mirror');
model.geom('geom1').feature('wp1').geom.feature('mir4').selection('input').set({'mir2(1)' 'mir2(10)' 'mir2(11)' 'mir2(12)' 'mir2(13)' 'mir2(2)' 'mir2(3)' 'mir2(4)' 'mir2(5)' 'mir2(6)' 'mir2(7)' 'mir2(8)' 'mir2(9)'});
model.geom('geom1').feature('wp1').geom.feature('mir4').setIndex('pos', 'X3', 0);
model.geom('geom1').feature('wp1').geom.feature('mir4').setIndex('pos', 'Y3', 1);
model.geom('geom1').feature('wp1').geom.feature('mir4').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp1').geom.feature('mir4').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp1').geom.run('mir4');
model.geom('geom1').feature('wp1').geom.feature('mir4').set('keep', 'on');
model.geom('geom1').feature('wp1').geom.run('mir4');
model.geom('geom1').feature('wp1').geom.run('mir4');
model.geom('geom1').feature('wp1').geom.feature.create('mir5', 'Mirror');

model.geom('geom1').feature('wp1').geom.feature('mir5').selection('input').set({'mir3(1)' 'mir3(10)' 'mir3(11)' 'mir3(12)' 'mir3(13)' 'mir3(2)' 'mir3(3)' 'mir3(4)' 'mir3(5)' 'mir3(6)' 'mir3(7)' 'mir3(8)' 'mir3(9)'});
model.geom('geom1').feature('wp1').geom.feature('mir5').setIndex('pos', 'X3', 0);
model.geom('geom1').feature('wp1').geom.feature('mir5').setIndex('pos', 'Y3', 1);
model.geom('geom1').feature('wp1').geom.feature('mir5').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp1').geom.feature('mir5').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp1').geom.feature('mir5').set('keep', 'on');
model.geom('geom1').feature('wp1').geom.run('mir5');
model.geom('geom1').feature('wp1').geom.feature.create('mir6', 'Mirror');
model.geom('geom1').feature('wp1').geom.feature('mir6').set('keep', 'on');
model.geom('geom1').feature('wp1').geom.feature('mir6').selection('input').set({'b1' 'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp1').geom.feature('mir6').setIndex('pos', 'X3', 0);
model.geom('geom1').feature('wp1').geom.feature('mir6').setIndex('pos', 'Y3', 1);
model.geom('geom1').feature('wp1').geom.feature('mir6').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp1').geom.feature('mir6').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp1').geom.run('mir6');
model.geom('geom1').runAll;

model.param.set('stress_y', '20[mm]');

model.geom('geom1').feature('wp2').geom.feature.create('b2', 'BezierPolygon');
model.geom('geom1').feature('wp2').geom.feature('b2').set('degree', 1);
model.geom('geom1').feature('wp2').geom.feature('b2').set('p', {'0' '0'; '0' '0'});
model.geom('geom1').feature('wp2').geom.feature('b2').set('w', {'1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'X1', 0, 0);
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'Y1', 1, 0);
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'X1-(X2-X1)/2', 0, 1);
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'Y3', 1, 1);
model.geom('geom1').feature('wp2').geom.feature('b2').set('degree', [1 1]);
model.geom('geom1').feature('wp2').geom.feature('b2').set('p', {'X1' 'X1-(X2-X1)/2' 'X1-(X2-X1)/2'; 'Y1' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b2').set('w', {'1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'X3', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b2').set('p', {'X1' 'X1-(X2-X1)/2' 'X1'; 'Y1' 'Y3' 'Y1'});
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'X3', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'Y3', 1, 2);
model.geom('geom1').feature('wp2').geom.feature('b2').set('degree', [1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b2').set('p', {'X1' 'X2' 'X3' 'X3'; 'Y1' 'Y2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b2').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'X1', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b2').setIndex('p', 'X1-(X2-X1)/2', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b2').set('degree', [1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b2').set('p', {'X1' 'X2' 'X3' 'X1-(X2-X1)/2' 'X1-(X2-X1)/2'; 'Y1' 'Y2' 'Y3' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b2').set('w', {'1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b2').set('p', {'X1' 'X2' 'X3' 'X1-(X2-X1)/2' 'X1'; 'Y1' 'Y2' 'Y3' 'Y3' 'Y1'});
model.geom('geom1').feature('wp2').geom.run('b2');
model.geom('geom1').feature('wp2').geom.runAll;
model.geom('geom1').feature('wp2').geom.feature.create('b3', 'BezierPolygon');
model.geom('geom1').feature('wp2').geom.feature('b3').setIndex('p', 'X1', 0, 0);
model.geom('geom1').feature('wp2').geom.feature('b3').setIndex('p', 'Y1', 1, 0);
model.geom('geom1').feature('wp2').geom.feature('b3').setIndex('p', 'X2', 0, 1);
model.geom('geom1').feature('wp2').geom.feature('b3').setIndex('p', 'Y2', 1, 1);
model.geom('geom1').feature('wp2').geom.feature('b3').setIndex('p', 'X2+(X2-X1)/2', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b3').set('degree', [1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b3').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2+(X2-X1)/2'; 'Y1' 'Y2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b3').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b3').setIndex('p', 'X1-(X2-X1)/2', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b3').set('degree', [1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b3').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X1-(X2-X1)/2' 'X1-(X2-X1)/2'; 'Y1' 'Y2' 'Y3' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b3').set('w', {'1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b3').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X1-(X2-X1)/2' 'X1'; 'Y1' 'Y2' 'Y3' 'Y3' 'Y1'});
model.geom('geom1').feature('wp2').geom.run('b3');
model.geom('geom1').feature('wp2').geom.runAll;
model.geom('geom1').feature('wp2').geom.feature.create('b4', 'BezierPolygon');
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'X1', 0, 0);
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'Y1', 1, 0);
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'X2', 0, 1);
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'Y2', 1, 1);
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'X2+(X2-X1)/2', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b4').set('degree', [1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b4').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2+(X2-X1)/2'; 'Y1' 'Y2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b4').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'X3', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b4').set('degree', [1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b4').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X3' 'X3'; 'Y1' 'Y2' 'Y3' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b4').set('w', {'1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'XX1', 0, 4);
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'X1', 0, 4);
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'Y3 + (X2-X1)*sqrt(3)/2', 1, 4);
model.geom('geom1').feature('wp2').geom.feature('b4').set('degree', [1 1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b4').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X3' 'X1' 'X1'; 'Y1' 'Y2' 'Y3' 'Y3' 'Y3 + (X2-X1)*sqrt(3)/2' 'Y3 + (X2-X1)*sqrt(3)/2'});
model.geom('geom1').feature('wp2').geom.feature('b4').set('w', {'1' '1' '1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'Y3', 1, 5);
model.geom('geom1').feature('wp2').geom.feature('b4').setIndex('p', 'X1-(X2-X1)/2', 0, 5);
model.geom('geom1').feature('wp2').geom.feature('b4').set('degree', [1 1 1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b4').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X3' 'X1' 'X1-(X2-X1)/2' 'X1-(X2-X1)/2'; 'Y1' 'Y2' 'Y3' 'Y3' 'Y3 + (X2-X1)*sqrt(3)/2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b4').set('w', {'1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b4').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X3' 'X1' 'X1-(X2-X1)/2' 'X1'; 'Y1' 'Y2' 'Y3' 'Y3' 'Y3 + (X2-X1)*sqrt(3)/2' 'Y3' 'Y1'});
model.geom('geom1').feature('wp2').geom.runAll;
model.geom('geom1').feature('wp2').geom.run('b4');
model.geom('geom1').feature('wp2').geom.feature.create('b5', 'BezierPolygon');
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X1', 0, 0);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y1', 1, 0);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y2', 1, 1);
model.geom('geom1').feature('wp2').geom.feature('b5').set('degree', [1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b5').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2+(X2-X1)/2'; 'Y1' 'Y2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b5').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X2', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y3+ (X2-X1)*sqrt(3)/2', 1, 2);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X3', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b5').set('degree', [1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b5').set('p', {'X1' 'X2' 'X2' 'X3' 'X3'; 'Y1' 'Y2' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b5').set('w', {'1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y3 + (X2-X1)*sqrt(3)/2', 1, 4);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X1', 0, 4);
model.geom('geom1').feature('wp2').geom.feature('b5').set('degree', [1 1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b5').set('p', {'X1' 'X2' 'X2' 'X3' 'X1' 'X1'; 'Y1' 'Y2' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y3 + (X2-X1)*sqrt(3)/2' 'Y3 + (X2-X1)*sqrt(3)/2'});
model.geom('geom1').feature('wp2').geom.feature('b5').set('w', {'1' '1' '1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X1-(X2-X1)/2', 0, 5);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y3', 1, 5);
model.geom('geom1').feature('wp2').geom.feature('b5').set('degree', [1 1 1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b5').set('p', {'X1' 'X2' 'X2' 'X3' 'X1' 'X1-(X2-X1)/2' 'X1-(X2-X1)/2'; 'Y1' 'Y2' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y3 + (X2-X1)*sqrt(3)/2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b5').set('w', {'1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X2+(X2-X1)/2', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y3', 1, 2);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X1', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X2', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y3+ (X2-X1)*sqrt(3)/2', 1, 3);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X3', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X2', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X3', 0, 4);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y3', 1, 4);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'X1', 0, 5);
model.geom('geom1').feature('wp2').geom.feature('b5').setIndex('p', 'Y3+ (X2-X1)*sqrt(3)/2', 1, 5);
model.geom('geom1').feature('wp2').geom.feature('b5').set('degree', [1 1 1 1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b5').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2' 'X3' 'X1' 'X1-(X2-X1)/2' 'X1-(X2-X1)/2'; 'Y1' 'Y2' 'Y3' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b5').set('w', {'1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b5').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2' 'X3' 'X1' 'X1-(X2-X1)/2' 'X1'; 'Y1' 'Y2' 'Y3' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y1'});
model.geom('geom1').feature('wp2').geom.run('b5');
model.geom('geom1').feature('wp2').geom.feature.create('b6', 'BezierPolygon');
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'Y2', 1, 0);
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'Y1', 1, 0);
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'Y2', 1, 1);
model.geom('geom1').feature('wp2').geom.feature('b6').set('degree', [1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b6').set('p', {'X1' 'X2' 'X2' 'X3'; 'Y1' 'Y2' 'Y2' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b6').set('w', {'1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'X2+(X2-X1)/2', 0, 2);
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'Y3', 1, 2);
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'X2', 0, 3);
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'Y3+ (X2-X1)*sqrt(3)/2', 1, 3);
model.geom('geom1').feature('wp2').geom.feature('b6').set('degree', [1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b6').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2' 'X2'; 'Y1' 'Y2' 'Y3' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3+ (X2-X1)*sqrt(3)/2'});
model.geom('geom1').feature('wp2').geom.feature('b6').set('w', {'1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'X1', 0, 4);
model.geom('geom1').feature('wp2').geom.feature('b6').set('degree', [1 1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b6').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2' 'X1' 'X1'; 'Y1' 'Y2' 'Y3' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3+ (X2-X1)*sqrt(3)/2'});
model.geom('geom1').feature('wp2').geom.feature('b6').set('w', {'1' '1' '1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'X1-(X2-X1)/2', 0, 4);
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'X1', 0, 4);
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'X1-(X2-X1)/2', 0, 5);
model.geom('geom1').feature('wp2').geom.feature('b6').setIndex('p', 'Y3', 1, 5);
model.geom('geom1').feature('wp2').geom.feature('b6').set('degree', [1 1 1 1 1 1]);
model.geom('geom1').feature('wp2').geom.feature('b6').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2' 'X1' 'X1-(X2-X1)/2' 'X1-(X2-X1)/2'; 'Y1' 'Y2' 'Y3' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y3'});
model.geom('geom1').feature('wp2').geom.feature('b6').set('w', {'1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1' '1'});
model.geom('geom1').feature('wp2').geom.feature('b6').set('p', {'X1' 'X2' 'X2+(X2-X1)/2' 'X2' 'X1' 'X1-(X2-X1)/2' 'X1'; 'Y1' 'Y2' 'Y3' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3+ (X2-X1)*sqrt(3)/2' 'Y3' 'Y1'});
model.geom('geom1').feature('wp2').geom.run('b6');
model.geom('geom1').feature('wp2').geom.run('b6');
model.geom('geom1').feature('wp2').geom.run('b6');
model.geom('geom1').feature('wp2').geom.feature('b6').active(true);
model.geom('geom1').feature('wp2').geom.feature('b5').active(false);
model.geom('geom1').feature('wp2').geom.run('b6');
model.geom('geom1').feature('wp2').geom.feature('b1').active(true);
model.geom('geom1').feature('wp2').geom.feature('b1').active(false);
model.geom('geom1').runAll;
model.geom('geom1').runPre('ext1');
model.geom('geom1').feature('ext1').selection('input').set({'wp2'});
model.geom('geom1').feature('wp2').geom.feature('b1').active(true);
model.geom('geom1').runAll;
model.geom('geom1').run;

model.physics('solid').feature('bndl1').selection.set([36]);

model.param.set('stress_y', '10[mm]');

model.geom('geom1').runAll;
model.geom('geom1').run;

model.physics('solid').feature('bndl1').selection.set([36]);

model.geom('geom1').feature('wp2').geom.feature('b2').active(true);
model.geom('geom1').feature('wp2').geom.feature('b3').active(true);
model.geom('geom1').feature('wp2').geom.feature('b4').active(true);
model.geom('geom1').feature('wp2').geom.feature('b5').active(true);
model.geom('geom1').runAll;
model.geom('geom1').runPre('ext1');
model.geom('geom1').runAll;
model.geom('geom1').run;

model.name('skin_final6b.mph');

model.geom('geom1').feature('wp3').geom.run('copy2');

model.geom('geom1').feature('wp3').geom.feature.create('mir2', 'Mirror');
model.geom('geom1').feature('wp3').geom.feature('mir2').selection('input').set({'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp3').geom.feature('mir2').set('keep', 'on');
model.geom('geom1').feature('wp3').geom.feature('mir2').setIndex('pos', 'X1', 0);
model.geom('geom1').feature('wp3').geom.feature('mir2').setIndex('pos', 'Y1', 1);
model.geom('geom1').feature('wp3').geom.feature('mir2').setIndex('axis', '-sqrt(3)', 0);
model.geom('geom1').feature('wp3').geom.feature('mir2').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp3').geom.run('mir2');

model.geom('geom1').feature('wp3').geom.feature.create('mir3', 'Mirror');
model.geom('geom1').feature('wp3').geom.feature('mir3').selection('input').set({'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp3').geom.feature('mir3').set('keep', 'on');
model.geom('geom1').feature('wp3').geom.feature('mir3').setIndex('pos', 'X2', 0);
model.geom('geom1').feature('wp3').geom.feature('mir3').setIndex('pos', 'Y2', 1);
model.geom('geom1').feature('wp3').geom.feature('mir3').setIndex('axis', 'sqrt(3)', 0);
model.geom('geom1').feature('wp3').geom.feature('mir3').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp3').geom.run('mir3');

model.geom('geom1').feature('wp3').geom.feature.create('mir4', 'Mirror');
model.geom('geom1').feature('wp3').geom.feature('mir4').selection('input').set({'mir2(1)' 'mir2(10)' 'mir2(11)' 'mir2(12)' 'mir2(2)' 'mir2(3)' 'mir2(4)' 'mir2(5)' 'mir2(6)' 'mir2(7)' 'mir2(8)' 'mir2(9)'});
model.geom('geom1').feature('wp3').geom.feature('mir4').set('keep', 'on');
model.geom('geom1').feature('wp3').geom.feature('mir4').setIndex('pos', 'X3', 0);
model.geom('geom1').feature('wp3').geom.feature('mir4').setIndex('pos', 'Y3', 1);
model.geom('geom1').feature('wp3').geom.feature('mir4').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp3').geom.feature('mir4').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp3').geom.run('mir4');

model.geom('geom1').feature('wp3').geom.feature.create('mir5', 'Mirror');
model.geom('geom1').feature('wp3').geom.feature('mir5').selection('input').set({'mir3(1)' 'mir3(10)' 'mir3(11)' 'mir3(12)' 'mir3(2)' 'mir3(3)' 'mir3(4)' 'mir3(5)' 'mir3(6)' 'mir3(7)' 'mir3(8)' 'mir3(9)'});
model.geom('geom1').feature('wp3').geom.feature('mir5').setIndex('pos', 'X3', 0);
model.geom('geom1').feature('wp3').geom.feature('mir5').setIndex('pos', 'Y3', 1);
model.geom('geom1').feature('wp3').geom.feature('mir5').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp3').geom.feature('mir5').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp3').geom.feature('mir5').set('keep', 'on');
model.geom('geom1').feature('wp3').geom.run('mir5');

model.geom('geom1').feature('wp3').geom.feature.create('mir6', 'Mirror');
model.geom('geom1').feature('wp3').geom.feature('mir6').set('keep', 'on');
model.geom('geom1').feature('wp3').geom.feature('mir6').selection('input').set({'c1' 'c2' 'c3' 'copy1(1)' 'copy1(2)' 'copy1(3)' 'copy2(1)' 'copy2(2)' 'copy2(3)' 'mir1(1)' 'mir1(2)' 'mir1(3)'});
model.geom('geom1').feature('wp3').geom.feature('mir6').setIndex('pos', 'X3', 0);
model.geom('geom1').feature('wp3').geom.feature('mir6').setIndex('pos', 'Y3', 1);
model.geom('geom1').feature('wp3').geom.feature('mir6').setIndex('axis', '0', 0);
model.geom('geom1').feature('wp3').geom.feature('mir6').setIndex('axis', '1', 1);
model.geom('geom1').feature('wp3').geom.run('mir6');

model.geom('geom1').feature('wp3').geom.runAll;
model.geom('geom1').runAll;

out = model;
