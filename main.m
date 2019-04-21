% Andres Martinez
% Sergi Vidal
% Arnau Garcia

% Ver MatrizDeIncidencia.jpg para entender el funcionamiento de las aristas
% y los nodos

% choice = menu('Choose a ciruit to resolve', '1', '2', '3');
choice = 1;
switch choice
    case 1
        D = [-1 0; 1 -1; 0 1];
        rA = [1, 1];
        AIext = 1;
        % p = single([1 ; 1]);
        identity = eye(size(rA),'like',rA);
        % Ax = [rA * eye(2), D'; D, zeros(2)];
    case 2
        % Choise 2
    case 3
        % Choise 3
end