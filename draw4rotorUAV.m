r=.1; L=0.225;z=1;
z_u=z+.9;
z_d=z-.9;
x_c1=1;
x_c2=x_c1+L;
x_c3=x_c1+2*L;
x_c4=x_c2;

y_c1=1;
y_c2=y_c1+L;
y_c3=y_c1;
y_c4=y_c2-2*L;

x_f=x_c1+L;
y_f=y_c1;

teta=-pi:0.01:pi;
x1=r*cos(teta) + x_c1;
y1=r*sin(teta) + y_c1;

x2=r*cos(teta) + x_c2;
y2=r*sin(teta) + y_c2;

x3=r*cos(teta) + x_c3;
y3=r*sin(teta) + y_c3;

x4=r*cos(teta) + x_c4;
y4=r*sin(teta) + y_c4;

x5=r*cos(teta(1,1:250)) + x_f;
y5=r*sin(teta(1,1:250)) + y_f;

plot3(x1,y1,z*ones(1,numel(x1)),'m');

hold on
plot3(x2,y2,z*ones(1,numel(x2)),'m');
hold on
plot3(x3,y3,z*ones(1,numel(x3)),'m');
hold on
plot3(x4,y4,z*ones(1,numel(x4)),'m');
p5=plot3(x5,y5,z_u*ones(1,numel(x5)),'m');
p5.Color = "k";
p=plot3(x1,y1,zeros(1,numel(x1)));
p.Color = "white";
p=plot3(x1,y1,3*ones(1,numel(x1)));
p.Color = "white";
% 
%---------------------------------------
x1a=(r-.03)*cos(teta(1,250:315)) + x_c1;
y1a=(r-.03)*sin(teta(1,250:315)) + y_c1;

x2a=(r-.03)*cos(teta(1,1:250)) + x_c2;
y2a=(r-.03)*sin(teta(1,1:250)) + y_c2;

x3a=(r-.03)*cos(teta(1,1:250)) + x_c3;
y3a=(r-.03)*sin(teta(1,1:250)) + y_c3;

x4a=(r-.03)*cos(teta(1,1:250)) + x_c4;
y4a=(r-.03)*sin(teta(1,1:250)) + y_c4;

plot3(x1a,y1a,z*ones(1,numel(x1a)),'k');

hold on
plot3(x2a,y2a,z*ones(1,numel(x2a)),'k');
hold on
plot3(x3a,y3a,z*ones(1,numel(x3a)),'k');
hold on
plot3(x4a,y4a,z*ones(1,numel(x4a)),'k');

%----------------------------------------------------

% hold on
% plot3(x2,y2,zeros(1,numel(x2)));
% hold on
% plot3(x3,y3,zeros(1,numel(x3)));
% hold on
% plot3(x4,y4,zeros(1,numel(x4)));


% line([x_c1 x_c2 x_c3 x_c4],[y_c1 y_c2 y_c3 y_c4],[0 0 0 0]) 
line([x_c1 x_c3 ],[y_c1  y_c3 ],[ z z]) 
line([x_c2 x_c4 ],[y_c2  y_c4 ],[ z z]) 

line([x_c1 x_c1 ],[y_c1  y_c1 ],[ z z_u]) 
line([x_c2 x_c2 ],[y_c2  y_c2 ],[ z z_u]) 
line([x_c3 x_c3 ],[y_c3  y_c3 ],[ z z_u]) 
line([x_c4 x_c4 ],[y_c4  y_c4 ],[ z z_u]) 
xlim([0.7,1.8])
% xlim([0,1.8])
% ylim([0.8,1.8]);
% zlim([0,2]);

 Arrow3([x_c1,y_c1,z] ,[x_c1,y_c1,z_u])
 Arrow3([x_c2,y_c2,z] ,[x_c2,y_c2,z_u])
 Arrow3([x_c3,y_c3,z] ,[x_c3,y_c3,z_u])
 Arrow3([x_c4,y_c4,z] ,[x_c4,y_c4,z_u])
 
 Arrow3([x_f,y_f,z],[x_f,y_f,z_u],['--','c'])
 Arrow3([x_f,y_f,z],[x_f,y_f,z_d],['--','c'])
  Arrow3([x_c1,y_c1,z],[x_c1-r-.09,y_c1,z],['--','c'])
  Arrow3([x_c3,y_c3,z],[x_c3+r+.09,y_c3,z],['--','c'])
  Arrow3([x_c2,y_c2,z],[x_c2,y_c2+r+.09,z],['--','c'])
  Arrow3([x_c4,y_c4,z],[x_c4,y_c4-r-.09,z],['--','c'])

% Arrow3([0,0,0] ,[x_f,y_f,z],['--','r'])
% Arrow3([.8,.6,0] ,[x_f,y_f,z],['--','r'])


text(x_c1-r-.1,y_c1,z,'\phi')
text(x_c4,y_c4-r-.1,z,'\theta')
text(x_f,y_f,z_u+.1,'\psi')

text(x_c1,y_c1+.1,z_u-.6,'F_1')
text(x_c2,y_c2,z_u+.1,'F_2')
text(x_c3,y_c3,z_u+.1,'F_3')
text(x_c4,y_c4-.1,z_u-.1,'F_4')
%  quiver3(x_c1, y_c1,5,x_c1, 7,5)
% plot3(x,y,zeros(1,numel(x)));
% x=r*cos(teta) ;
% y=r*sin(teta) ;

% xlim([-5,5])
% ylim([-5,5]);
% zlim([-1,1]);
% 

xlabel('X axis');
ylabel('Y axis');
zlabel('Z axis');


teta=0:0.01:pi;
X1=r*cos(teta) + x_f;
Y1=r*cos(teta) + x_c1;
Z1=r*sin(teta) + y_c1;
 
pz=plot3(.9*ones(1,numel(Y1)),Y1,Z1,'m');
pz.Color='k';
pz1=plot3(X1,(y_c4-r)*ones(1,numel(Y1)),Z1,'m');
pz1.Color='k';
% Arrow3([.9,Y1(75),Z1(75)] ,[.9,Y1(1),Z1(1)],['--','r'])
