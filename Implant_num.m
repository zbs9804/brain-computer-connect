function Game_matrix = Implant_num(Game_matrix,Amount2,Amount4)
% Implant numbers into blank slots in Game_matrix
% Ramdonly implant Amount2 amount of "2" and Amount4 amount of "4" into blank slots in Game_matrix

    Index = find(Game_matrix == 0);
    if length(Index)<Amount2
        Amount2=length(Index);
    end
    Implant_index = randperm(length(Index),Amount2);
    Game_matrix(Index(Implant_index)) = 2;

    Index = find(Game_matrix == 0);
    if length(Index)<Amount4
        Amount4=length(Index);
    end
    Implant_index = randperm(length(Index),Amount4);
    Game_matrix(Index(Implant_index)) = 4;

end