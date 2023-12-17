program TimeCalculation
  implicit none
  integer :: N, X, T, t_value

  ! Read input
  read(*,*) N, X, T

  ! Calculate t
  t_value = N / X

  ! Output result
  if (mod(N, X) == 0) then
      print *, t_value * T
  else
      print *, (t_value + 1) * T
  end if

end program TimeCalculation
