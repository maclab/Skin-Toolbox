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

%% objective function compromise between sensitivity and weight (using Pareto front) S based on Young's modulus E (with a given pressure p)
% The general idea is that all the solutions that are not dominated by
% other solution will belong to the Pareto front
% To dominate other solution, the solution has to satisfy 2 conditions
% called d1 and d2
% The detail about Pareto front can be found at http://en.wikipedia.org/wiki/Multi-objective_optimization

%TESTING============================================================================

%sigma = 0.01; % stress in MPa

%============================================================================
function [ParetoFront] = objective3(pressure)
sigma = pressure; % stress in MPa

StressStrain3
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
     weight(i) = minThickness(i)/10*Densities(i); %%g/cm2


 end
 
 figure;
 plot(S2,weight,'bo','MarkerFaceColor','b','MarkerSize',8);
 text(S2,weight,elastomer,'HorizontalAlignment','center','VerticalAlignment','bottom','fontsize',11,'FontName','Helvetica');
 
 ParetoFront = [0,0];
 material = [
 '                 '    
 ];
  
 for i=1:m

     d = 0;
     for j = 1:m
         if (S2(j)>=S2(i) && weight(j)<=weight(i))
             if (S2(j)>S2(i) || weight(j)<weight(i))
             d = 1;
             end 
         end
     end
     
     if (d == 0)
         ParetoFront = [ParetoFront; S2(i), weight(i)]; 
         material = [material; elastomer(i,:)];
     end
 end
 
 ParetoFront( ~any(ParetoFront,2), : ) = [];
 hold on;
 plot (ParetoFront(:,1),ParetoFront(:,2),'rs','MarkerFaceColor','r','MarkerSize',10);
 grid on;
 
 xlabel('Sensitivity [1/kPa]','fontsize',12,'FontName','Helvetica');
 ylabel('Skin weight [g/cm2]','fontsize',12,'FontName','Helvetica');
 set(gca,'fontsize',11)
 
 

