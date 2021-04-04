DEFINE
    arr DYNAMIC ARRAY OF INTEGER,
    tos INTEGER

MAIN
    LET tos = 0
    CALL peek()
    CALL pop()

    CALL push(1)
    CALL push(2)
    CALL push(3)

    CALL peek()
    CALL pop()
    CALL peek()
    CALL pop()
    CALL peek()
    CALL pop()

    CALL peek()
    CALL pop()

END MAIN

# push function
FUNCTION push(val)
    DEFINE val INTEGER
    LET tos = tos + 1
    LET arr[tos] = val
    DISPLAY "element " || arr[tos] || " is pushed in stack"

END FUNCTION

# pop function
FUNCTION pop()

    IF arr.getLength() == 0 THEN
        DISPLAY "stack underflow , empty nothing to pop"
    ELSE
        DISPLAY "element " || arr[tos] || " is removed"
        CALL arr.deleteElement(tos)
        LET tos = tos - 1
    END IF
    
END FUNCTION

# peek function
FUNCTION peek()
    IF arr.getLength() == 0 THEN
        DISPLAY "stack underflow , stack is empty"
    ELSE
        DISPLAY "element " || arr[tos] || " is at top"
    END IF
END FUNCTION
