program main
    implicit none
    integer :: N, K, i
    integer, allocatable :: A(:)
    
    ! Prompt the user for input
    print *, "Enter the number of elements (N):"
    read(*, *) N
    
    ! Prompt the user for K
    print *, "Enter the value of K:"
    read(*, *) K
    
    ! Allocate memory for the list
    allocate(A(N))
    
    ! Prompt the user for the list of integers
    print *, "Enter the list of integers separated by spaces:"
    do i = 1, N
        read(*, *) A(i)
    end do
    
    ! Output N, K, and the list for demonstration purposes
    print *, "Value of N:", N
    print *, "Value of K:", K
    print *, "The list of integers:"
    do i = 1, N
        print *, A(i)
    end do
    
    ! Deallocate the memory
    deallocate(A)
    
end program main
