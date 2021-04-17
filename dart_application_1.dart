import 'package:emojis/emojis.dart'; // to use Emoji collection
import 'package:emojis/emoji.dart'; // to use Emoji utilities

void main() {
  var todoText = "black"; //What You need to Translate
  List ofTodoText =
      todoText.split(' '); //Splits texts to Invidually Translate a word

  int charecters =
      ofTodoText.length; // int, the number of charectoers or words in todoText
  List finaltodoEmoji = [];

  for (int i = 0; i < charecters;) {
    //for loop
    final rawtodoEmoji =
        Emoji.byKeyword(ofTodoText[i]); //It gives all emoji as output
    final todoEmoji = rawtodoEmoji
        .take(7)
        .toList(); // this Compresses each set of emoji to Three (limits)
    // print(todoEmoji); // prints those Three Emoji

    finaltodoEmoji.add(todoEmoji);

    finaltodoEmoji.shuffle();

    i++; //Counter increments.
  }
  var finalTodoEmojiList = finaltodoEmoji.expand((x) => x).toList();

  print(finalTodoEmojiList);
}
