% Andres Martinez
% Sergi Vidal
% Arnau Garcia

function [R, Volt, Iint] = resistencia_graf(D, r, Iext)
        % Getting the row size of the matrix
        % TODO: rows = size(r, 1)
        [rows, columns] = size(r);
        
        D
        
        sizeOrientedMatrix = size(D, 1);
        
        Dt = transpose(D)
        Id = eye(columns)
        
        % Se multiplica el vector de resistencias por su identidad
        % .* por cada columna
        rId = r .* Id
        
        zerosMatrix = zeros(sizeOrientedMatrix)
        
        %A = [rId, Dt; D, zerosMatrix];
        
        R = 0;
        Volt = 1;
        Iint = 0;
        
end