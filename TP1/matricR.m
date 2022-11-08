function [matrice_r]= matricR(theta_r,theta_t,theta_l)

   
    matrice_r = matricZ(theta_l)*matricY(theta_t)*matricX(theta_r);
    
end