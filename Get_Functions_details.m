%_________________________________________________________________________________
%% PID CONTROLLER
%% MOHAMED IBRAHIM ZINELDIN                   ãÍãÏ ÅÈÑÇåíã ÚÈÏÇáÚÒíÒ Òíä ÇáÏíä                
%____________________________________________________________________________________
% lb is the lower bound: lb=[lb_1,lb_2,...,lb_d]
% up is the uppper bound: ub=[ub_1,ub_2,...,ub_d]
% dim is the number of variables (dimension of the problem)

function [lb,ub,dim,fobj] = Get_Functions_details(F)

% F1=Z, F2=phi, F3=y
switch F
    case 'F1' % case1
        fobj = @F1;
        ub=[100 100 100];% ranges : Attitude Stabilization of Quad-rotor (UAV) system Using Fuzzy PID Controller (An Experimental Test)& Comparison between PSO and GA for Parameters Optimization of PID Controller
        lb=[1 1 1];
        dim=3;
        
    case 'F2' %case2
        fobj = @F2;%Example 2
        ub=[10,1.5,5];%100 *ones(1,3);
        lb=[1 1 1];
        dim=3;
        
    case 'F3' 
        
        fobj = @F3;
        ub=[10,1.5,5];%100 *ones(1,3);
        lb=[1 1 1];
        dim=3;
        
          
end
%-------------------------------------------------------------------------------------------------------------------------
function o = F1(x)
    %UAV DRONE PID case1
    open('Za.slx')
    mo=sim('Za.slx');
    plot(mo.Z_err)
    
    dt=mo.Z_err.Time(1,1)-mo.Z_err.Time(2,1);
   w1 = 0.999 ;w2 =0.001 ;  w3 =100; %HERE w3=w4 Ý ÇáÈÍË Ïå the  weights of Fitness Function are cited from : https://sci-hub.st/https://ieeexplore.ieee.org/document/4026488
   IAE4=trapz(mo.Z_err.Time,abs(mo.Z_err.Data));%integral absolute error (IAE)
   ISE4= trapz(mo.Z_err.Time,mo.Z_err.Data.^2); %Integral Square Error
   ITAE4=trapz(mo.Z_err.Time,dt*abs(mo.Z_err.Data));%d integrated time absolute error (ITAE)
   f1=w1 *IAE4 +w2*ISE4 +w3*ITAE4;% Objective Fun
   o =f1;
end


function o = F2(x)   %
    open('phi.slx')
    mo=sim('phi.slx');
    plot(mo.phi_err)
%     ise=sum(mo.phi_err*mo.phi_err);
   dt=mo.phi_err.Time(1,1)-mo.phi_err.Time(2,1);
   w1 = 0.999 ;w2 =0.001 ;  w3 =100; %HERE w3=w4 Ý ÇáÈÍË Ïå the  weights of Fitness Function are cited from : https://sci-hub.st/https://ieeexplore.ieee.org/document/4026488
   IAE4=trapz(mo.phi_err.Time,abs(mo.phi_err.Data));%integral absolute error (IAE)
   ISE4= trapz(mo.phi_err.Time,mo.phi_err.Data.^2); %Integral Square Error
   ITAE4=trapz(mo.phi_err.Time,dt*abs(mo.phi_err.Data));%d integrated time absolute error (ITAE)
   F2=w1 *IAE4 +w2*ISE4 +w3*ITAE4;
   o =F2;
%     o = ise; 
end


function o = F3(x) 
    open('y.slx')
    mo=sim('y.slx');%
%     plot(mo.y_err)
    dt=mo.y_err.Time(1,1)-mo.y_err.Time(2,1);
   w1 = 0.999 ;w2 =0.001 ;  w3 =100; %HERE w3=w4 Ý ÇáÈÍË Ïå the  weights of Fitness Function are cited from : https://sci-hub.st/https://ieeexplore.ieee.org/document/4026488
   IAE4=trapz(mo.y_err.Time,abs(mo.y_err.Data));%integral absolute error (IAE)
   ISE4= trapz(mo.y_err.Time,mo.y_err.Data.^2); %Integral Square Error
   ITAE4=trapz(mo.y_err.Time,dt*abs(mo.y_err.Data));%d integrated time absolute error (ITAE)
   F3=w1 *IAE4 +w2*ISE4 +w3*ITAE4;
   o =F3;
%     ise=sum(mo.y_err*mo.y_err);
%     o = ise; 
end

end
