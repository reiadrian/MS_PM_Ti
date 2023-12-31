function [Kelem,Felem] = f_Expand(Ke,Fe,dofpe)

% Ordena la matriz de rigidez elementales

Kelem = zeros(dofpe,dofpe);
Kcol  = zeros(dofpe,dofpe);

% Intercambio de COLUMNAS
Kcol(:,1) = Ke(:,1);
Kcol(:,2) = Ke(:,2);
Kcol(:,3) = Ke(:,17);
Kcol(:,4) = Ke(:,3);
Kcol(:,5) = Ke(:,4);
Kcol(:,6) = Ke(:,18);
Kcol(:,7) = Ke(:,5);
Kcol(:,8) = Ke(:,6);
Kcol(:,9) = Ke(:,19);
Kcol(:,10) = Ke(:,7);
Kcol(:,11) = Ke(:,8);
Kcol(:,12) = Ke(:,20);
Kcol(:,13) = Ke(:,9);
Kcol(:,14) = Ke(:,10);
Kcol(:,15) = Ke(:,21);
Kcol(:,16) = Ke(:,11);
Kcol(:,17) = Ke(:,12);
Kcol(:,18) = Ke(:,22);
Kcol(:,19) = Ke(:,13);
Kcol(:,20) = Ke(:,14);
Kcol(:,21) = Ke(:,23);
Kcol(:,22) = Ke(:,15);
Kcol(:,23) = Ke(:,16);
Kcol(:,24) = Ke(:,24);
if dofpe==25
    Kcol(:,25) = Ke(:,25);
elseif dofpe==26
    Kcol(:,25) = Ke(:,25);
    Kcol(:,26) = Ke(:,26);
elseif dofpe==27
    Kcol(:,25) = Ke(:,25);
    Kcol(:,26) = Ke(:,26);
    Kcol(:,27) = Ke(:,27);
end

% Intercambio de FILAS
Kelem(1,:) = Kcol(1 ,:);
Kelem(2,:) = Kcol(2 ,:);
Kelem(3,:) = Kcol(17,:);
Kelem(4,:) = Kcol(3,:);
Kelem(5,:) = Kcol(4,:);
Kelem(6,:) = Kcol(18,:);
Kelem(7,:) = Kcol(5,:);
Kelem(8,:) = Kcol(6,:);
Kelem(9,:) = Kcol(19,:);
Kelem(10,:) = Kcol(7,:);
Kelem(11,:) = Kcol(8,:);
Kelem(12,:) = Kcol(20,:);
Kelem(13,:) = Kcol(9,:);
Kelem(14,:) = Kcol(10,:);
Kelem(15,:) = Kcol(21,:);
Kelem(16,:) = Kcol(11,:);
Kelem(17,:) = Kcol(12,:);
Kelem(18,:) = Kcol(22,:);
Kelem(19,:) = Kcol(13,:);
Kelem(20,:) = Kcol(14,:);
Kelem(21,:) = Kcol(23,:);
Kelem(22,:) = Kcol(15,:);
Kelem(23,:) = Kcol(16,:);
Kelem(24,:) = Kcol(24,:);
if dofpe==25
    Kelem(25,:) = Kcol(25,:);
elseif dofpe==26
    Kelem(25,:) = Kcol(25,:);
    Kelem(26,:) = Kcol(26,:);
elseif dofpe==27
    Kelem(25,:) = Kcol(25,:);
    Kelem(26,:) = Kcol(26,:);
    Kelem(27,:) = Kcol(27,:);
end

% Ordena el vector de fuerzas internas elemental

Felem = zeros(dofpe,1);

% Intercambio de FILAS
Felem(1,1) = Fe(1 ,1);
Felem(2,1) = Fe(2 ,1);
Felem(3,1) = Fe(17,1);
Felem(4,1) = Fe(3,1);
Felem(5,1) = Fe(4,1);
Felem(6,1) = Fe(18,1);
Felem(7,1) = Fe(5,1);
Felem(8,1) = Fe(6,1);
Felem(9,1) = Fe(19,1);
Felem(10,1) = Fe(7,1);
Felem(11,1) = Fe(8,1);
Felem(12,1) = Fe(20,1);
Felem(13,1) = Fe(9,1);
Felem(14,1) = Fe(10,1);
Felem(15,1) = Fe(21,1);
Felem(16,1) = Fe(11,1);
Felem(17,1) = Fe(12,1);
Felem(18,1) = Fe(22,1);
Felem(19,1) = Fe(13,1);
Felem(20,1) = Fe(14,1);
Felem(21,1) = Fe(23,1);
Felem(22,1) = Fe(15,1);
Felem(23,1) = Fe(16,1);
Felem(24,1) = Fe(24,1);
if dofpe==25
    Felem(25,:) = Fe(25,1);
elseif dofpe==26
    Felem(25,:) = Fe(25,1);
    Felem(26,:) = Fe(26,1);
elseif dofpe==27
    Felem(25,:) = Fe(25,1);
    Felem(26,:) = Fe(26,1);
    Felem(27,:) = Fe(27,1);
end