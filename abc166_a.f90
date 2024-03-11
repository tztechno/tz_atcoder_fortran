//abc166_a.f90
################################
################################
################################
################################
program main
character*3 :: s
read(*,*) s
if (s == "ABC") write(*,*)"ARC"
if (s == "ARC") write(*,*)"ABC"
end program
################################
program main
  implicit none
  character(3) :: s
  read *, s
  if (s == "ABC") then
    print "(a)", "ARC"
  else
    print "(a)", "ABC"
  end if
end program main
################################
program atcoder
    implicit none
    character(len=3) :: s
    read(*,*) s
    if (s == 'ABC') then
        write(*,*) 'ARC'
    else 
        write(*,*) 'ABC'
    end if
end program atcoder
################################
program main
  implicit none
  character(len=3) :: s
  read(*,*) s
  select case(s)
    case ("ABC")
      write(*,*) "ARC"
    case ("ARC")
      write(*,*) "ABC"
  end select
end program main
################################
