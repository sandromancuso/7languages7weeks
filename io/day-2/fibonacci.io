#!/usr/local/bin/io

Fibonacci := Object clone

Fibonacci numbers := list()
Fibonacci previousNumber := method(numberAt(numbers size - 2))
Fibonacci currentNumber := method(numberAt(numbers size - 1))
Fibonacci numberAt := method(index, numbers at(index))

Fibonacci calculate := method(nthNumber,
            if (nthNumber > 0, numbers append(0, 1))
            while (nthNumber > 1,
                numbers append(previousNumber + currentNumber)
                nthNumber := nthNumber - 1
            )
            numbers println
)

Fibonacci calculate(10)