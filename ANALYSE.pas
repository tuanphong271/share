var
    h1,h2:text;
    i,j,SUM,k:longint;
begin
    assign(h1,'ANALYSE.INP');
    assign(h2,'ANALYSE.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,i,j);
    for k:= 1 to ROUND(SQRT(i)) do
    begin
        if i MOD k = 0 then sum:= sum + k + (i DIV k);
    end;

    for k:= 1 to ROUND(SQRT(j)) do
    begin
        if j MOD k = 0 then sum:= sum + k + (j DIV k);
    end;

    write(h2,sum);
    close(h1);
    close(h2);
end.
