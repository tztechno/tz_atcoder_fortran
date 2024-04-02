abc068_b.f90
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
program main
	implicit none
	integer N, i, ans
	read(*, *) N
	do i = 0, 6
		if(2**i <= N) then
			ans = 2**i
		end if
	end do
	write(*, *) ans
end program main
#########################################
program solve
    implicit none
    integer::n, i
    read*, n
    do i = 1, 10
        if(2**i > n .and. 2**(i-1) <= n) then
            print'(i0)', 2**(i-1)
            stop
        end if
    end do
end
#########################################
PROGRAM main
  IMPLICIT NONE
  INTEGER :: n
  INTEGER :: ans
  INTEGER :: i

  READ(*,*) n
  ans = 0
  DO i = 0, n
    IF (2**i <= n) THEN
      ans = 2**i
    ELSE
      EXIT
    END IF
  END DO
  WRITE(*,*) ans
  
END PROGRAM main
#########################################
