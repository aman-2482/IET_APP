import 'package:flutter/material.dart';

class Faculty {
  final String name;
  final String branch;

  Faculty({required this.name, required this.branch});
}

class CollegeApp extends StatefulWidget {
  @override
  _CollegeAppState createState() => _CollegeAppState();
}

class _CollegeAppState extends State<CollegeApp> {
  String selectedBranch = 'CSE';
  List<String> branches = ['CSE', 'ECE', 'Electrical', 'Mechanical', 'Civil','Director'];

  final List<Faculty> faculties = [
    Faculty(name: 'DR. Rajesh Lavania', branch: 'CSE'),
    Faculty(name: 'DR. Manu Pratap', branch: 'Director'),
    Faculty(name: 'ER. Saurabh Garg', branch: 'CSE'),
    Faculty(name: 'ER. PRASHANT MAHARISHI', branch: 'CSE'),
    Faculty(name: 'ER. SUBODH SHARMA', branch: 'CSE'),
    Faculty(name: 'ER. ADITI KUMAR GUPTA', branch: 'CSE'),
    Faculty(name: 'ER. SHIKHI AGRAWAL', branch: 'CSE'),
    Faculty(name: 'ER. PRAGYA KABRA', branch: 'CSE'),
    Faculty(name: 'ER. ANKITA MAHESWARI', branch: 'CSE'),
    Faculty(name: 'ER. SHALINI SHARMA', branch: 'CSE'),
    Faculty(name: 'ER. Saurabh Garg', branch: 'ECE'),
    Faculty(name: 'ER. PRASHANT MAHARISHI', branch: 'ECE'),
    Faculty(name: 'ER. SUBODH SHARMA', branch: 'ECE'),
    Faculty(name: 'ER. ADITI KUMAR GUPTA', branch: 'ECE'),
    Faculty(name: 'ER. SHIKHI AGRAWAL', branch: 'ECE'),
    Faculty(name: 'ER. PRAGYA KABRA', branch: 'ECE'),
    Faculty(name: 'ER. ANKITA MAHESWARI', branch: 'ECE'),
    Faculty(name: 'ER. SHALINI SHARMA', branch: 'ECE'),
    Faculty(name: 'ER. AJEET YADAV', branch: 'Mechanical'),
    Faculty(name: 'ER. CHANDAN KUMAR', branch: 'Electrical'),
    Faculty(name: 'ER. ANKITA MAHESWARI', branch: 'Electrical'),
    Faculty(name: 'ER. SHALINI SHARMA', branch: 'Civil'),
    Faculty(name: 'ER. CHANDAN KUMAR', branch: 'CSE'),
    Faculty(name: 'ER. PUSHPENDRA SHARMA', branch: 'CSE'),
    Faculty(name: 'ER. PUSHPENDRA SHARMA', branch: 'ECE'),
    Faculty(name: 'ER. CHANDAN KUMAR', branch: 'ECE'),
    Faculty(name: 'ER. CHANDAN KUMAR', branch: 'Civil'),
    Faculty(name: 'DR. Rajkumar ', branch: 'Civil'),
    Faculty(name: 'DR. Rajkumar ', branch: 'CSE'),
    Faculty(name: 'DR. Rajkumar ', branch: 'ECE'),
    Faculty(name: 'ER. CHANDAN KUMAR', branch: 'Mechanical'),
    Faculty(name: 'VIR UDBODHAN ', branch: 'Civil'),
    Faculty(name: 'VIR UDBODHAN ', branch: 'CSE'),
    Faculty(name: 'VIR UDBODHAN ', branch: 'ECE'),
    Faculty(name: 'VIR UDBODHAN', branch: 'Mechanical'),


  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('College App')),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Navigate back
            },
          ),// App bar background color
        ),
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Faculty Information',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButton<String>(
                hint: Text('Select Branch'),
                value: selectedBranch,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedBranch = newValue!;
                  });
                },
                items: branches.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20.0),
              Text(
                'Faculty List for $selectedBranch:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: ListView.builder(
                  itemCount: faculties.length,
                  itemBuilder: (context, index) {
                    if (faculties[index].branch == selectedBranch) {
                      return ListTile(
                        title: Text(faculties[index].name),
                        subtitle: Text(faculties[index].branch),
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(CollegeApp());
}
