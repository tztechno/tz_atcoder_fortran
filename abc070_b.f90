abc070_b.f90
##############################
##############################
##############################
##############################
##############################
##############################
program solve
    implicit none
    integer::a, b, c, d, ans
    read*, a, b, c, d
    if(b < c) then
        ans = 0
    else if(a > d) then
        ans = 0
    else if(a <= c) then
        ans = min(b, d) - c
    else
        ans = min(b, d) - a
    end if
    write(*,'(i0)') ans
    stop
end program
##############################
integer a,b,c,d
read*,a,b,c,d
print"(i0)",max(min(b,d)-max(a,c),0)
end
##############################
program main

  implicit none
  integer :: a,b,c,d,t
  read(*,*) a,b,c,d
  t=max(min(b,d)-max(a,c),0)
  print *, t

end program main
##############################
