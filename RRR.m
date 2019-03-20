function RRR()
disp('Enter the following Data : ');
 
l1 = input('L1: ');
l2 = input('L2: ');
l3 = input('L3: ');

q1_min = input('q1_min: ');
q1_max = input('q1_max: ');
q2_min = input('q2_min: ');
q2_max = input('q2_max: ');
q3_min = input('q3_min: ');
q3_max = input('q3_max: ');

%Transform qs into radians
t1=linspace(q1_min, q1_max, 200)*pi/180;
t2=linspace(q2_min, q2_max, 200)*pi/180;
t3=linspace(q3_min, q3_max, 200)*pi/180;

[q1,q2,q3]=ndgrid(t1,t2,t3);  %Creates the matrices of 200x200x200 for each variable 
xM = l1 * cos(q1) + l2 * cos(q1 + q2) + l3 * cos(q1 + q2 + q3);
yM = l1 * sin(q1) + l2 * sin(q1 + q2) + l3 * sin(q1 + q2 + q3);
plot(xM(:),yM(:),'.')
xL = xlim; %all values of x 
yL = ylim; % all values of y 
line(xL, [0 0],'color','k','linewidth',1) %Draw x-axis
line([0 0], yL,'color','k','linewidth',1) %Draw y-axis

end

