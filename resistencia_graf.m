% Andres Martinez
% Sergi Vidal
% Arnau Garcia

function [R, Volt, Iint] = resistencia_graf(D, r, Iext)
        
        % Getting the row size of the matrix
        [rows, columns] = size(r);
        
        sizeOrientedMatrix = size(D);
        
        Dt = transpose(D);
        Id = eye(columns);
        
        zerosMatrix = zeros(sizeOrientedMatrix);
        
        A = [r * Id, Dt; D, zerosMatrix];
        
        
        
end