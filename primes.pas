program primes(output);
{ Shows all primes numbers between 1 and 255 }

var
  prime_count:integer;
  primes:array[1..128] of integer;

  candidate:integer;

function is_prime(candidate:integer):boolean;
{ checks whether candidate is prime }

var
  index:integer;

begin
  for index:=1 to prime_count do
  begin
    if primes[index]>=16 then
      break;
    if (candidate mod primes[index])=0 then
    begin
      is_prime:=false;
      return;
    end;
  end;
  is_prime:=true;
end;

procedure write_prime(prime:integer);
{ prints out a message, informing that a new prime number was found. }

begin
  writeln('Next prime number: ',prime);
end;

begin
  prime_count:=0;
  write_prime(2);
  candidate:=3;
  while candidate < 256 do
  begin
    if is_prime(candidate) then
    begin
      prime_count:=prime_count+1;
      primes[prime_count]:=candidate;
      write_prime(candidate);
    end;
    candidate:=candidate+2;
  end;
end.
