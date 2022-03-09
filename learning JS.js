chiaHetchoBa = (num) =>{
    return num%3 == 0;
}

console.log(chiaHetchoBa(5));

var students = ['123', '243124'];

students.forEach( student => {
    console.log('so nay la : ' + student)
})


var studentTeenNames = students.map(student => {
    return student + 'yahoo.com';
})

console.log(studentTeenNames)
// console.log(students[1]);