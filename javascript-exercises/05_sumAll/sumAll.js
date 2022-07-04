const sumAll = function (first, last) {
  let total = 0;
  for (let i = first; i < last + 1; i++) {
    total = total + i;
  }
  return total;
};

console.log(sumAll(1, 4));

// Do not edit below this line
module.exports = sumAll;
