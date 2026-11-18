private class Word {
  private String s;
  private int freq;

  Word (String s) {
    this.s = s.toLowerCase();
    freq = 1;
  }

  //gets s + freq
  String getFreqInfo() {
    return s + ": " + freq;
  }

  void increaseFreq() {
    freq++;
  }
  //getters
  String getS() {
    return s;
  }

  int getFreq() {
    return freq;
  }
}
