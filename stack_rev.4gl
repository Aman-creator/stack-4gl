DEFINE
    arr  ARRAY[3] OF INTEGER,
    tos INTEGER
    

MAIN

    LET tos = 1
    CALL peek()
    CALL pop()

    CALL push(1)
    CALL push(2)
    CALL push(3)
    CALL push(4)

    CALL peek()
    CALL pop()
    CALL peek()
    CALL pop()
    CALL peek()
    CALL pop()

    CALL peek()
    CALL pop()
   CALL pop()

END MAIN

# push function
FUNCTION push(val)
     DEFINE val INTEGER, i INT ,
     temp_arr array[3] OF INTEGER 

     
     
    IF arr.getLength() == tos THEN
         FOR i=1 TO arr.getLength()-1
         LET temp_arr[i] = arr[i+1] 
         END FOR
        LET temp_arr[i] = val
       LET arr = temp_arr
       DISPLAY "element " || arr[tos] || " is pushed in stack" 
         
    ELSE 
   
    LET tos = tos + 1
    LET arr[tos] = val
    DISPLAY "element " || arr[tos] || " is pushed in stack"
    END IF 

END FUNCTION

# pop function
FUNCTION pop()

IF tos<1 THEN
  DISPLAY "stack underflow , empty nothing to pop"
  RETURN 
ELSE 
END IF 

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
IF tos<1 THEN
 DISPLAY "stack underflow , stack is empty"
 RETURN 
ELSE 
END IF  

    IF arr.getLength() == 0 THEN
        DISPLAY "stack underflow , stack is empty"
    ELSE
        DISPLAY "element " || arr[tos] || " is at top"
    END IF
END FUNCTION
