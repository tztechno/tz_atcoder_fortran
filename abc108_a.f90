abc108_a.f90
##############################################
##############################################
##############################################
##############################################
program sample
	implicit none
    integer(8) :: i,j,k,l,m
    read(*,*) i
    if (mod(i,2)==0) then
    	write(*,*) (i/2)**2
    else
    	write(*,*) ((i+1)/2)*(i/2)
    end if
    stop
end program sample
##############################################
program atcoder
    implicit none
    integer :: a
    read(*,*) a
    write(*,*) (a/2) * (a-a/2)
end program atcoder 
##############################################
program main
implicit none
integer :: n,ans
read(*,*) n
ans = (n/2)*((n+1)/2)
write(*,*) ans
end program
##############################################
[python]
N=int(input())
print((N//2)*((N+1)//2))
##############################################
