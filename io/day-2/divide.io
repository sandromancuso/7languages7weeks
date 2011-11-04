// Change the default behaviour of "/" operation 
// so that when divisor is 0 it should return 0 

(10 / 2) println
(10 / 0) println

Number originalDivide := Number getSlot("/")
Number / := method(divisor, if (divisor == 0, 0, originalDivide(divisor)))

(10 / 2) println
(10 / 0) println