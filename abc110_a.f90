abc110_a.f90
###########################################
###########################################
program solve
    implicit none
    integer::a, b, c
    read*, a, b, c
    write(*,'(i0)') max(a*10+b+c, a+b*10+c, a+b+c*10)
    stop
end
###########################################
integer :: a(3),ma,i
read*,a
ma = maxval( a )
do i = 1,3
  if( ma==a(i) )then
    exit
  end if
end do
print*,sum( a ) + a(i)*9
end
###########################################
integer a,b,c
read*, a,b,c
print*, a+b+c+9*max(a,b,c)
end
###########################################
integer a,b,c
read*, a,b,c
print"(i0)",(a+b+c)+max(a,b,c)*9
end
###########################################
[python]
a,b,c=map(int,input().split())
ans=(a+b+c)+max(a,b,c)*9
print(ans)
###########################################
