abc080_b.f90
##########################################
write(str_X0, '(I0)') X0
##########################################
do i = 1, length
    M = M + mod(X, 10)
    X = X / 10
end do
##########################################
if (mod(X0, M) == 0) then
##########################################
##########################################
##########################################
##########################################
##########################################
program hi
  use, intrinsic :: iso_fortran_env
  integer(int32) :: n, i, s
  character(len=10) :: n_str
  read(input_unit, *) n
  write(n_str, '(i0)') n
  s = 0
  do i = 1, len_trim(n_str)
    s = s + iachar(n_str(i:i)) - iachar("0")
  end do
  write(output_unit, '(a)') trim(merge("Yes", "No ", mod(n, s) == 0))
end program
##########################################
program main
    use, intrinsic :: iso_fortran_env
    implicit none
    integer(int32) :: X0, X, M
    character(len=20) :: str_X0
    integer :: length, i
    read(*, *) X0
    write(str_X0, '(I0)') X0
    length = len_trim(str_X0)
    X = X0
    M = 0
    do i = 1, length
        M = M + mod(X, 10)
        X = X / 10
    end do
    if (mod(X0, M) == 0) then
        print *, "Yes"
    else
        print *, "No"
    end if
end program main
##########################################
program main
    use, intrinsic :: iso_fortran_env
    implicit none
    integer(int32) :: X0, X, M
    character(len=20) :: str_X0
    integer :: length, i

    ! X0を読み取る
    read(*, *) X0

    ! 整数を文字列に変換
    write(str_X0, '(I0)') X0

    ! 文字列の長さを計算
    length = len_trim(str_X0)

    ! 初期化
    X = X0
    M = 0

    ! 各桁の和を計算
    do i = 1, length
        M = M + mod(X, 10)
        X = X / 10
    end do

    ! X0がMで割り切れるかどうかをチェック
    if (mod(X0, M) == 0) then
        print *, "Yes"
    else
        print *, "No"
    end if
end program main
##########################################
[python]
X0=int(input())
M=0
X=X0
for i in range(len(list(str(X0)))):
  M+=X%10
  X=X//10
if X0%M==0:
  print('Yes')
else:
  print('No')
##########################################
