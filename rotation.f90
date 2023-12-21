#ABC181_A
#rotation
#input= 5

program Main
  implicit none
  integer :: N
  read(*,*) N
  if (mod(N,2) == 0) then
    write(*,*) 'White'
  else
    write(*,*) 'Black'
  endif
end program Main
