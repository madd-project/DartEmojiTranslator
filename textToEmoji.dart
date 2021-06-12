import 'package:emojis/emojis.dart'; // to use Emoji collection
import 'package:emojis/emoji.dart'; // to use Emoji utilities

void main() {
  var todoText = "I love my Happy Phone"; //What You need to Translate
  List ofTodoText =todoText.split(' '); //Splits texts to Invidually Translate a word

  int charecters = ofTodoText.length; // int, the number of charectoers or words in todoText
  List finaltodoEmoji = []; //Not so Final List is Empty

  for (int i = 0; i < charecters;) { //for loop
    final rawtodoEmoji = Emoji.byKeyword(ofTodoText[i]); //It gives all emoji as output
    final todoEmoji = rawtodoEmoji.take(7).toList(); // this Compresses each set of emoji to Seven (limits)
    
    // print(todoEmoji); // prints those Three Emoji

    finaltodoEmoji.add(todoEmoji); //Adds Emoji to a Single List

    finaltodoEmoji.shuffle(); // Shuffle the list, You can Remove this one Code.

    i++; //Counter increments.
  }
  var finalTodoEmojiList = finaltodoEmoji.expand((x) => x).toList(); //Now this is Final, Final List.

 print(finalTodoEmojiList); // Prints that List. of Emojis.
}
