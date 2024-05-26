// test.swift - Usage of printing, creating arrays, and looping
// Hannah Soria
// 2/29/24

//Swift hello world

print("Hello World!")

//Swift for loop through an array

// create an array of strings
let places = ["paris", "london", "milan"]

// loop through every element in places
for place in places{
    //print each element
    print(place)
}

// loop through every element in places except london
for place in places where place != "london"{
    //print each element
    print(place)
}