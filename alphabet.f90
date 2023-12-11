PROGRAM CheckCase
  CHARACTER(LEN=1) :: x

  READ(*,*) x

  IF (x >= 'A' .AND. x <= 'Z') THEN
    WRITE(*,*) 'A'
  ELSE
    WRITE(*,*) 'a'
  ENDIF

END PROGRAM CheckCase
