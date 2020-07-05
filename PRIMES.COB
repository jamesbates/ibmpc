       identification division.
       program-id. primes.
  
       environment division.
 
       data division.
       working-storage section.
       01 primes-data.
         02 prime-count picture 999.
         02 prime-index picture 999.
         02 primes occurs 128 times picture 999.
         02 candidate picture 999.

       01 scratch.
         02 remainder picture 999.
         02 quotient picture 999.
         02 display-prime picture ZZ9.
 
       procedure division.
       begin.
           move 2 to display-prime.
           perform sayprime 1 times.
           move 0 to prime-count.
           perform checkprime varying candidate from 3 by 2
               until candidate > 255.
           stop run.

       checkprime.
           move 1 to remainder.
           perform trydivide varying prime-index from 1 by 1
               until remainder = 0
               or prime-index > prime-count
               or primes (prime-index) > 15.
           if remainder not = 0 perform foundprime 1 times.

       trydivide.
           compute quotient = candidate / primes (prime-index).
           compute remainder = candidate
               - quotient * primes (prime-index).

       foundprime.
           add 1 to prime-count.
           move candidate to primes (prime-count).
           move candidate to display-prime.
           perform sayprime 1 times.

       sayprime.
           display "Next prime number: " display-prime.
