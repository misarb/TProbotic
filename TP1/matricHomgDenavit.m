%% Transformation Matrices
function [matrice] = matricHomgDenavit(t,alphm,a,d)


    m = [cos(t) -sin(t)*cos(alphm) sin(t)*sin(alphm)  a*cos(t);...
    sin(t) cos(t)*cos(alphm) -cos(t)*sin(alphm)  a*sin(t);...
    0  sin(alphm)  cos(alphm) d;...
    0 0 0 1];
    matrice=simplify(m);
end



   