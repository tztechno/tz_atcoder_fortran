abc069_b.f90
#########################################
write(*, "(a)") s(1:1) // trim(dig) // s(n:n)
write(output_unit, '(a, i0, a)') str(1:1), n-2, str(n:n)
write(*, '(A,I0,A)') s(1:1), n-2, s(n:n)
#########################################
#########################################
#########################################
#########################################
#########################################
program main
  implicit none
  character(100) :: s
  character(2) :: dig
  integer :: n
  read(*, *) s
  n = len(trim(s))
  write(dig, "(i0)") n - 2
  write(*, "(a)") s(1:1) // trim(dig) // s(n:n)
end program main

#########################################
program hi
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: n
  character(len=100) :: str
  read(input_unit, *) str
  n = len_trim(str)
  write(output_unit, '(a, i0, a)') str(1:1), n-2, str(n:n)
end program
#########################################
program main
    implicit none
    character(100):: s
    integer:: n
    
    ! Read the input string
    read(*, '(A)') s
    n = len_trim(s)
    ! Print the desired output
    write(*, '(A,I0,A)') s(1:1), n-2, s(n:n)
    
end program main
#########################################
