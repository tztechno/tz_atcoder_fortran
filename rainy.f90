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
program ABC175a
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: summ, i
  character(len=3) :: str
  read(input_unit, *) str
  summ = 0
  do i = 1, 3
     if (str(i:i) == "R") summ = summ + 1
  end do
  if (str(2:2) == "R") then
     write(output_unit, '(i0)') summ
  else
     write(output_unit, '(i0)') min(1, summ)
  end if
end program ABC175a
############################################
program main
  implicit none
  character(3) :: sss
  integer :: i, counts
  read(*,*) sss
  
  counts = 0
  do i = 1, 3
    if ( sss(i:i) == 'S' ) then
      counts = counts
    else
      if (sss(i-1:i-1) == 'S' ) then
        counts = 1
      else
        counts = counts + 1
      endif   
    endif
  enddo
  write(*,*) counts
end program main
############################################
