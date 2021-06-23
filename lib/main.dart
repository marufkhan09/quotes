import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text:'Be yourself,everyone is already taken.',author:'Oscar Wilde'),
    Quote(text:'Be yourself,everyone is already taken.',author:'Oscar Wilde'),
    Quote(text:'Be yourself,everyone is already taken.',author:'Oscar Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            //we are building this function as we cant modify the data in
            //quote_card class as the data doesn't belong there so we are passing
            //a  function named "delete" as a parameter in QuoteCard
            delete: (){
            setState(() =>quotes.remove(quote));
            }
        )).toList(),

      )
    );

  }
}


