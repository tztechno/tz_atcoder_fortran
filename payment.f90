//abc173_a payment.f90
##############################
program atcoder
    implicit none
    integer :: s
    read(*,*) s
    if (mod(s,1000) == 0) then
        write(*,*) 0
    else
        write(*,*) (s / 1000 + 1) * 1000 - s
    end if
end program atcoder
##############################
program abc
    implicit none
    integer(2) :: n
    read(*,*) n
    write(*,'(i0)') mod(10000 - n, 1000)
    stop
end program abc
##############################
program main
    implicit none
    integer :: N, A
    read(*, *) N
    A = MOD(1000-MOD(N,1000),1000)
    write(*, *) A
end program main
##############################
