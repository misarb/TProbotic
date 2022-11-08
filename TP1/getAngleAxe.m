function [theta,h] = getAngleAxe(mR)
    theta = acos((mR(1,1)+mR(2,2)+mR(3,3)-1)/2);
    h= 1/(2*sin(theta)).*[(mR(3,2)-mR(2,3)) (mR(1,3)-mR(3,1)) (mR(2,1)-mR(1,2)) ];
    
end