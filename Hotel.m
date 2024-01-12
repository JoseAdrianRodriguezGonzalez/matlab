%Hotel
disp("Hotel Trevi");
disp("En el hotel existe una serie de habitaciones");
disp("1.-Habitaion roja1");
disp("2.-Habitaion Azul");
disp("3.-Habitaion rosa");
disp("4.-Habitaion gris");
n=input("Seleccione la habitación que te guste: ");
switch (n)
    case 1
        disp("Esta habitacion cuenta con: ");
        disp("Wifi");
        disp("bañera");
        disp("dos camas");
        disp("televisor");
        disp("balcon");
        disp("Precio: 2100 pesos la noche");
    case 2
        disp("Esta habitacion esta en reparaciones hasta nuevo aviso");
    case 3
        disp("Esta  habitacion cuenta con: ");
        disp("Cuenta con 3 camas");
        disp("Mirador");
        disp("televisor");
        disp("yakusi");
        disp("wifi");
        disp("baño extenso");
        disp("Precio: 10000 pesos la noche");
    case 4
        disp("Esta habitacion esta ocupada");
    otherwise
        disp("No existe esa habitacion");
    pregunta=input("Desea hacer otro calculo? 0/si 1/no");
    if pregunta==0
        Hotel
    end
end