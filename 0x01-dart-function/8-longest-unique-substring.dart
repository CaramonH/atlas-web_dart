// function longestUniqueSubstring() that accepts one argument String and returns the longest non-repeating substring.
String longestUniqueSubstring(String str) {
  String longest = '';
  String current = '';

  for (int i = 0; i < str.length; i++) {
    int index = current.indexOf(str[i]);
    if (index != -1) {
      current = current.substring(index + 1);
    }
    current += str[i];
    if (current.length > longest.length) {
      longest = current;
    }
  }
  return longest;
}