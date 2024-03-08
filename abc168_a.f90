//abc168_a.f90
################################
部分OK
program main
  implicit none
  integer :: s 
  integer :: a  
  read(*,*) s
  a=mod(s,10) 
  write(*,*) a
  stop
end program main
################################
################################
################################
################################
################################
################################
################################
read*,i
i=mod(i,10)
print*,merge("p",merge("b","h",i==3),i==0.or.i==1.or.i==6.or.i==8)//"on"
end
################################
program am
    implicit none
    integer::i
    read*,i
    i=mod(i,10)
    print*,merge("p",merge("b","h",i==3),i==0.or.i==1.or.i==6.or.i==8)//"on"
contains 
 
end program am
################################
program atcoder
    implicit none
    integer :: s
    read(*,*) s
    s = mod(s,10)
    select case(s)
    case(3)
        write(*,*) 'bon'
    case(0,1,6,8)
        write(*,*) 'pon'
    case default
        write(*,*) 'hon'
    end select
end program atcoder
################################
program ABC168a
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: n
  read(input_unit, *) n
  select case(mod(n, 10))
  case(2, 4, 5, 7, 9)
     write(output_unit, '(a)') "hon"
  case(0, 1, 6, 8)
     write(output_unit, '(a)') "pon"
  case(3)
     write(output_unit, '(a)') "bon"
  end select
end program ABC168a
################################
program main
 implicit none
 
 integer x
 read*,x
 x=mod(x,10)
 
 
 if(x==2)then
 print'(A)',"hon"
 end if
 if(x==4)then
 print'(A)',"hon"
 end if 
 if(x==5)then
 print'(A)',"hon"
 end if
 if(x==7)then
 print'(A)',"hon"
 end if
 if(x==9)then
 print'(A)',"hon"
 end if
 
 if(x==0)then
 print'(A)',"pon"
 end if
 if(x==1)then
 print'(A)',"pon"
 end if
 if(x==6)then
 print'(A)',"pon"
 end if
 if(x==8)then
 print'(A)',"pon"
 end if
 
 if(x==3)then
 print'(A)',"bon"
 end if
 
end program main
################################
program main
  implicit none
  integer :: s
  integer :: a
  character(len=3) :: ans 
  read(*,*) s
  a = mod(s, 10) 
  select case (a)
    case (2)
      ans = "hon"
    case (4)
      ans = "hon"
    case (5)
      ans = "hon"
    case (7)
      ans = "hon"
    case (9)
      ans = "hon"
    case (0)
      ans = "pon"
    case (1)
      ans = "pon"
    case (6)
      ans = "pon"
    case (8)
      ans = "pon"
    case (3)
      ans = "bon"  
  end select
  write(*,*) ans
  stop
end program main
################################
