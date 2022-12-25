t=0: .001:100;
x=2*t; 
z=5*sin(t); 
y=0.5*sin(0.5*t) ;
figure;
plot(z,y,'r-*' ,'LineWidth',.2 )
xlabel('Z values');
ylabel('Y values');
line(xlim(), [0,0], 'LineWidth', .5, 'Color', 'k');
title('Path')
figure;
plot3(x,z,y,'r*' ,'LineWidth',.2 )
xlabel('X values');
ylabel('Y values');
zlabel('Z values');
line(xlim(), [0,0], 'LineWidth', .5, 'Color', 'k');
title('3D Path')

figure;
plot(t,x,'r-*' ,'LineWidth',.2 )