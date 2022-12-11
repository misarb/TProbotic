% clear all;
% clc;
% w0=0
% m0=eye(3,3)
% % v0=0
% 
% % for i=1:3
% %     eval(['w' num2str(i) '= eval(['w' num2str(i-1) '= i']) ;'])
% %     pause(1);
% %     eval(['v' num2str(i) '= eval(['v' num2str(i) '= i']);'])
% % end
% 
% for i=1:2
%     eval(sprintf('w%d=w%d+m0(1:3,1:3)*[0;0;1]', i,i-1));
% end
syms t alphm d a l t1 t2 t3 t4
m = [cos(t) -sin(t)*cos(alphm) sin(t)*sin(alphm)  a*cos(t);...
    sin(t) cos(t)*cos(alphm) -cos(t)*sin(alphm)  a*sin(t);...
    0  sin(alphm)  cos(alphm) d;...
    0 0 0 1];
M01 = subs (m,{t,alphm,a,d},{0,pi/2,0,0});
M12 = subs (m,{t,alphm,a,d},{t2,0,-l,0});
M23 = subs (m,{t,alphm,a,d},{t3+pi/2,0,-l,0});
M34 = subs (m,{t,alphm,a,d},{t4-pi/2,0,-l,0});
m01=simplify(M01)
m12=simplify(M12)
m23=simplify(M23)
m34=simplify(M34)
m04 = simplify(M01*M12*M23*M34)
%m03 = simplify(m01*m12*m23)