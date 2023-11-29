program Main
    real(8) :: X
    integer :: a

    read(*, *) X

    a = int(X * 10.0)

    if (mod(a, 10) >= 5) then
        write(*, *) int(X) + 1
    elseif (mod(a, 10) <= 4) then
        write(*, *) int(X)
    endif
end program Main
