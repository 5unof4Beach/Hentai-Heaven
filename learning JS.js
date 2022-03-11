chiaHetchoBa = (num) =>{
    return num%3 == 0;
}

console.log(chiaHetchoBa(5));

var students = ['123', '243124', 'duc'];

students.unshift('111111');
var first = students.shift();

console.log(students[1]);
console.log(first);