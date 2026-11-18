WordCount wc;
Word w;

void setup() {
  size(700, 800);
  wc = new WordCount();
  String[] data = loadStrings("gettysburg-address.txt");
  for (int i = 0; i < data.length; i++) {
    String[] row = splitTokens(data[i]);
    for (int j = 0; j < row.length; j++) {
      //sets the words to lowercase and removes extras spaces/characters
      String s = row[j].toLowerCase();
      s = s.replaceAll("[^a-z]", "");
      int index = wc.find(s);
      //starts new count if word has not been found
      if (index == -1) {
        Word w = new Word(s);
        w.increaseFreq();
        wc.add(w);
      } else {
        wc.get(index).increaseFreq();
      }
    }
  }
  wc.display();
}

void draw() {
}
