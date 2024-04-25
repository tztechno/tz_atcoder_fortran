abc074_b.f90
#######################################
#######################################
#######################################
INTEGER N,K,A
INTEGER,ALLOCATABLE,DIMENSION(:)::X
READ*,N,K
ALLOCATE(X(N))
READ*,X
A=0
DO I=1,N
  A=A+MIN(K-X(I),X(I))*2
END DO
PRINT"(I0)",A
END
#######################################
program solve
    implicit none
    integer(8) :: n, k, ans, i
    integer(8), allocatable :: x(:)
    read*, n
    read*, k
    allocate(x(n))
    read*, x
    ans = 0
    do i = 1, n
        ans = ans + min(2 * abs(x(i)), 2 * abs(x(i) - k))
    end do
    print'(i0)', ans
end
#######################################
program ss
    implicit none
    integer(4):: N, K, a, i
    integer(4), allocatable :: x(:)
    read(*,*) N
    read(*,*) K
    allocate(x(N))
    read(*,*) x
    a=0
    do i=1,N
        a=a+2*min(abs(x(i)),abs(K-x(i)))
    end do
    write(*,'(i0)') a
    deallocate(x)
    stop
end program ss
#######################################
program ABC074b
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: n, k, summ, i
  integer(int32), allocatable :: arr(:)
  read(input_unit, *) n, k
  allocate(arr(n))
  read(input_unit, *) arr(:)
  summ = 0_int32
  do i = 1, n
     summ = summ + min(arr(i), k-arr(i))
  end do
  write(output_unit, '(i0)') 2*summ
end program ABC074b
#######################################
[start with input_output program]
[WA7 too difficult task]

program main
    implicit none
    integer :: N, K, i, stat, count, pos, S
    integer, allocatable :: A(:)
    character(len=100) :: line  ! Line to store input

    read(*,*) N
    read(*,*) K
    allocate(A(N))
    read(*,'(A)') line
    count = 0
    pos = 1
    do while (count < N)
        read(line(pos:), *, iostat=stat) A(count+1)
        if (stat /= 0) exit
        count = count + 1
        call next_token(line, pos)
    end do
    
    S = 0
    do i = 1, N
        S = S + min(A(i), K - A(i)) * 2
    end do
    print *, S
    deallocate(A)

contains

    subroutine next_token(line, pos)
        character(len=*), intent(in) :: line
        integer, intent(inout) :: pos
        integer :: start, i

        start = pos
        do i = start, len_trim(line)
            if (line(i:i) == ' ') then
                pos = i + 1
                exit
            end if
        end do
        if (start == pos) pos = len_trim(line) + 1
    end subroutine next_token

end program main
#######################################
