private class WordCount {
  private ArrayList<Word> words;

  WordCount() {
    words = new ArrayList<Word>();
  }
  //finds if word has appeared before
  int find(String wrd) {
    for (int i = 0; i < words.size(); i++) {
      if (words.get(i).getS().equals(wrd.toLowerCase())) {
        return i;
      }
    }
    return -1;
  }
  //adds words
  void add(Word w) {
    words.add(w);
  }

  //displays as box plot
  void display() {
    for (int i = 0; i < words.size(); i++) {
      Word w = words.get(i);
      fill(0);
      rect(100, i * 20, w.getFreq() * 20, 15);
      text(w.getFreqInfo(), 10, i * 20 + 12);
    }
  }

  //getter
  Word get(int index) {
    return words.get(index);
  }
}
