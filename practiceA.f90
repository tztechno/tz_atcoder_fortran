//practiceA.f90
##################################
1
2 3
test
##################################
##################################
##################################
##################################
##################################
##################################
##################################
##################################
program PracticeA
    implicit none
    integer :: a, b, c
    character(len=1000) :: s 

    read(*,*)a 
    read(*,*)b, c 
    read(*,*) s
    print*,a+b+c, s


end program PracticeA
##################################
program hi
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: a, b, c
  character(len=100) :: s
  read(input_unit, *) a, b, c
  read(input_unit, *) s
  write(output_unit, '(i0, 1x, a)') a + b + c, trim(s)
end program
##################################
program test
    implicit none
    integer a,b,c,sum
    character(100) d
    character(4) sumst
    character(105)out
    character(1)dummy

    read(*,*) a
    read(*,*) b,c
    sum = a+b+c
    write(dummy, '(1x)' ) 
    write(sumst,'(I4)') sum

    read(*,*) d
    out = sumst// dummy // d

    write(*,"(a)") trim(adjustl(out))

end program test
##################################
