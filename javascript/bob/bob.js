var Bob = function() {};

Bob.prototype.hey = function(input) {
  if (input.trim().length === 0) {
    return 'Fine. Be that way!';
  } else if (/[a-zA-Z]/.test(input) && input.toUpperCase() === input) {
    return 'Whoa, chill out!';
  } else if (input.endsWith('?')) {
    return 'Sure.';
  } else {
    return 'Whatever.';
  }
};

module.exports = Bob;
