abc112_a.f90
##########################################
左詰出力
write(*,'(A)') "Hello World"
write(*,'(i0)') a+b
##########################################
program main
implicit none
integer :: n,a,b
read(*,*) n
if (n==1) then
    write(*,'(A)') "Hello World"
else
    read(*,*) a
    read(*,*) b
    write(*,'(i0)') a+b
endif
end program
##########################################
