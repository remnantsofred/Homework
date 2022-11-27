//Intro JavaScript Problems (Part 2)

//Phase I: Callbacks

//titleize

const titleize = (arr, callback) => {
  const arr1 = arr.map(x => `Mx. ${x} Jingleheimer Schmidt`);
  callback(arr1);
};

// titleize(["Mary", "Brian", "Leo"], (names) => {
//   names.forEach(name => console.log(name));
// });

//Phase II: Constructors, Prototypes, and this

const Elephant = function(name, height, tricks){
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function (){
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
}

Elephant.prototype.grow = function(){
  this.height = this.height + 12;
}

Elephant.prototype.addTrick = function (trick){
  this.tricks.push(trick);
}

Elephant.prototype.play = function(){
  trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickIndex]}`);
}

// let dumbo = new Elephant("dumbo", 12, ["flying", "dancing", "believing", "bubbling"]);
// console.log(dumbo.addTrick("cooking"));
// console.log(dumbo.play()); // dumbo is something! 
// console.log(dumbo.grow()); // undefined
// console.log(dumbo.height); // 24
// console.log(dumbo.tricks); // ["flying", "dancing", "believing", "bubbling", "cooking"]
// console.log(dumbo.name); // dumbo
// console.log(dumbo.trumpet()); // dumbo the elephant goes 'phrRRRRRRRRRRR!!!!!!!'

// Phase III: Function Invocation

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

// let herd = [ellie, charlie, kate, micah];

// Elephant.prototype.paradeHelper = function(){
//   console.log(`${this.name} is trotting by!`);
// }

// herd.forEach((ele) => { ele.paradeHelper()});

// Phase IV: Closures


const dinerBreakfast = () => {
  const order = ['scrambled eggs and bacon']
  console.log(`I'd like ${order}`);
  return function (newOrder){
    order.push(newOrder);
    console.log(`I'd like ${order.join(' and ')}`);
  };
}

let bfastOrder = dinerBreakfast();
bfastOrder("chocolate chip pancakes");
bfastOrder("grits");
