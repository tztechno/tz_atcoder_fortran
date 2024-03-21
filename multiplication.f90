//abc169_a multiplication.f90
################################
################################
program main
    implicit none
    integer::a,b
    read(*,*) a,b
    write(*,*) a*b
    stop
end program main
################################
program main
  implicit none
  integer :: a, b
  read *, a, b
  print "(i0)", a * b
end program main
################################
program main
    implicit none
    integer::a,b
    read(*,*)a,b
    write(*,*)a*b
    stop
    contains
end program main
################################
program xxx
  integer ::a,b
  read(*,*) a,b
  write(*,*) a*b
end program xxx
################################
