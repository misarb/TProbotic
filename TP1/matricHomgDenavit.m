%% Transformation Matrices
function [matrice] = matricHomgDenavit(theta,alphm,a,d)


    m = [cos(theta) -sin(theta)*cos(alphm) sin(theta)*cos(alphm)  a*cos(theta);...
        sin(theta) cos(theta)*cos(alphm) -cos(theta)*sin(alphm)  a*sin(theta);...
        0  sin(alphm)  cos(alphm) d;...
        0 0 0 1];
    
end



   