program CompareValues
  implicit none
  integer :: A,B,C

  read(*,*) A,B,C

  if (C == 0) then
    if (A <= B) then
      write(*,*) 'Aoki'
    else
      write(*,*) 'Takahashi'
    end if
  elseif (C == 1) then
    if (B <= A) then
      write(*,*) 'Takahashi'
    else
      write(*,*) 'Aoki'
    end if
  end if

end program CompareValues
