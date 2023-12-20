import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NoticeCircularWidget extends StatelessWidget {
  final List<Map<String, String>> notices = [

    {
      'text': 'Unifest 2023-2024',
      'url': 'http://www.dbrauagra.org.in/',
    },
    {
      'text': 'Notice Regarding Pt',
      'url': 'http://dbrauaaems.in/Circular/CIR3380.pdf',
    },
    {
      'text': 'Class Schedule',
      'url': 'http://dbrauaaems.in/Circular/CIR3380.pdf',
    },
    {
      'text': 'Results',
      'url': 'http://dbrauaaems.in/Circular/CIR3380.pdf',
    },
    {
      'text': 'Notice regarding Semesters ',
      'url': 'http://www.dbrauagra.org.in/',
    },
    {
      'text': 'Importance',
      'url': 'http://www.dbrauagra.org.in/',
    },
    {
      'text': 'Manuals',
      'url': 'http://www.dbrauagra.org.in/',
    },
    {
      'text': 'Fests',
      'url': 'http://www.dbrauagra.org.in/',
    },
  ];

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Notice & Circular',
            style: TextStyle(fontSize: 18),
          ),
        ),
        backgroundColor: Colors.black, // App bar background color
      ),
      backgroundColor: Colors.grey, // Background color
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_upward, color: Colors.black),
                onPressed: () {
                  _scroll(-1);
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_downward, color: Colors.black),
                onPressed: () {
                  _scroll(1);
                },
              ),
            ],
          ),
          Expanded(
            child: Card(
              margin: EdgeInsets.all(16),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                controller: _scrollController,
                children: notices.map((notice) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        launch(notice['url']!);
                      },
                      child: ListTile(
                        leading: Icon(Icons.double_arrow, color: Colors.black),
                        title: Text(
                          notice['text']!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Handle "View All" button
              launch('https://dbrauaaems.in/CircularforWeb.aspx');
            },
            child: Text('View All'),
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Button background color
              onPrimary: Colors.white, // Button text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  void _scroll(int direction) {
    _scrollController.animateTo(
      _scrollController.offset + direction * 100,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NoticeCircularWidget(),
  ));
}
