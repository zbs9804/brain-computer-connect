function Game_matrix = Restore_direction(Game_matrix,Operation)
% Restore the oreintation of Game_matrix 
    Direction=struct('up',0,'left',1,'down',2,'right',3);

    for i = 1:Direction.(Operation)
        Game_matrix=rot90(Game_matrix);
    end

end