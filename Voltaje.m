%José Adrián Rodríguez González
%Ley de ohm en forma de menú
disp("Ley de ohm");
disp("V=R*I");
disp("Elija lo que quiere calcular");
disp("1 Voltaje");
disp("2 Resistencia");
disp("3 Corriente");
%Menú
n=input("Dame un numero: ");
switch n
%Voltaje
    case 1
        disp("Voltaje");
        disp("V=R*I");
        R=input("Valor de resistencia: ");
        I=input("Valor de la corriente: ");
        V=R*I;
        disp(V+" v");
%Resistencia
     case 2
        disp("Resistencia")
        disp("R=V/I");
        V=input("Valor del voltaje: ");
        I=input("Valor de la corriente: ");
        R=V/I;
        disp(R+" Ohms");
%Corriente
    case 3 
        disp("Corriente");
        disp("I=V/R");
        V=input("Valor de voltaje: ");
        R=input("Valor de la resistencia: ");
        I=V/R;
        disp(I +" A");
end