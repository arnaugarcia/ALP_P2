% Andres Martinez
% Sergi Vidal
% Arnau Garcia

% Ver MatrizDeIncidencia.jpg para entender el funcionamiento de las aristas
% y los nodos
clc
clear
choice = menu('Choose a ciruit to resolve', 1, 2, 3, 4);
switch choice
    case 1
        % Matrix de incidencia del circuito 1
        D = [-1 0; 1 -1; 0 1];
        % Vectores de resistencias de las artistas
        r = [2 1];
        % Intensidad de corriente exterior del circuito
        Iext = 3;
       
    case 2
        % Matrix de incidencia del circuito 1
        D = [-1 -1 -1 0 0 0; 1 0 0 -1 -1 0; 0 1 0 1 0 -1; 0 0 1 0 1 1];
        % Vectores de resistencias de las artistas
        r = [1 1 1 1 1 1];
        % Intensidad de corriente exterior del circuito
        Iext = 1;

    case 3
        % Matrix de incidencia del circuito 1
        D = [-1 -1 -1 0 0 0; 1 0 0 -1 -1 0; 0 1 0 1 0 -1; 0 0 1 0 1 1];
        % Vectores de resistencias de las artistas
        r = [2 2 3 2 1 1];
        % Intensidad de corriente exterior del circuito
        Iext = 2;
    case 4
            % Matrix de incidencia del circuito 1
        D = [-1 -1 -1 -1 0 0 0 0 0 0 0 0;
            1 0 0 0 -1 0 0 -1 -1 0 0 0;
            0 1 0 0 1 -1 0 0 0 -1 0 0;
            0 0 0 1 0 1 -1 0 0 0 0 -1
            0 0 1 0 0 0 1 1 0 0 -1 0
            0 0 0 0 0 0 0 0 1 1 1 1];
        % Vectores de resistencias de las artistas
        r = [1 1 1 1 1 1 1 1 1 1 1 1];
        % Intensidad de corriente exterior del circuito
        Iext = 1;
end

[R, Volt, Iint] = resistencia_graf(D, r, Iext)

