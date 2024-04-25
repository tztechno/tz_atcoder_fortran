====================================================================
input
5
20
11 12 9 17 12
====================================================================
output
           5
          20
          11
           1
          12
           2
           9
====================================================================
as python
N=int(input())
K=int(input())
A=list(map(int,input().split()))
print(N)
print(K)
print(A)
====================================================================
program main
    implicit none
    integer :: N, K, i, stat, count, pos
    integer, allocatable :: A(:)
    character(len=100) :: line  ! Line to store input

    ! Prompt the user for input
    read(*,*) N
    read(*,*) K

    ! Allocate memory for the list
    allocate(A(N))

    ! Prompt the user for the list of integers (in one line)
    read(*,'(A)') line

    ! Parse the integers from the input line
    count = 0
    pos = 1
    do while (count < N)
        read(line(pos:), *, iostat=stat) A(count+1)
        if (stat /= 0) exit
        count = count + 1
        call next_token(line, pos)
    end do

    ! Output N, K, and the list for demonstration purposes
    print *, N
    print *, K
    do i = 1, N
        print *, A(i)
    end do

    ! Deallocate the memory
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
====================================================================
====================================================================
====================================================================
====================================================================
====================================================================
