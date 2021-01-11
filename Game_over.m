function Game_over = Game_over(Game_matrix,Operation)
% Perform the Operation in the game
% Perform the Operation to the Game_matrix in certain direction {0:'up',1:'down',3:''}
    Game_over=true;
    
    for j = 1:size(Game_matrix,2)
        for i = 1:size(Game_matrix,1)-1
            if Game_matrix(i,j)==0||Game_matrix(i,j)==Game_matrix(i+1,j)
                Game_over=false;
            end
        end
    end  
    Game_matrix=rot90(Game_matrix); 
    for j= 1:size(Game_matrix,2)
        for i = 1:size(Game_matrix,1)-1
            if Game_matrix(i,j)==0||Game_matrix(i,j)==Game_matrix(i+1,j)
                Game_over=false;
            end
        end
    end 
end