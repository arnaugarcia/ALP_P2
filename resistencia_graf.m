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
       
                                
        A = [rId, Dt; D, zerosMatrix; intensityVector, voltsVector];
        
        b = [zeros(1, columns) -Iext zeros(size(D, 1) - 2, 1) Iext 0]
        
        result = b.'\A
        
        R = 0;
        Volt = 1;
        Iint = 0;
        
end