program CheckString
  character(50) :: s
  character(3), dimension(7) :: name = ['ACE', 'BDF', 'CEG', 'DFA', 'EGB', 'FAC', 'GBD']
  integer :: i

  write(*,*) 'Enter a string: '
  read(*,*) s

  do i = 1, 7
    if (trim(s) == name(i)) then
      write(*,*) 'Yes'
      stop
    end if
  end do

  write(*,*) 'No'
end program CheckString
