% Andres Martinez
% Sergi Vidal
% Arnau Garcia

% Ver MatrizDeIncidencia.jpg para entender el funcionamiento de las aristas
% y los nodos

% choice = menu('Choose a ciruit to resolve', '1', '2', '3');
clear
choice = 1;
switch choice
    case 1
        % Matrix de incidencia del circuito 1
        AD = [-1 0; 1 -1; 0 1];
        % Vectores de resistencias de las artistas
        Ar = [1, 1];
        % Intensidad de corriente exterior del circuito
        AIext = 1;
        % Inversa
        % si multipliquen una matriu per la seva inversa conseguirem la seva identitat
        id = [Ar(:, end)\Ar; 1\Ar];
        
        % Getting the column size of the matrix
        size = size(AD, 1);
        
        Ax = [id, AD'; AD, zeros(size)];
        % resistencia_graf(AD, Ar, AIext);
    case 2
        % Choise 2
    case 3
        % Choise 3
end