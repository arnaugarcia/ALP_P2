% Andres Martinez
% Sergi Vidal
% Arnau Garcia

function [R, Volt, Iint] = resistencia_graf(D, r, Iext)
        
        % Getting the row size of the matrix
        sizeMatrix = size(D, 1);
        
        identity = D * pinv(D);
        
        Ax = [identity, D'; D, zeros(sizeMatrix)];
        
        R = sum(r);
        Volt = 1;
        Iint = 3;
end