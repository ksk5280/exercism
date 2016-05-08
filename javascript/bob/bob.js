var Bob = function() {};

Bob.prototype.hey = function(input) {
  if (!/\S/.test(input)) {
    return 'Fine. Be that way!';
  } else if (/[a-zA-Z]/.test(input) && input.toUpperCase() === input) {
    return 'Whoa, chill out!';
  } else if (input.substr(-1) === '?') {
    return 'Sure.';
  } else {
    return 'Whatever.';
  }
};

module.exports = Bob;
