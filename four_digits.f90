program PadString
  implicit none

  character(100) :: S
  integer :: n

  read(*, '(A)') S
  S = trim(S)
  n = len_trim(S)

  if (n < 4) then
    S = repeat('0', 4 - n) // S
  endif

  write(*, '(A)') S
end program PadString
