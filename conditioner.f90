//abc174_a conditioner.f90

####################################
####################################
program atcoder
    implicit none
    integer :: s
    read(*,*) s
    if (s >= 30) then
        write(*,*) 'Yes'
    else
        write(*,*) 'No'
    end if
end program atcoder
####################################
program ABC174a
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: x
  read(input_unit, *) x
  if (x >= 30) then
     write(output_unit, '(a)') "Yes"
  else
     write(output_unit, '(a)') "No"
  end if
end program ABC174a
####################################
program main
	implicit none
	integer :: N
	read(*,*) N
	if(29<N)then
		write(*,'(a)') "Yes"
	else
		write(*,'(a)') "No"
	end if
end program main
####################################
program xxx

    integer :: X
    read(*,*) X

    if (X>=30) then
        write(*,*) "Yes"
    else
        write(*,*) "No"
    end if

end program xxx
####################################
