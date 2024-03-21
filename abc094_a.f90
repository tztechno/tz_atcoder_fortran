//abc094_a.f90
####################################
####################################
####################################
####################################
####################################
####################################
program test
implicit none
integer :: a,b,x
read(*,*) a,b,x
if(x >= a .and. x <= a+b ) then
  write(*,*) "YES"
else
  write(*,*) "NO"
endif

end program
####################################
integer a,b,x
read*,a,b,x
if(x<a.or.a+b<x)then
	print"(A)","NO"
else
	print"(A)","YES"
endif
end
####################################
implicit none
integer :: a,b,x
read*,a,b,x

if( x<a )then
  print*,'NO'
  stop
end if

if( a+b>=x )then
  print*,'YES'
else
  print*,'NO'
end if
end 
####################################
program main
  implicit none
  integer :: a, b, x
  read(*,*) a, b, x
  if (a <= x .and. x <= a + b) then
    write(*,*) "YES"
  else
    write(*,*) "NO"
  end if
end program main
####################################
