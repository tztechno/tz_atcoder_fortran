//abc170_a variables.f90
#####################################
#####################################
#####################################
#####################################
program main
    implicit none
    integer::arr(5),i
    read(*,*)arr
    do i=1,5
        if(arr(i)/=i)then
            write(*,*)i
            stop
        endif
    enddo
    stop
end program main
#####################################
program ABC179a
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: i
  integer(int32) :: arr(5)
  read(input_unit, *) arr(:)
  do i = 1, 5
     if (arr(i) == 0) write(output_unit, '(i0)') i
  end do
end program ABC179a
#####################################
program ABC
    integer :: X(5)
    integer :: i
    read(*,*) (X(i), i=1,5)
    do i = 1, 5
        if (X(i) == 0) then
            write(*,*) i
        end if
    end do
end program ABC
#####################################
