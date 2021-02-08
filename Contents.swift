import UIKit

// Problems
// 1. You can iterate over the key-value pairs in a dictionary with a for-in loop. Each item in the dictionary is returned as a (key, value) tuple. Print all the values from `colorHex`.

var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

for (color, hex) in colorHex {
    print("\(color)", "\(hex)")
}

for (_,hex) in colorHex {
    print("\(hex)")
}

// 2. Given an array of colors. We need to know how many times each color appears in the array.

var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]

var counts: [String: Int] = [:]

for color in colors {
    counts[color] = (counts[color] ?? 0) + 1
}

print(counts)
//Your solution should lead to this answer:

//red - 3
//orange - 1
//purple - 4
//pink - 2
//blue - 2
//green - 1

// 3. Write a function that returns the first N Fibonacci numbers.
// Sequence: 1,1,2,3,5,8,13

func fibo(n: Int) -> [Int] {
    
    assert(n > 1)
    
    var array = [0,1]
    
    while array.count < n {
            array.append(array[array.count - 1] + array[array.count - 2])
        }
        return array
    }

print("sequence: ",fibo(n:11))


//fibo(n:7)

//example:
//fibo(n: 7) -> [1,1,2,3,5,8,13]
//fibo(n: 5) -> [1,1,2,3,5]

// 4. Write a function that prints the powers of 2 that are less than or equal to N.

var N = 30
var power = 2
while power <= N {
    print(power)
    power = power * 2
}

// 5. Given:

var coursesAndStudents: [String:Int] = [
    "MOB" :30,
    "BEW" :40,
    "FEW" :30,
    "DS"  :40
    ]

for (courses, students) in coursesAndStudents {
    print("There are " + "\(students)" + " students on the " + "\(courses)" + " track this year.")
}


// Write a function that prints how many students belong to each track.


// 6. Write a function to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.

func check_first_last(_ arra: [Int]) -> Bool {
    guard arra.count > 1 else
    {
        return false
    }
    if arra.first == arra.last
    {
        return true
    } else
    {
        return false
    }
}
print(check_first_last([1, 2, 3]))
print(check_first_last([1, 2, 3, 1]))
print(check_first_last([11, 2, 2, 11]))
print(check_first_last([1]))


// 7. Write a function to compute the sum of all the elements of a given array of integers.

func sum_of(_ arra: [Int]) -> Int {
    return arra.reduce(0, +)
}
print(sum_of([1, 2, 3, 4]))
print(sum_of([11, 22, 35, 4]))

// 8. Write a function to reverse the elements of an array of integers to left direction. `[1,2,3]` becomes `[3,2,1]`

var nums: [Int] = [1,2,3,4,5]
nums.reverse()
print(nums)

// 9. Write a function that accepts a String as its only parameter, and returns true if the string has
// only unique letters.

// 10. Write a function that accepts a String and a character and returns how many times that specific character appears in the string.
// 11.  Given a Grid with the following numbers.

// Write a function that adds up the elements in the even rows only, like this:
