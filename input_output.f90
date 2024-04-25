program main
    implicit none
    integer :: N, i
    integer, allocatable :: A(:)
    
    ! Read the number of elements in the list
    read(*, *) N
    
    ! Allocate memory for the list
    allocate(A(N))
    
    ! Read the list of integers
    do i = 1, N
        read(*, *) A(i)
    end do
    
    ! Output the list
    print *, "The list of integers:"
    do i = 1, N
        print *, A(i)
    end do
    
    ! Deallocate the memory
    deallocate(A)
    
end program main
