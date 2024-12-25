var
    h1,h2:text;
    arr:array[1..100000] of char;
    ch:array['A'..'Z'] of byte;
    M,T,U,F,D,i:longint;
    count:integer;
    N:integer;

begin
    assign(h1,'MARATHON.INP');
    assign(h2,'MARATHON.OUT');
    reset(h1);
    rewrite(h2);

    read(h1,M,T,U,F,D);
    readln(h1);
    for i:= 1 to T do
    begin
        readln(h1,arr[i]);
    end;

    N:= 0;
    i:= 1;
    count:= 1;

    if arr[i] = 'U'
    then N:= U else
    if arr[i] = 'F'
    then N:= F else
    N:= D;

    while M - N > 0 do
    begin

        INC(i);
        if count MOD 2= 1 then
        begin
            if arr[i] = 'U'
            then N:= U else
            if arr[i] = 'F'
            then N:= F else
            N:= D;
        end else
        begin
            if arr[i] = 'U'
            then N:= D else
            if arr[i] = 'F'
            then N:= F else
            N:= U;
        end;

        M:= M - N;
        INC(ch[arr[i]]);
        if i = t then
        begin
            INC(count);
            i:= 0;
        end;
    end;

    count:= ch['U'];
    if count < ch['D'] then count:= ch['D']
    else if count < ch['F'] then count:= ch['F'];
    write(h2,count);
    close(h1);
    close(h2);
end.


















