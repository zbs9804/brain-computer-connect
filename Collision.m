function Game_matrix = Collision(Game_matrix,Operation)
% Combine two same numbers
% Combine two same numbers in certain direction {0:'up',1:'down',3:''}
    Game_matrix=Change_direction(Game_matrix,Operation);

    for j = 1:size(Game_matrix,2)
        for i = 1:size(Game_matrix,1)-1
            if Game_matrix(i,j)~=0&&Game_matrix(i,j)==Game_matrix(i+1,j)
                Game_matrix(i,j)=Game_matrix(i,j)*2;
                Game_matrix(i+1,j)=0;
            end
        end
    end    
    Game_matrix=Restore_direction(Game_matrix,Operation);
end