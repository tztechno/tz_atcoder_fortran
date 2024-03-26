abc067_b.f90
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
program main
  implicit none
  
  integer :: i,j,t,n,k,l(50)=0,s=0
  
  read(*,*)n,k
  read(*,*)(l(i),i=1,n)
  
  do i=1,N-1
     do j=i+1,N
        if(l(i) .gt. l(j))then
           t=l(i)
           l(i)=l(j)
           l(j)=t
        end if
     end do
  end do
  
  do i = n, n-k+1, -1
    s = s + l(i)
  end do
  
  write(*,*)s
end program main
#########################################
program ABC067B
    implicit none
    integer(8)::N,K,i
    integer(8)::result=0
    integer(8),allocatable,dimension(:)::L
    read(5,*)N,K
    allocate(L(N))
    read(5,*)(L(i),i=1,N)
    L=iqsort(L)

    do i=0,K-1
        result=result+L(N-i)
    end do
    print'(i0)',result
contains
    recursive function iqsort(ix) result(ires)
      integer(8), allocatable :: ires(:)
      integer(8), intent(in)  :: ix(:)
      integer :: k
      if (size(ix) <= 1) then 
        ires = ix
      else  
        k = ix(size(ix) / 2)
        ires = [iqsort(pack(ix, ix < k)), pack(ix, ix == k), iqsort(pack(ix, ix > k))] 
      end if
    end function iqsort
end program ABC067B
#########################################
program main
    implicit none
    integer, parameter :: MAX_SIZE = 100
    integer :: n, k, i, j, arr(MAX_SIZE), temp
    integer :: sum

    ! Read the number of elements and the value of k
    read(*,*) n, k

    ! Read the elements
    read(*,*) (arr(i), i = 1, n)

    ! Sort the array in descending order
    do i = 1, n-1
        do j = i+1, n  ! Declare j here
            if (arr(j) > arr(i)) then
                temp = arr(i)
                arr(i) = arr(j)
                arr(j) = temp
            end if
        end do
    end do

    ! Calculate the sum of the first k elements
    sum = 0
    do i = 1, min(k, n)
        sum = sum + arr(i)
    end do

    ! Print the result
    write(*,*) sum

end program main
#########################################
