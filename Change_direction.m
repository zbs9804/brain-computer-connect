function Game_matrix = Change_direction(Game_matrix,Operation)
% Rotate the Game_matrix 
    Direction=struct('up',0,'left',3,'down',2,'right',1);

    for i = 1:Direction.(Operation)
        Game_matrix=rot90(Game_matrix);
    end

end