function dark_channel = Darkchannel(img,r)
%% Get Dark Channel

[m,n,d] = size(img); 
dark_channel = zeros(m,n);
p = floor(r/2); %r patch size 
img1 = padarray(img,[p,p],Inf);
    for i = 1:m
        for j = 1:n
             patch = img1(i:i+r-1,j:j+r-1,:);
             dark_channel(i,j) = min(patch(:)); %A(:)是由所有A中的元素生成的向量
        end
    end
