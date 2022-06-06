String englishToMorse(String userInput){
  var alphabetToMorse = {
    'a' : '.-',
    'A' : '.-',
    'b' : '-...',
    'B' : '-...',
    'c' : '-.-.',
    'C' : '-.-.',
    'd' : '-..',
    'D' : '-..',
    'e' : '.',
    'E' : '.',
    'f' : '..-.',
    'F' : '..-.',
    'g' : '--.',
    'G' : '--.',
    'h' : '....',
    'H' : '....',
    'i' : '..',
    'I' : '..',
    'j' : '.---',
    'J' : '.---',
    'k' : '-.-',
    'K' : '-.-',
    'l' : '.-..',
    'L' : '.-..',
    'm' : '--',
    'M' : '--',
    'n' : '-.',
    'N' : '-.',
    'o' : '---',
    'O' : '---',
    'p' : '.--.',
    'P' : '.--.',
    'q' : '--.-',
    'Q' : '--.-',
    'r' : '.-.',
    'R' : '.-.',
    's' : '...',
    'S' : '...',
    't' : '-',
    'T' : '-',
    'u' : '..-',
    'U' : '..-',
    'v' : '...-',
    'V' : '...-',
    'w' : '.--',
    'W' : '.--',
    'x' : '-..-',
    'X' : '-..-',
    'y' : '-.--',
    'Y' : '-.--',
    'z' : '--..',
    'Z' : '--..',
    ' ' : ' ',
    ',' : ',',
    '.' : '.',
  };

  var strarray = userInput.split('');
  var morseCode = [];
  for (var i in strarray) {
    morseCode.add(alphabetToMorse[i]);
  }

  return morseCode.join();
}

String morseToEnglish(String userInput){
  var morseToEnglish = {
    '.-' : 'a',
    '-...' : 'b',
    '-.-.' : 'c',
    '-..' : 'd',
    '.' : 'e',
    '..-.' : 'f',
    '--.' : 'g',
    '....' : 'h',
    '..' : 'i',
    '.---' : 'j',
    '-.-' : 'k',
    '.-..' : 'l',
    '--' : 'm',
    '-.' : 'n',
    '---' : 'o',
    '.--.' : 'p',
    '--.-' : 'q',
    '.-.' : 'r',
    '...' : 's',
    '-' : 't',
    '..-' : 'u',
    '...-' : 'v',
    '.--' : 'w',
    '-..-' : 'x',
    '-.--' : 'y',
    '--..' : 'z',
    ' ' : ' ',
  };

  var strarray = userInput.split('');
  var morseCode = [];
  for (var i in strarray) {
    morseCode.add(morseToEnglish[i]);
  }

  return morseCode.join();
}


