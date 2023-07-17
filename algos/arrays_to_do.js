
// doItArray = [2,3,4,5]
// additionalValue = 15

// const pushItNow1 = (array, num) => {
//     array.push(num);
//     console.log(array)
    
// }

// const pushItNow2 = (array, num) => {
//     for(let i = array.length; i >= 0; i--) {
//         array[i] = array[i - 1]
//         console.log(i)
//     }
//     array[0] = num
//     return array
// }

// console.log(pushItNow2(doItArray, additionalValue))

//Pop Front
//Given an array, remove and return the value at the beginning of the array. 
//Prove the value is removed from the array by printing it. You may use .pop(), you are able
//do this without it though!
//Examples:
// popFront([0,5,10,15]) => 0 returned, with [5,10,15] printed in the function
// popFront([4,5,7,9]) => 4 returned, with [5,7,9] printed in the function

// array1 = [0,5,10,15]
// array2 = [4,5,7,9,6]

// const getRidFront = (array) => {
//     let firstNum  = array[0]
//     array.shift()
//     console.log(array)
//     return firstNum
// }

// getRidFront(array2)



// Insert At
// Given an array, index, and additional value, insert the value into array at given index.
// You can think of pushFront(arr,val) as equivalent to insertAt(arr,0,val). You may use .push(),
//you are able do this without it though!
// Examples:
// insertAt([100,200,5], 2, 311) => [100,200,311,5]
// insertAt([9,33,7], 1, 42) => [9,42,33,7]

firstVar = [5,6,7,8] // --> 5,6,500,7,8
secondVar = 2
thirdVar = 500

const placeValue = (array, index, value) => {
    for(let i = array.length; i >= index; i--) {
        array[i] = array[i - 1]
    }
    array[index] = value
    return array
}

console.log(placeValue(firstVar, secondVar, thirdVar))



// BONUS: Remove At
// Given an array and an index into array, remove and return the array value at that index.
//Prove the value is removed from the array by printing it. Think of popFront(arr) as equivalent to removeAt(arr,0).
// Examples:
// removeAt([1000,3,204,77], 1) => 3 returned, with [1000,204,77] printed in the function
// removeAt([8,20,55,44,98], 3) => 44 returned, with [8,20,55,98] printed in the function



// BONUS: Swap Pairs
// Swap positions of successive pairs of values of given array. If length is odd, do not change the final element.
// Examples:
// insertAt([1,2,3,4]) => [2,1,4,3]
// insertAt(["Brendan",true,42]) => [true,"Brendan",42]



// BONUS: Remove Duplicates
// Given a sorted array, remove duplicate values. Because array elements are already in order, 
//all duplicate values will be grouped together. If you already made the Remove At function, you are welcome to use
// that! If you solved this using nested loops, for an extra challenge, try to do it without any nested loops!
// Examples:
// removeDupes([-2,-2,3.14,5,5,10]) => [-2,3.14,5,10]
// removeDupes([9,19,19,19,19,19,29]) => [9,19,29]