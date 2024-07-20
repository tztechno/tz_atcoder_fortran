abc115_a.f90
##########################################
character(:), allocatable :: ans
##########################################
##########################################
##########################################
##########################################
##########################################
[AC]
program main
  implicit none
  integer :: i, N
  character(:), allocatable :: ans
  read(*,*) N
  ans = "Christmas"
  do i = 1, 25-N
    ans = ans // " Eve"
  end do
  write(*,'(A)') ans
end program main
##########################################
[after fix:AC]
program main
  implicit none
  integer :: i, N
  character(:), allocatable :: ans
  read(*,*) N
  ans = "Christmas"
  do i = 1, 25-N
    ans = trim(ans) // " Eve"
  end do
  write(*,'(A)') ans
end program main
##########################################
[before fix]
program main
  implicit none
  integer(8) :: i, N
  character(20) :: ans
  read(*,*) N
  ans="Christmas"
  do i = 1, 25-N
    ans = ans // " Eve"
  end do
  write(*,'(A)') ans
end program main
##########################################
[python]
D=int(input())
print("Christmas"+" Eve"*(25-D))
##########################################
