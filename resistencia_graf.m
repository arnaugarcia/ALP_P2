% Andres Martinez
% Sergi Vidal
% Arnau Garcia

function [R, Volt, Iint] = resistencia_graf(D, r, Iext)

        % Getting the row size of the matrix
        % TODO: rows = size(r, 1)
        [rows, columns] = size(r);
        
        sizeOrientedMatrix = size(D, 1);
        
        Dt = transpose(D);
        Id = eye(columns);
        
        % Se multiplica el vector de resistencias por su identidad
        % .* por cada columna
        rId = r .* Id;
        
        zerosMatrix = zeros(sizeOrientedMatrix);
        
        % Creamos el vector para la columna de las resistencias
        intensityVector = zeros(1, columns);
        voltsVector = zeros(1, sizeOrientedMatrix);
        
        voltsVector(1, 1) = 1;
       
                                
        A = [rId, Dt; D, zerosMatrix; intensityVector, voltsVector]
        
        intensityZeros = zeros(1, columns);
        voltZeros = transpose(zeros(size(D, 1) - 2, 1));
        
        b = [intensityZeros -Iext voltZeros Iext 0]
        
        result = A\b.';
        
        Volt = result(columns + 1: end, 1);
        Iint = result(1:columns,1);
        R = abs(result(end)) / Iext;
        
end