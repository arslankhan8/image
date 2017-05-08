function clr_vec = strtoclr(color)
        if (strcmp('red',color))
           clr_vec = [255;0;0];
        elseif (strcmp('blue',color))
           clr_vec = [0;0;255];
        elseif (strcmp('green',color))
           clr_vec = [0;255;0];
        else
           printf('Unkown Color Valeu \n');
           printf('You can add this color to strtoclr.m \n');
        end
endfunction
