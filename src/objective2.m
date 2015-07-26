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

%% objective function for skin weight based on Young's modulus E (with a
% given pressure p)
function [material,sensitivity,thickness,minweight] = objective2(pressure)

StressStrain3
sigma = pressure; % stress in MPa
Eps0 = 8.85e-12; %vacuumm permittivity

% New data (20/08/2014)
EpsR = [4.2 5.3 5.2 2.3 3.1 3.9 4.8 8.2 ]; % relative permittivity at 250kHz
Densities = [1.28 1.68 1.76 0.96 1.48 1.53 1.52 1.44]; % Densities of materials in g/cm3

 elastomer = [
     'Ecoflex          '; 
     'Ecoflex(PMN-PT)  '; 
     'Ecoflex(SrTiO3)  '; 
     'SomaFoama        ';
     'SomaFoama(PMN-PT)'; 
     'SomaFoama(SrTiO2)';
     'SomaFoama(SrTiO3)';
     'PolyurethanePU   '];

 [m,n] = size(elastomer);
 for i = 1:m
     strain(i) = (p(1,i)*sigma^3 + p(2,i)*sigma^2 + p(3,i)*sigma + p(4,i))/100;
     S2(i) = Eps0*strain(i)/(sigma*(1 - strain(i)));
     minThickness(i) = strain(i)*6; %the thickness of the sample is 6mm = 0.6cm
     weight(i) = minThickness(i)/10*Densities(i); %g/cm2
 end

 [C,I]= min(weight);
 sensitivity = S2(I);
 material = elastomer(I,:);
 thickness = minThickness(I);
 minweight = C;
