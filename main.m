% Andres Martinez
% Sergi Vidal
% Arnau Garcia

% Ver MatrizDeIncidencia.jpg para entender el funcionamiento de las aristas
% y los nodos

A = [-1 0; 1 -1; 0 1];
choice = menu('Choose a ciruit to resolve', '1', '2', '3');
switch choice
    case 1
        result = resistencia_graf(A, 2, 1);
    case 2
        % Choise 2
    case 3
        % Choise 3
end