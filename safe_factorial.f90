program factorial
    use iso_fortran_env, only: int64
    implicit none

    integer :: choice
    integer(int64) :: n, i, fact
    logical :: overflow

    do
        print *
        print *, "safe_factorial cal"
        print *, "Calculate factorial"
        print *, "0. Exit"
        print *, "Enter your choice:"
        read *, choice

        if (choice == 0) then
            exit
        else if (choice /= 1) then
            print *, "Invalid choice. Enter 1 or 0."
            cycle
        end if

        do
            print *, "Enter a non-negative integer N:"
            read *, n

            if (n >= 0) then
                exit
            end if

            print *, "Invalid input. N must be non-negative."
        end do

        fact = 1_int64
        overflow = .false.

        do i = 1_int64, n
            if (fact > huge(fact) / i) then
                overflow = .true.
                print *, "Overflow detected at i = ", i
                print *, "Product before overflow: ", fact
                exit
            end if

            fact = fact * i
        end do

        if (overflow) then
            print *, "Factorial does not fit in int64."
        else
            print *, "Factorial: ", fact
        end if

    end do

    print *, "Program finished."

end program factorial




