
class Quote{
  String text;
  String author;
  //this is one way to do initialisation
  // quote(String a, String b){
  //   this.text = a;
  //   this.author = b;
  // }
  //this is doing exactly the same using named parameters
  Quote({required this.text,required this.author});
}