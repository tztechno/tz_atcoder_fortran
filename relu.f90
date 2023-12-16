PROGRAM xxx
  INTEGER :: x

  READ(*,*) x

  IF (x >= 0) THEN
    WRITE(*,*) x
  ELSE
    WRITE(*,*) 0
  ENDIF

END PROGRAM xxx
