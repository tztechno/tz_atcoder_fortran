abc079_b.f90
##########################################
リスト設定
integer(kind=8), allocatable :: L(:)
integer, allocatable :: L(:)
allocate(L(N+1))
##########################################
##########################################
##########################################
##########################################
##########################################
program ABC079b
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: n, i
  integer(int64) :: lucas(1:2)
  read(input_unit, *) n
  lucas(1:2) = [2, 1]
  do i = 2, n
     lucas(1:2) = [lucas(2), lucas(1) + lucas(2)]
  end do
  write(output_unit, '(i0)') lucas(2)
end program ABC079b
##########################################
[AC,long対応]
program main
    implicit none
    integer :: N, i
    integer(kind=8), allocatable :: L(:)
    read(*,*) N
    allocate(L(N+1))
    L(0) = 2_8
    L(1) = 1_8
    do i = 2, N
      L(i) = L(i-2) + L(i-1)
    end do
    print "(i0)", L(N)
end program
##########################################
[WA,long非対応]
program main
    implicit none
    integer :: N, i
    integer, allocatable :: L(:)
    read(*,*) N
    allocate(L(N+1))
    L(0) = 2
    L(1) = 1
    do i = 2, N
      L(i) = L(i-2) + L(i-1)
    end do
    print "(i0)", L(N)
end program
##########################################
[python]
N=int(input())
L=[2,1]
for i in range(N-1):
    L+=[L[-2]+L[-1]]
print(L[-1])
##########################################
