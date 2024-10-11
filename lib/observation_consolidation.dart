import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class observation_consolidation extends StatefulWidget {
  const observation_consolidation({super.key});

  @override
  State<observation_consolidation> createState() => _observation_consolidationState();
}

class _observation_consolidationState extends State<observation_consolidation> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController datePicker = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: const Text(
          'OBSERVATION CONSOLIDATION',
          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'As Name',
                    labelStyle: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select the date';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: totalController,
                  decoration: InputDecoration(
                    labelText: 'Total',
                    labelStyle: TextStyle(
                      fontSize: 19.0,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the subject';
                    }
                    return null;
                  },
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
