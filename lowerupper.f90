//ABC192_B lowerupper

###########################################

program ABC192A
    implicit none
    integer i
    character(1000)S
    logical::flg=.true.
    read*,S
    do i=1,len_trim(S)
        if(mod(i,2)==0)then
            if(S(i:i)>="a".and.S(i:i)<="z")then
                flg=.false.
                exit
            end if
        else
            if(S(i:i)>="A".and.S(i:i)<="Z")then
                flg=.false.
                exit
            end if
        end if
    end do

    if(flg)print'(A)',"Yes"
    if(.not.flg)print'(A)',"No"
end program ABC192A

###########################################

program ABC192b
  use, intrinsic :: iso_fortran_env
  implicit none
  integer(int32) :: len_str, i
  character(len=1000) :: str
  read(input_unit, *) str
  len_str = len_trim(str)
  do i = 1, len_str, 2
     if (ichar(str(i:i)) < ichar("a") .or. ichar(str(i:i)) > ichar("z")) then
        print'(a)', "No"
        stop
     end if
  end do
  do i = 2, len_str, 2
     if (ichar(str(i:i)) < ichar("A") .or. ichar(str(i:i)) > ichar("Z")) then
        print'(a)', "No"
        stop
     end if
  end do
  print'(a)', "Yes"
end program ABC192b

###########################################
