% Andres Martinez
% Sergi Vidal
% Arnau Garcia

function [R, Volt, Iint] = resistencia_graf(D, r, Iext)
        % Inversa
        % si multipliquen una matriu per la seva inversa conseguirem la seva identitat
        id = [1\r; 2\r];
        
        % Getting the row size of the matrix
        sizeMatrix = size(D, 1);
        
        Ax = [id, D'; D, zeros(sizeMatrix)];
        
        R = sum(r);
        Volt = 1;
        Iint = 3;
end