abc077_b.f90
##############################################
##############################################
##############################################
##############################################
##############################################
program answer
  implicit none
  integer(8) :: i, N, ans
  read(*,*) N
  ans=int(sqrt(dble(N)))
  write(*,'(i0)') ans*ans
  stop
 end program answer
##############################################
program prob2
    implicit none
    integer(8)::n, i
    read*, n
    i = 1
    do while(i * i <= n)
        if((i + 1) * (i + 1) > n) then
            write(*,'(i0)') i * i
            stop
        end if
        i = i + 1
    end do
end
##############################################
program main
    implicit none
    integer(8):: n, i, ans
    read(*, *) n
    i = 1
    do while (i * i <= n)
        ans = i * i
        i = i + 1
    end do
    write(*, *) ans
end program main
##############################################
program hi
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int64) :: i, n
  read(input_unit, *) n
  i = 1_int64
  do while (i * i <= n)
    i = i + 1
  end do
  write(output_unit, *) (i-1) ** 2
end program
##############################################
[AC: dble]
program main
  implicit none
  integer :: N,M
  read(*,*) N
  M = sqrt(dble(N))
  write(*,'(i0)') M*M
end program main
##############################################
[AC: dble]
program main
  implicit none
  integer(8) :: N,M
  read(*,*) N
  M = floor(sqrt(dble(N)))
  write(*,'(i0)') M*M
end program main
##############################################
[WA: real]
program main
  implicit none
  integer(8) :: N,M
  read(*,*) N
  M = floor(sqrt(real(N)))
  write(*,'(i0)') M*M
end program main
##############################################
[WA]
program main
  implicit none
  integer :: N, M
  read(*,*) N
  M = sqrt(real(N))
  write(*,*) M*M
end program main
##############################################
[python]
import math
n=int(input())
m=int(math.sqrt(n))
print(m**2)
##############################################
