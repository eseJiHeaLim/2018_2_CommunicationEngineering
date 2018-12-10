function result=h_decoding(v,p)
[x,y]=size(v);
[i,j]=size(p);
H_t=[p;eye(j)];

s=mod(v*H_t,2);
find = 0;
n=y;

for ii = 1:n
    if ~find
        errvect = zeros(1,n);
        errvect(ii) = 1;
        search = mod(errvect * H_t,2);
        if search == s
            find = 1;
            index = ii;
        end
    end
end

disp(['Position of error in codeword=',num2str(index)]);

v(index)=mod(~v(index),2);
show_num=y-j;
result=v(1:show_num)

end