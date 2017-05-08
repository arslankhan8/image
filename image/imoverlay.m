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
