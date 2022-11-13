clc
clear all
clc
%% global matrice ex2 02
syms t t1 t2  t4 t5 t6 l0 l1 l2 d3 a d alphm dt1 dt2 dt3 dt4 dt5 dt6
m = [cos(t) -sin(t)*cos(alphm) sin(t)*sin(alphm)  a*cos(t);...
    sin(t) cos(t)*cos(alphm) -cos(t)*sin(alphm)  a*sin(t);...
    0  sin(alphm)  cos(alphm) d;...
    0 0 0 1];
m01 = subs (m,{t,alphm,a,d},{t1,-pi/2,0,l0});
m12 = subs (m,{t,alphm,a,d},{t2,pi/2,0,l1});
m23 = subs (m,{t,alphm,a,d},{0,0,0,d3});
m34 = subs (m,{t,alphm,a,d},{t4,-pi/2,0,0});
m45 = subs (m,{t,alphm,a,d},{t5-pi/2,pi/2,0,0});
m56 = subs (m,{t,alphm,a,d},{t6,0,0,l2});

%% ex2 03
% m01 = subs (m,{t,alphm,a,d},{0,-pi/2,0,0.35});
% m12 = subs (m,{t,alphm,a,d},{-pi/2,pi/2,0,0.20});
% m23 = subs (m,{t,alphm,a,d},{0,0,0,0.40});
% m34 = subs (m,{t,alphm,a,d},{pi/3,-pi/2,0,0});
% m45 = subs (m,{t,alphm,a,d},{pi/6-pi/2,pi/2,0,0});
% m56 = subs (m,{t,alphm,a,d},{pi,0,0,0.15});
% m06N=m01*m12*m23*m34*m45*m56;  
% m06S=simplify(m01*m12*m23*m34*m45*m56);
% r06 = m06S(1:3,1:3)
% [t_l,t_t,t_r] = getAngle(r06)
% x=m06S(1,4)
% y=m06S(2,4)
% z=m06S(3,4)

%%ex2 04
w0 = [0; 0; 0]
v0 = [ 0 ;0 ;0]


m0=eye(3,3)
m1=simplify(m01*m12)

w1=w0 + m0(1:3,1:3)*[0 ;0 ;dt1]
v1=v0+cross( w1 ,m0(1:3,1:3)*m01(1:3,4))


w2=w1 + m1(1:3,1:3)*[0 ;0 ;dt2]
v2=v1+cross( w2 ,m01(1:3,1:3)*m1(1:3,4))
%%presmatic


for i=1:6
    w1=w0 + m0(1:3,1:3)*w0.'
    v1=v0+cross(m0(1:3,1:3),w1.')*m0(1:3,4)


end





    
