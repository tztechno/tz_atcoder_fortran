abc072_b.f90
######################################
[正しい長さを計算して設定する]
character(:), allocatable :: ANS 
allocate(character(len_s/2) :: ANS) 
######################################
######################################
######################################
######################################
######################################
######################################
program main
implicit none
character(100000) :: S 
character(:), allocatable :: ANS 
integer :: i, len_s  
        
read(*,*) S 
len_s = len_trim(S) 
allocate(character(len_s/2) :: ANS) 

ANS = ""  
do i = 1, len_s, 2 
    ANS = ANS // S(i:i) 
end do
write(*,"(a)") trim(ANS) 

end program main
######################################
[MY AC]
program main
implicit none
character(100000) :: S 
character(:), allocatable :: ANS 
integer :: i, len_s  
        
read(*,*) S 
len_s = len_trim(S) 
allocate(character(len_s/2) :: ANS) 

ANS = ""  
do i = 1, len_s, 2 
    ANS = ANS // S(i:i) 
end do
write(*,"(a)") trim(ANS) 
deallocate(ANS)  
end program main
######################################
program main

implicit none

character(100000) :: S  ! Declare a character variable to hold the input string
character(:), allocatable :: ANS  ! Declare a dynamically-allocated character variable to hold the output string
integer :: i, len_s  ! Declare integer variables to use as loop counters and string length

read(*,*) S  ! Read the input string from the user
len_s = len_trim(S)  ! Get the length of the input string

allocate(character(len_s/2) :: ANS)  ! Allocate the output string with the appropriate length
ANS = ""  ! Initialize the output string to an empty string

do i = 1, len_s, 2  ! Loop through the input string, incrementing by 2
    ANS = ANS // S(i:i)  ! Append the current character to the output string
end do

write(*,"(a)") trim(ANS)  ! Write the output string to the console
deallocate(ANS)  ! Deallocate the output string
end program main
######################################
