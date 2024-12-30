var
    h1,h2:text;
    n,m,i:integer;
    arr:array of char;

begin
    assign(h1,'JUMP.INP');
    assign(h2,'JUMP.OUT');
    reset(h1);
    rewrite(h2);

    readln(h1,n,m);
    for i:= 1 to m do
    begin
        read(h1,arr[i]);
    end;

    close(h1);
    close(h2);
end.