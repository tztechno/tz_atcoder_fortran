//ABC179_A 
//plural


program CheckString

  character(50) :: s
  integer :: n

  ! Read input from the user
  read(*,*) s

  ! Determine the length of the string
  n = len_trim(s)

  ! Check if the last character is 's'
  if (s(n:n) == 's') then
      write(*,*) trim(s) // "es"
  else
      write(*,*) trim(s) // "s"
  end if

end program CheckString
