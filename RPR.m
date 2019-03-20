function RPR()
    disp('Enter the following Data : ');
    
    l1 = input('L1: ');
    q2_min = input('q2_min length: ');
    q2_max = input('q2_max length: ');
    l2 = input('L2: ');
    q1_min = input('q1_min: ');
    q1_max = input('q1_max: ');
    q3_min = input('q3_min: ');
    q3_max = input('q3_max: ');

    t1=linspace(q1_min, q1_max, 200)*pi/180;
    t2=linspace(q2_min, q2_max, 200);
    t3=linspace(q3_min, q3_max, 200)*pi/180;

    [q1,q2,q3]=ndgrid(t1,t2,t3);  %Creates the matrices of 200x200x200 for each variable 
    
    xM = (l1 + q2) .* cos(q1) + l2 * cos(q1 + q3) ;
    yM = (l1 + q2) .* sin(q1) + l2 * sin(q1 + q3) ;
    plot(xM(:),yM(:),'.')
    xL = xlim; %all values of x 
    yL = ylim; % all values of y 
    line(xL, [0 0],'color','k','linewidth',1) %Draw x-axis
    line([0 0], yL,'color','k','linewidth',1) %Draw y-axis
end