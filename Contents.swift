import UIKit

// Arrays Practice
//
// Code the following challenges in a Swift Playground.


// 1. Define an array called  `suitcase`. It should store Strings. Imagine you are going on a trip and you need to put things in your suitcase. Use the append method to add the things you are going to take. You can only append one item at a time. Add at least 4 things to the suitcase.


// 2. Print the array `suitcase` to the console.


// 3. Using `suitcase`, print the item at index 3 to the console.
var suitcase: [String] = []
suitcase.append("Toothpaste")
suitcase.append("Toothbrush")
suitcase.append("Razor")
suitcase.append("Shaving Cream")
suitcase.append("T-Shirts")
suitcase.append("Jeans")
suitcase.append("Socks")
suitcase.append("Underwear")


print(suitcase)
print(suitcase[2])
print(suitcase[3],suitcase[4],suitcase[5])

// 4. Given `var fruit = ["🍐", "🐍", "🍏", "🐶", "🍐", "🍋", "🍓"]` Remove the animals from the array of fruits.

var fruit = ["🍐", "🐍", "🍏", "🐶", "🍐", "🍋", "🍓"]

fruit.remove(at:1)
fruit.remove(at:2)

print(fruit)

// 5. Given the following array, insert **Apr** before **May**?


 var months = ["Jan", "Feb", "Mar", "May"]
 months.insert("Apr", at: 3)
 print(months)

// 6. Write a function that takes an Array of String as an input and returns a String. The returned String should be all of the items in the input String with a space between each.

// For example:


var str = ["Swift", "isn't","really", "that","hard!"]
let joined = str.joined(separator: " ")

print(joined)


// Call your function with an array of at least 5 words and print the results to the console.

// Snaps if you don't have a space at the end! 😎

---------------------------

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

func sum_of(_ arra: [Int]) -> Int {    return arra.reduce(0, +)
}
print(sum_of([1, 2, 3, 4]))
print(sum_of([11, 22, 35, 4]))

// 8. Write a function to reverse the elements of an array of integers to left direction. `[1,2,3]` becomes `[3,2,1]`

var nums: [Int] = [1,2,3,4,5]
nums.reverse()
print(nums)

// 9. Write a function that accepts a String as its only parameter, and returns true if the string has
// only unique letters.

func strings_only(input: String) -> Bool {
    var usedLetters = [Character]()
    for letter in input {
 if usedLetters.contains(letter) {
 return false
 }
 usedLetters.append(letter)
 }
 return true
}
print(strings_only(input: "AbBa"))

// 10. Write a function that accepts a String and a character and returns how many times that specific character appears in the string.

func countingCharacters(input: String, count: Character) -> Int {
    var letterCount = 0
    for letter in input {
        if letter == count {
            letterCount += 1
 }
 }
 return letterCount
}
print(countingCharacters(input:"Mississippi", count:"s"))

