// Intro to JS Homework

// Phase I
// mystery scoping

// function mysteryScoping1() {
//   var x = 'out of block';
//   if (true) {
//     var x = 'in block';  
//     console.log(x);
//   }
//   console.log(x); // in block, in block
// }

// mysteryScoping1();

// function mysteryScoping2() {
//   const x = 'out of block';
//   if (true) {
//     const x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping2(); //in block; out of block
// you cannot reassign a const. def inside is a different const
// so when you console.log they are two different x's

// function mysteryScoping3() {
//   const x = 'out of block';
//   if (true) {
//     var x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping3(); // SyntaxError: Identifier 'x' has already been declared

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';  
//     console.log(x);
//   }
//   console.log(x);
// }

// mysteryScoping4(); // in block, out of block

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';  
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }

// mysteryScoping5(); //SyntaxError: Identifier 'x' has already been declared

//madLib

// function madLib(verb, adjective, noun) {
//   return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()} `;
// }

// console.log(madLib("sweep", "funny", "cat"));

//isSubstring

// function isSubstring(searchString, subString){
//   return searchString.includes(subString);
// }

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

//Phase II = JS Looping Constructs

//fizzBuzz

// function fizzBuzz(array){
//   let newArray = [];
//   array.forEach(el => {
//     if ((el % 3 == 0) ^ (el % 5 == 0)){
//       newArray.push(el);
//     }
//   });
//   return newArray;
// }

// console.log(fizzBuzz([1,2,3,4,5,6,7,8,9,12,15,24,25]))

//isPrime

function isPrime(number){
  if (number < 2){
    return false;
  }
  for(let i = 2; i < number; i++){
    if (number % i === 0) {
      return false;
    };
  }
  return true;
}

// // console.log(isPrime(3)); //true
// // console.log(isPrime(6)); //false
// // console.log(isPrime(7)); //true
// // console.log(isPrime(9)); //false
// console.log(isPrime(-5)); //false
// console.log(isPrime(2)); //true
// console.log(isPrime(10)); //false
// console.log(isPrime(15485863)); //true
// console.log(isPrime(3548563)); //false

//sumOfNPrimes

function sumOfNPrimes(n){
  let sum = 0;
  let nPrimes = [];
  let i = 2;
  while(nPrimes.length < n){
    if (isPrime(i)) {
      nPrimes.push(i);
      sum += i;
    } 
    i++
  }
  return sum
}

// console.log(sumOfNPrimes(0)); //0
// console.log(sumOfNPrimes(1)); //2
// console.log(sumOfNPrimes(4)); //17