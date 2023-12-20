import 'package:flutter/material.dart';

import 'component.dart';

class Alumini extends StatefulWidget {
  const Alumini({Key? key}) : super(key: key);

  @override
  State<Alumini> createState() => _AluminiState();
}

class _AluminiState extends State<Alumini> {
  @override
  Widget build(BuildContext context) {
    return AlumniList();
  }
}

class AlumniList extends StatelessWidget {
  const AlumniList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Alumni List')),
      ),
      body: ListView(
        children: [
          // Center(
          //   child: Text(
          //     'Alumni List',
          //     style: TextStyle(fontSize: 30),
          //   ),
          // ),
          AlumniItem(
            name: 'Bhopendra Verma',
            graduationYear: '2018-2022',
            branch: 'Computer Science & Engineering',
            company: 'Wipro',
            // designation: 'SWE',
            lpa: "4 lpa" ,
            // placementStatus: 'Offer',
          ),
          SizedBox(height: 10),
          AlumniItem(
            name: 'Bhuvnesh Yadav',
            graduationYear: '2017-2021',
            branch: 'Computer Science & Engineering',
            company: 'Accenture',
            // designation: 'SDE',
            lpa: '5.0 lpa',
            // placementStatus: 'Offer',
          ),
          SizedBox(height: 10),
          AlumniItem(
            name: 'Uday Kumar Gupta',
            graduationYear: '2017-2021',
            branch: 'Computer Science & Engineering',
            company: 'OnGraph Technologies Pvt. Ltd.',
            // designation: 'NA',
            lpa: '4.0 lpa',
            // placementStatus: 'Offer',
          ),
          SizedBox(height: 10),
          AlumniItem(
            name: 'Kanhaiya Agarwal',
            graduationYear: '2018-2022',
            branch: 'Computer Science & Engineering',
            company: 'Z3 Express',
            // designation: 'Software Developer',
            lpa: '10.0 lpa',
            // placementStatus: 'Not Available',
          ),
          SizedBox(height: 10),
          AlumniItem(
            name: 'Hammad',
            graduationYear: '2017-2021',
            branch: 'Computer Science & Engineering',
            company: 'Mahindra',
            // designation: 'SDE',
            lpa: '5.0 lpa',
            // placementStatus: 'Not Available',
          ),
          SizedBox(height: 10),
          AlumniItem(
            name: 'Bhupendra Tripathi',
            graduationYear: '2017-2021',
            branch: 'Computer Science & Engineering',
            company: 'TCS',
            // designation: '',
            lpa: '6.0 lpa',
            // placementStatus: 'Offer',
          ),
          SizedBox(height: 10),
          AlumniItem(
            name: 'Anurag Sharma',
            graduationYear: '2017-2021',
            branch: 'Computer Science & Engineering',
            company: 'Mahindra',
            // designation: 'SDE',
            lpa: '7.0 lpa',
            // placementStatus: 'Not Available',
          ),
          SizedBox(height: 10),
          AlumniItem(
            name: 'Shanaya Yadav',
            graduationYear: '2017-2021',
            branch: 'Computer Science & Engineering',
            company: 'Infosis',
            // designation: 'SDE',
            lpa: '8.0 lpa',
            // placementStatus: 'Not Available',
          ),
        ],
      ),
    );
  }
}

class AlumniItem extends StatelessWidget {
  final String name;
  final String graduationYear;
  final String branch;
  final String company;
  // final String designation;
  final String lpa;
  // final String placementStatus;

  const AlumniItem({
    Key? key,
    required this.name,
    required this.graduationYear,
    required this.branch,
    required this.company,
    // required this.designation,
    required this.lpa,
    // required this.placementStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text('$graduationYear, $branch'),
      trailing: Text('$company, $lpa '),
    );
  }
}
