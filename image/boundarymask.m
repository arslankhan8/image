function boundary = boundarymask(img)
lastpixel=img(1,1);
boundary = img;

for ii=1:size(img,1)
    for jj=1:size(img,2)
        % get pixel value
        new_pixel=img(ii,jj);

          % check pixel value and assign new value
          if new_pixel!=lastpixel
               boundary(ii,jj)=255;
          else
               boundary(ii,jj)=0;
          end
        lastpixel = new_pixel;
     end
end

endfunction

function boundary = boundarymaskcolor(img,color)
boundary = img;

for ii=1:size(img,1)
   lastpixel=img(ii,1);
    for jj=1:size(img,2)
        % get pixel value
        new_pixel=img(ii,jj);

          % check pixel value and assign new value
          if new_pixel!=lastpixel
               boundary(ii,jj)=color;
          else
               boundary(ii,jj)=0;
          end
        lastpixel = new_pixel;
     end
end

endfunction

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

function overlay = imoverlay(img,boundary,color)
overlay=img;
for ii=1:size(img,1)
    for jj=1:size(img,2)

          % check pixel value and assign new value
          if boundary(ii,jj)
               overlay(ii,jj,:)=color;
          else
               overlay(ii,jj)=img(ii,jj);
               
          end
     end
end

endfunction
