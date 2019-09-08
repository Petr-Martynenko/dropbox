!
! Program demonstrates how to call IMSL routines
!
	program IMSLexam_table
C
      USE MSIMSL
	implicit none
C                                 Declare variables
      INTEGER    N, NOUT/0/, NUNIT
C                                 SPECIFICATIONS FOR ARGUMENTS
      INTEGER    IDAY, MONTH, IYEAR
      INTEGER    IHOUR, MINUTE, ISEC
C
C	The AMACH function and UMACH subroutine are declared in the IMSL module
C
C      UMACH (-2, NUNIT)                       Write to the FILE='CHECKERR'
C      UMACH (+3, NUNIT)                       Write to the console
      OPEN (UNIT=NUNIT,FILE='CHECKERR.TxT')
C                                 Set Parameter NOUT
	CALL UMACH (+3, NOUT)
C                                 Set Parameter N
      N = 1
      WRITE (NOUT,99991) IMACH(N)
      N = 2
      WRITE (NOUT,99992) IMACH(N)
      N = 3
      WRITE (NOUT,99993) IMACH(N)
      N = 4
      WRITE (NOUT,99994) IMACH(N)
      N = 5
      WRITE (NOUT,99995) IMACH(N)
      N = 6
      WRITE (NOUT,99996) IMACH(N)
      N = 7
      WRITE (NOUT,99997) IMACH(N)
      N = 8
      WRITE (NOUT,99998) IMACH(N)
      N = 9
      WRITE (NOUT,99999) IMACH(N)
      N = 10
      WRITE (NOUT,99990) IMACH(N)
99990 FORMAT (' the number of base-A digits in double precision= ',I10)
99991 FORMAT (' Number of bits per integer storage unit = ', I10.0)
99992 FORMAT (' Number of characters per integer storage unit = ',I10.0)
99993 FORMAT (' the base = ', I10.0)
99994 FORMAT (' the number of base-A digits = ', I10.0)
99995 FORMAT (' the largest integer = ', I10.0)
99996 FORMAT (' the base = ', I10.0)
99997 FORMAT (' the number of base-A digits = ', I10.0)
99998 FORMAT (' the smallest single precision exponent = ', I10.0)
99999 FORMAT (' the largest single precision exponent = ', I10.0)
C                                 Get today's date
      CALL TDATE (IDAY, MONTH, IYEAR)
C                                 Get time of day
      CALL TIMDY (IHOUR, MINUTE, ISEC)
C                                 Print the results
      WRITE (NOUT,'(A,F10.0)') ' CPUtime= ', CPSEC ()
      WRITE (NOUT,'(A,I10.2)') ' IDAY   = ', IDAY
      WRITE (NOUT,'(A,I10.2)') ' MONTH  = ', MONTH
      WRITE (NOUT,'(A,I10.4)') ' IYEAR  = ', IYEAR
     0WRITE (NOUT,'(A,I10.2)') ' IHOUR  = ', IHOUR
     1, ' MINUTE = ', MINUTE
     2, ' ISEC   = ', ISEC
      WRITE (NOUT,'(A,F10.9)') ' CPUtime= ', CPSEC ()  
      WRITE (NOUT,'(A,I10.2)') ' NOUT   = ', NOUT
C     Close and discard file:
      IF (NOUT == 6) CLOSE (UNIT=NUNIT, STATUS = 'DELETE')
      END
C
      SUBROUTINE E1PSH (choice)
      CHARACTER*128 choice
      WRITE (NOUT,'(A)') choice
      END
C
      SUBROUTINE E1MES (NOUT, IS, choice)
      INTEGER    NOUT, IS
      CHARACTER*128 choice
      WRITE (NOUT,'(A)') choice
      END
C
      SUBROUTINE E1POP (choice)
      CHARACTER*128 choice
      WRITE (NOUT,'(A)') choice
      END
