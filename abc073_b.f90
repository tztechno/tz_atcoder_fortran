abc073_b.f90
#######################################
integer :: n, i, l, r, ans
do i = 1, n
#######################################
#######################################
#######################################
#######################################
IMPLICIT NONE
INTEGER :: I, N, L, R, NUM = 0
READ*, N
DO I = 1, N
    READ*, L, R
    NUM = NUM + R - L + 1
END DO
PRINT*, NUM
END
#######################################
INTEGER N,L,R,A
READ*,N
A=0
DO I=1,N
  READ*,L,R
  A=A+(R-L+1)
END DO
PRINT"(I0)",A
END
#######################################
program main
	implicit none
	integer :: n, i, l, r, ans
	read(*,*) n
	ans = 0
    do i = 1, n
		read(*,*) l,r
        ans=ans+r-l+1
	end do
	write(*,*) ans
end program main
#######################################
