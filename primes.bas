 10 dim primes(128)
 20 let primecount=0
 30 print "Next prime: " 2
 40 for candidate=3 to 255 step 2
 50   if primecount < 1 then goto 100
 60   for i=1 to primecount
 70     if primes(i) >16 then goto 100
 80     if (candidate mod primes(i))=0 then goto 130
 90   next i
100   let primecount=primecount+1
110   let primes(primecount)=candidate
120   print "Next prime: " candidate
130 next candidate
140 end
