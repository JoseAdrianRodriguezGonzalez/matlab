%licencia de conducir
%edad=input("Escriba su edad: ");

%if edad>=18 && edad<70
 %   disp("Puede tener permiso");
%elseif edad>=70
 %       disp("requiere un permiso especial");
%else 
 %   disp("No puede tener permiso");
%end
disp("Ley de ohm");
disp("V=R*I");
disp("Elija lo que quiere calcular");
disp("1 Voltaje");
disp("2 Resistencia");
disp("3 Corriente");
n=input("Dame un numero");
switch n
    case 1
        disp("Voltaje");
        R=input("Valor de resistencia");
        I=input("Valor de la corriente");
        V=R*I;
        disp(V);
    case 2
        disp("Resistencia")
        V=input("Valor deL voltaje");
        I=input("Valor de la corriente");
        R=V/I;
        disp(R);
    case 3 
        disp("Corriente");
        V=input("Valor de voltaje");
        R=input("Valor de la corriente");
        I=V/R;
        disp(I);
end