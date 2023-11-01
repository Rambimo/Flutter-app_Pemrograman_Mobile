import 'package:flutter/material.dart';

Map<String, List<String>> userData = {
  'firstName': [],
  'lastName': [],
  'mobileNumber': [],
  'email': [],
  'password': [],
  'address': [],
};

class RegisterScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF03C988),
        title: const Text('Daftar'),
      ),
      body: Container(
        color: const Color(0xFF451952),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage('images/bird.png'),
                  ),
                ),
                TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                        color: Colors.white), // Warna teks label menjadi putih
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika tidak fokus menjadi putih
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika fokus menjadi putih
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 3) {
                      return 'First Name harus diisi lebih dari 3 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    labelStyle: TextStyle(
                        color: Colors.white), // Warna teks label menjadi putih
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika tidak fokus menjadi putih
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika fokus menjadi putih
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 3) {
                      return 'Last Name harus diisi lebih dari 3 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _mobileNumberController,
                  decoration: const InputDecoration(
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(
                        color: Colors.white), // Warna teks label menjadi putih
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika tidak fokus menjadi putih
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika fokus menjadi putih
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 10) {
                      return 'Mobile Number harus diisi lebih dari 10 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: Colors.white), // Warna teks label menjadi putih
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika tidak fokus menjadi putih
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika fokus menjadi putih
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return 'Masukkan alamat email yang valid';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true, // Teks input password tersembunyi
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: Colors.white), // Warna teks label menjadi putih
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika tidak fokus menjadi putih
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika fokus menjadi putih
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 6) {
                      return 'Password harus diisi lebih dari 6 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true, // Teks input password tersembunyi
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                        color: Colors.white), // Warna teks label menjadi putih
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika tidak fokus menjadi putih
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika fokus menjadi putih
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value != _passwordController.text) {
                      return 'Confirm Password tidak sesuai';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(
                        color: Colors.white), // Warna teks label menjadi putih
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika tidak fokus menjadi putih
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .white), // Warna outline ketika fokus menjadi putih
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Address harus diisi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      saveDataToMap();
                      _showDialog(context, userData);
                      print(userData);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF008170)),
                  child: const Text('Daftar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveDataToMap() {
    userData['firstName']!.add(_firstNameController.text);
    userData['lastName']!.add(_lastNameController.text);
    userData['mobileNumber']!.add(_mobileNumberController.text);
    userData['email']!.add(_emailController.text);
    userData['password']!.add(_passwordController.text);
    userData['address']!.add(_addressController.text);
  }

  void _showDialog(BuildContext context, Map<String, List<String>> userData) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Registered Data'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('First Name: ${userData['firstName']![0]}'),
              Text('Last Name: ${userData['lastName']![0]}'),
              Text('Mobile Number: ${userData['mobileNumber']![0]}'),
              Text('Email: ${userData['email']![0]}'),
              Text('Password: ${userData['password']![0]}'),
              Text('Address: ${userData['address']![0]}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
