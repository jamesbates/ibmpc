      program primes
C  Calculates, and outputs all prime numbers < 256

      integer*2 prmct
      integer*2 prms(128)
      common prmct, prms

      integer*2 cand
      logical isprm

      call wrprm (2)

      prmct = 0
      do 10 cand = 3, 255, 2
          if ( isprm (cand) ) then
              prmct = prmct + 1
              prms(prmct) = cand
              call wrprm (cand)
          end if
   10 continue
      end

      logical function isprm (p)
C     Checks if a number is prime.
      integer*2 p

      integer*2 prmct
      integer*2 prms(128)
      common prmct, prms

      integer*2 pidx

      do 20 pidx = 1, prmct
          if ( prms(pidx) .gt. 15 ) then
              go to 20
          end if
          if ( mod ( p, prms(pidx) ) .eq. 0 ) then
              isprm = .false.
              return
          end if
   20 continue
      isprm = .true.
      return
      end

      subroutine wrprm(p)
C     Prints out a newly found prime number
      integer*2 p

      write (*,'(A,I3)') ' Next prime number: ',p
      end
