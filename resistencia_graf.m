% Andres Martinez
% Sergi Vidal
% Arnau Garcia

function [R, Volt, Iint] = resistencia_graf(D, r, Iext)
   Ax = [r * eye(r) D'; D zeros(r)];
   R = 1;
   Volt = 2;
   Iint = 3;
end