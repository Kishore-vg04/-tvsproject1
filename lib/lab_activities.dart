import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class lab_activities extends StatefulWidget {
  const lab_activities({super.key});

  @override
  State<lab_activities> createState() => _lab_activitiesState();
}

class _lab_activitiesState extends State<lab_activities> {
  TextEditingController datePicker = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? selectedStd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: const Text(
          'LAB ACTIVITIES AND REGISTER MAINTENANCE',
          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0,right: 20.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20.0),
                TextFormField(
                  controller: datePicker,
                  decoration: const InputDecoration(
                    labelText: 'Date',
                    labelStyle: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onTap: () async {
                    DateTime? datetime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (datetime != null) {
                      String formattedDate = DateFormat('yyyy-MM-dd').format(datetime);
                      setState(() {
                        datePicker.text = formattedDate;
                      });
                    }
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nursery',
                    labelStyle: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black
                    ),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20.0),
                DropdownButtonFormField<String>(
                  value: selectedStd,
                  decoration: InputDecoration(
                    labelText: 'Std',
                    border: OutlineInputBorder(),
                  ),
                  hint: Text('Select Std'),
                  items: [
                    'LKG',
                    'UKG',
                    'I',
                    'II',
                    'III',
                    'IV',
                    'V',
                    'VI',
                    'VII',
                    'VIII',
                    'IX',
                    'X',
                    'XI',
                    'XII'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedStd = newValue;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select the class';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Practicals',
                    labelStyle: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Demo',
                    labelStyle: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'List the Registers Maintained in Lab',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Areas Need to Improve',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Action Taken',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Effectiveness in Contribution/Support by the Lab Teachers',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Areas of Strength',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Areas of Concern',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Action Taken',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Lab Utilization(in %)',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Any Pending Items?(if so please List else NA)',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Any Long Repairs in Lab?(if so please list, else NA)',
                    labelStyle: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Remarks(if any)',
                    labelStyle: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Save as Draft Logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Form saved as draft')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Save as Draft',
                    style:
                    TextStyle(color: Colors.black), // Text color set to black
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form Submitted')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.black), // Text color set to black
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
