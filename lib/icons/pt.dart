import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PTPage extends StatefulWidget {
  @override
  _PTPageState createState() => _PTPageState();
}

class _PTPageState extends State<PTPage> {
  final TextEditingController _studentNameController = TextEditingController();
  final TextEditingController _marksController = TextEditingController();
  String _selectedSubject = 'SOFT COMPUTING'; // Default subject

  final List<String> subjects = ['AI', 'ML', 'WEB TECHNOLOGY', 'SOFT COMPUTING'];

  bool isAdmin() {
    return FirebaseAuth.instance.currentUser?.email == 'ak12345@gmail.com';
  }

  void _addMarks() {
    if (isAdmin()) {
      String studentName = _studentNameController.text;
      String marks = _marksController.text;

      if (studentName.isNotEmpty && marks.isNotEmpty) {
        FirebaseFirestore.instance
            .collection('pt_marks_$_selectedSubject')
            .add({
          'student_name': studentName,
          'marks': marks,
          'subject': _selectedSubject,
          'timestamp': FieldValue.serverTimestamp(),
        }).then((value) {
          print('Marks added successfully');

          _studentNameController.clear();
          _marksController.clear();
        }).catchError((error) {
          print('Error adding marks: $error');
        });
      }
    }
  }

  void _onSubjectChanged(String? value) {
    setState(() {
      _selectedSubject = value ?? 'SOFT COMPUTING';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('PT Marks')),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            isAdmin()
                ? Column(
              children: [
                // Dropdown for subject selection
                DropdownButtonFormField<String>(
                  value: _selectedSubject,
                  items: subjects.map((subject) {
                    return DropdownMenuItem<String>(
                      value: subject,
                      child: Text(subject),
                    );
                  }).toList(),
                  onChanged: _onSubjectChanged,
                  decoration: InputDecoration(
                    labelText: 'Select Subject',
                  ),
                ),
                SizedBox(height: 10.0),
                // Textfield for student name
                TextField(
                  controller: _studentNameController,
                  decoration: InputDecoration(
                    labelText: 'Student Name',
                  ),
                ),
                SizedBox(height: 10.0),
                // Textfield for entering marks
                TextField(
                  controller: _marksController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter Marks',
                  ),
                ),
                SizedBox(height: 10.0),
                // Button to declare marks
                ElevatedButton(
                  onPressed: _addMarks,
                  child: Text('Declare Marks'),
                ),
                SizedBox(height: 30),
              ],
            )
                : Column(
              children: [
                // Dropdown for user subject selection
                DropdownButtonFormField<String>(
                  value: _selectedSubject,
                  items: subjects.map((subject) {
                    return DropdownMenuItem<String>(
                      value: subject,
                      child: Text(subject),
                    );
                  }).toList(),
                  onChanged: _onSubjectChanged,
                  decoration: InputDecoration(
                    labelText: 'Select Subject',
                  ),
                ),
                SizedBox(height: 20.0),
                // Add other user-related components here
              ],
            ),
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('pt_marks_$_selectedSubject')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }

                var marksData = snapshot.data!.docs;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PT Marks for $_selectedSubject:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    for (var mark in marksData)
                      Text(
                        '${mark['student_name']}: ${mark['marks']}',
                        style: TextStyle(fontSize: 16.0),
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
