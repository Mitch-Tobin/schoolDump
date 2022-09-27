let numofdogmatches = document.getElementById('dogMatchNbr');
let numofcatmatches = document.getElementById('catMatchNbr');
let totalMatches = document.getElementById('numOfMatches');
let totalChars = document.getElementById('numOfChars');

function matchWords() {
    let numofdogs = (document.getElementById('txtSentence').value.match(/dog/g)|| "").length
    let numofcats = (document.getElementById('txtSentence').value.match(/cat/g)|| "").length

    numofdogmatches.value = numofdogs;
    numofcatmatches.value = numofcats;
    totalMatches.value = numofcats + numofdogs;
    totalChars.value = document.getElementById('txtSentence').value.length;
}

document.getElementById('txtSentence').addEventListener('keyup' ,matchWords)