%newton_raphson.m
%Author: Wendy Barcenas
%Fecha: Aug 14, 2020
%Notas: Programa para el metodo Newton Raphson

clear,clc
f = input('f(x)= ', 's'); % 's' es para ya no poner los ''
sf = str2sym(f);          %convierte la funcion a sf para poder graficarla o derivar  
ezplot(sf);               %se grafica la funcion

tol = input('tolerancia del metodo = ');
x0 = input('valor inicial = ');

v = symvar(sf);
f1 = diff(sf); %calcula la primera derivada 

sw = 0; % variable bandera (bolelana 0,1)
while (sw==0)%mientras sw==0 entra
 x1 = x0 - ( subs(sf, v, x0) / subs (f1, v, x0));
 if abs(x0 - x1) > tol
 x0 = x1;
 sw=0;

 else
 sw =1;% se ponen sw=1 para salir del ciclo
 end
 
end
vpa(x1); %desplegar el valor de x1