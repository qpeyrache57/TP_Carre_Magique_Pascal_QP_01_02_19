program carre_mag_proc;

uses crt;

      CONST
      Tmax=11;

      VAR
      n, count, i,j: integer;
      cell:array[1..Tmax,1..Tmax] of integer;

      PROCEDURE Affichage;
      VAR
      i,j:integer;
      BEGIN
         for i:=1 to Tmax do
         begin
           for j:=1 to Tmax do
           begin
             write(cell[i,j]:2,' ');
           end;
           writeln;
         end;
      END;


      PROCEDURE Placement;

      BEGIN
      n:=1;
      i:=Tmax div 2;
      j:=Tmax div 2+1;
      cell[i,j]:=n;

      for count:=1 to((Tmax*Tmax)-1) do
      begin
      n:=n+1;
      i:=i-1;
      j:=j+1;

       if i<1 then
          i:=Tmax;
       if j<1 then
          j:=Tmax;
       if i>Tmax then
          i:=1;
       if j>Tmax then
          j:=1;

        while cell[i,j]<>0 do
        begin
          i:=i-1;
          j:=j-1;

          if i<1 then
             i:=Tmax;
          if j<1 then
             j:=Tmax;
          if i>Tmax then
             i:=1;
          if j> Tmax then
             j:=1;
          end;
        cell[i,j]:=n;
      end;
END;


      PROCEDURE Depart(Tmax:integer;n:integer);
VAR
i,j:integer;


BEGIN
n:=1;
 for i:=1 to Tmax do
 begin
   for j:=1 to Tmax do
   begin
     cell[i,j]:=0;
   end;
 end;
END;


BEGIN
clrscr;
Placement;
Affichage;

readln;
END.

