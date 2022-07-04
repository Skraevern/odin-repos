const repeatString = function (str, num) {
  let string = str;
  let number = num;

  if (number === 0) {
    string = ``;
    return string;
  } else if (number < 0) {
    string = `ERROR`;
    return string;
  } else {
    for (let index = 1; index < num; index++) {
      string = string + str;
    }
  }
  return string;
};

// Do not edit below this line
module.exports = repeatString;
