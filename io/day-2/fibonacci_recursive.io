fibonacci := method(nthIndex, 
                if (nthIndex >= 1, 1 println)
                if (nthIndex > 1, calc(1, 1, nthIndex))
)  

calc := method(previousNumber, currentNumber, nthIndex,
    currentNumber println
    if (nthIndex > 2, calc(currentNumber, previousNumber + currentNumber, nthIndex - 1))
)

fibonacci(15)
