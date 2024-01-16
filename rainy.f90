//abc175_a rainy.f90

############################################
program xxx
    character(3) :: A
    integer :: DP(4)
    integer :: ans
    integer :: i

    read(*,*) A
    DP = [0, 0, 0, 0]
    ans = 0

    do i = 1, 3
        if (A(i:i) == 'R') then
            DP(i + 1) = DP(i) + 1
            if (DP(i + 1) > ans) then
                ans = DP(i + 1)
            end if
        end if
    end do

    write(*,*) ans
end program xxx
############################################
############################################
############################################
