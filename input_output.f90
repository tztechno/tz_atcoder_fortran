program main
    implicit none
    integer :: N, K, i
    integer, allocatable :: A(:)
    
    ! Prompt the user for input
    read(*, *) N
    read(*, *) K
    
    ! Allocate memory for the list
    allocate(A(N))
    
    ! Prompt the user for the list of integers
    do i = 1, N
        read(*, *) A(i)
    end do
    
    ! Output N, K, and the list for demonstration purposes
    print *, N
    print *, K
    do i = 1, N
        print *, A(i)
    end do
    
    ! Deallocate the memory
    deallocate(A)
    
end program main
