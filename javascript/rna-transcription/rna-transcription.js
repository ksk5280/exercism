var DnaTranscriber = function(){};

DnaTranscriber.prototype.toRna = function (dna_str) {
  var transcriber = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U'
  };

  return dna_str.split('').map(function(dna) {
    return transcriber[dna]
  }).join('');
}

module.exports = DnaTranscriber;
