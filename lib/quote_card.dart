import 'package:flutter/material.dart';
import 'quote.dart';



class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({required this.quote, required this.delete});





  @override
  Widget build(BuildContext context) {
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
                fontSize: 22,
                color: Colors.grey[600],
              ),

            ),
            SizedBox(height: 8.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8,),

            TextButton.icon(
                onPressed:() => delete(),
                icon: Icon(
                    Icons.delete,
                    color: Colors.grey[600],
                ),
                label: Text(
                    'Delete Item',
                     style: TextStyle(
                       color: Colors.grey[600],
                       fontSize: 14,
                     ),
                ),
            ),
            
          ],
        ),
      ),

    );
  }
}