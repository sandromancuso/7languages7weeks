numbers := list(
                list(1, 2, 3),
                list(4, 5, 6),
                list(7, 8, 9))
                
add := method(numbers, 
    total := 0
    numbers foreach(index, value, 
           value foreach(i, v, total := total + v))
)                

add(numbers) println