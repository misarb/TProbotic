function [theta_l,theta_t,theta_r] = getAngle(mR)
    theta_t = atan2(-mR(3,1),sqrt(mR(1,1).^2 + mR(2,1).^2));
    theta_r = atan2(mR(3,2)/cos(theta_t),mR(3,3)/cos(theta_t));
    theta_l = atan2(mR(2,1)/cos(theta_t),mR(1,1)/cos(theta_t));
end