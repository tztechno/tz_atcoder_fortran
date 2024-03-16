//abc093_a.f90
####################################
####################################
####################################
####################################
####################################
####################################
program main
    implicit none
    character(3):: s

    read(*, *) s

    if (s(1 : 1) /= s(2 : 2) .and. s(2 : 2) /= s(3 : 3) .and. s(3 : 3) /= s(1 : 1)) then
        write(*, *) "Yes"
    else
        write(*, *) "No"
    end if
end program main
####################################
integer :: piyo(3),i
character(3) :: s
read*,s

piyo = 0
do i = 1,3
  select case( s(i:i) )
  case( 'a' )
    piyo(1) = piyo(1) + 1
  case( 'b' )
    piyo(2) = piyo(2) + 1
  case( 'c' )
    piyo(3) = piyo(3) + 1
  end select
end do

do i = 1,3
  if( piyo(i)/=1 )then
    print*,'No'
    stop
  end if
end do
print*,'Yes'
end
####################################
program proA
  implicit none
  integer a,b,c,d,i,j,k
  character *3 s

  read(*,*) s
  do i=1,3
     if(s(i:i)=="a")then
        do j=1,3
           if ( s(j:j)=="b" ) then
              do k =1,3
                 if ( s(k:k)=="c" ) then
                    write (*,*) "Yes"
                    stop                    
                 end if
              end do
           end if
        end do
     end if
  end do

  write(*,*) "No"
  
end program proA
####################################
program main
  implicit none
  character(3) :: s
  character(3) :: sorted_s
  integer :: i

  read *, s

  sorted_s = sort_string(s)

  if (sorted_s == "abc") then
    print "(a)", "Yes"
  else
    print "(a)", "No"
  end if

contains

  function sort_string(s)
    character(3) :: s
    character(3) :: sort_string
    integer :: i, j
    character(3) :: temp

    do i = 1, len(s)-1
      do j = i+1, len(s)
        if (s(i:i) > s(j:j)) then
          temp = s(i:i)
          s(i:i) = s(j:j)
          s(j:j) = temp
        end if
      end do
    end do

    sort_string = s
  end function sort_string

end program main
####################################
