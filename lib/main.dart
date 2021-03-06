import 'package:flutter/material.dart';
import 'quote.dart';

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

  List<quote> quotes = [
    quote(text:'Be yourself,everyone is already taken.',author:'Oscar Wilde'),
    quote(text:'Change the world by being yourself.',author:'B'),
    quote(text:'Every moment is a fresh beginning.',author:'C'),
    quote(text:'Be yourself,everyone is already taken.',author:'Oscar Wilde'),
    quote(text:'Be yourself,everyone is already taken.',author:'Oscar Wilde'),
    quote(text:'Be yourself,everyone is already taken.',author:'Oscar Wilde'),


  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),

            ),
            SizedBox(height: 8.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),

          ],
        ),
      ),

    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      )
    );

  }
}
