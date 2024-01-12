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
if n==1
    disp("Voltaje: ");
    disp("V=R*I");
    R=input("Coloque la resistencia");
    I=input("Coloque la corriente");
    V=R*I;
    disp(V+"Volts");
elseif n==2
    disp("Resistencia: ");
    disp("R=V/I")
    V=input("Coloque el voltaje: ");
    I=input("Coloque la corriente: ");
    R=V/I;
    disp(R+"Ohms");
elseif n==3
    disp("Corriente");
    disp("I=V/R");
    V=input("Coloque el voltaje: ");
    R=input("Coloque la resistencia: ");
    I=V/R;
    disp(I+"A");
end
    
    