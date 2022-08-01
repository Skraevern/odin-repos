const palindromes = function (str) {
  let containsSpecialCharacters = function (str) {
    const specialChars = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
    return specialChars.test(str);
  };
  let strArray = [];
  for (let i = 0; i < str.length; i++) {
    if (!containsSpecialCharacters(str[i])) {
      strArray.push(str[i]);
    }
  }
  let string = strArray.join("").replace(/\s+/g, "").toLowerCase();
  strArray.reverse();
  let stringReverse = strArray.join("").replace(/\s+/g, "").toLowerCase();

  if (string === stringReverse) {
    return true;
  } else {
    return false;
  }
};

// Do not edit below this line
module.exports = palindromes;
