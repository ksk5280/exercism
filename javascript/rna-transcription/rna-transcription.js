var DnaTranscriber = function(){};

DnaTranscriber.prototype.toRna = function (str) {
  result = '';
  for (var i = 0; i < str.length; i++) {
    switch (str[i]) {
      case 'C':
        result += 'G';
        break;
      case 'G':
        result += 'C';
        break;
      case 'A':
        result += 'U';
        break;
      default:
        result += 'A';
        break;
    };
  };
  return result;
};

module.exports = DnaTranscriber;
