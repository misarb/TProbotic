
clear all
clc
%% global homogine matrice 
syms t t1 t2  t4 t5 t6 l0 l1 l2 d3 a d alphm dt1 dt2 dt3 dt4 dt5 dt6
m = matricHomgDenavit(t,alphm,a,d);
m01 = subs (m,{t,alphm,a,d},{t1,-pi/2,0,l0});
m12 = subs (m,{t,alphm,a,d},{t2,pi/2,0,l1});
m23 = subs (m,{t,alphm,a,d},{0,0,0,d3});
m34 = subs (m,{t,alphm,a,d},{t4,-pi/2,0,0});
m45 = subs (m,{t,alphm,a,d},{t5-pi/2,pi/2,0,0});
m56 = subs (m,{t,alphm,a,d},{t6,0,0,l2});

%%initiaalitation
w0 = [0; 0; 0];
v0 = [ 0 ;0 ;0];
m00=eye(3,3);
m01=simplify(m01*m12);
m02=simplify(m01*m12*m23);
m03=simplify(m01*m12*m23*m34);
m04=simplify(m01*m12*m23*m34*m45);
m05=simplify(m01*m12*m23*m34*m45*m56);

%% start calculation of wi and vi
for i=1:5
    eval(sprintf('w%d=w%d+m0%d(1:3,1:3)*[0 ;0 ;dt%i]', i,i-1,i-1,i));
    
    eval(sprintf('v%d=v%d+cross( w%d ,m0%d(1:3,1:3)*m0%d(1:3,4))', i,i-1,i,i-1,i));
    % if i==3
    %     eval(sprintf('w%d=w%d', i,i-1));
    %     eval(sprintf('v%d=v%d+m0%d.*dt%d+cross( w%d ,m0%d(1:3,1:3)*m0%d(1:3,4))', i,i-1,i,i,i,i,i));

        
    % end

end





    
