nP=4;          % Number of Population
MaxIt=3;      % Maximum number of iterations
contro=5;
%-----------------------------------------------------------------------------
test1
resultingZ=Best_X;
fitnessZ=Best_Cost;
%-----------------------------------------------------------------------------
test2
resultingphi=Best_X;
fitnessphi=Best_Cost;
%-----------------------------------------------------------------------------
test3
resultingy=Best_X;
fitnessy=Best_Cost;
result=[resultingZ;resultingphi;resultingy];
%-----------------------------------------------------------------------------
open('TunedSystem.slx')
mo1=sim('TunedSystem.slx');

%--------------------------------------

