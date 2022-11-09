%% Transformation Matrices
function [matrice] = matricHomgDenavit(mR,t)


matrice = [mR(1,1) mR(1,2) mR(1,3) t(1) ;mR(2,1) mR(2,2) mR(2,3) t(2) ;mR(3,1) mR(3,2) mR(3,3) t(3) ; 0 0 0 1];
    
end



   