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

plot3(x1,y1,z*ones(1,numel(x1)),'m');

hold on
plot3(x2,y2,z*ones(1,numel(x2)),'m');
hold on
plot3(x3,y3,z*ones(1,numel(x3)),'m');
hold on
plot3(x4,y4,z*ones(1,numel(x4)),'m');

p=plot3(x1,y1,zeros(1,numel(x1)));
p.Color = "white";
p=plot3(x1,y1,3*ones(1,numel(x1)));
p.Color = "white";
% 
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

% xlim([0,1.8])
% ylim([0,1.4]);
% zlim([0,2]);

 Arrow3([x_c1,y_c1,z] ,[x_c1,y_c1,z_u])
 Arrow3([x_c2,y_c2,z] ,[x_c2,y_c2,z_u])
 Arrow3([x_c3,y_c3,z] ,[x_c3,y_c3,z_u])
 Arrow3([x_c4,y_c4,z] ,[x_c4,y_c4,z_u])
 
 Arrow3([x_f,y_f,z],[x_f,y_f,z_d],['--','c'])
 Arrow3([x_f,y_f,z],[x_f,y_f,z_d],['--','c'])
 
Arrow3([0,0,0] ,[x_f,y_f,z],['--','r'])
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