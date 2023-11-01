import 'package:flutter/material.dart';
import 'package:app/Register.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF451952),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                image: AssetImage('images/bird.png'),
                height: 100,
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
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
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
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _handleLogin(
                      context, _emailController.text, _passwordController.text);
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Anda Belum Punya Akun? '),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()),
                      );
                    },
                    child: const Text('Daftar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleLogin(BuildContext context, String email, String password) {
    bool isUserFound = false;
    for (int i = 0; i < userData['email']!.length; i++) {
      if (userData['email']![i] == email &&
          userData['password']![i] == password) {
        isUserFound = true;
        break;
      }
    }

    if (isUserFound) {
      _showDialog(context, email, password);
    } else {
      print('Login Failed');
    }
  }

  void _showDialog(BuildContext context, String email, String password) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Login Successful'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'First Name: ${userData['firstName']![userData['email']!.indexOf(email)]}'),
              Text(
                  'Last Name: ${userData['lastName']![userData['email']!.indexOf(email)]}'),
              Text(
                  'Mobile Number: ${userData['mobileNumber']![userData['email']!.indexOf(email)]}'),
              Text('Email: $email'),
              Text('Password: $password'),
              Text(
                  'Address: ${userData['address']![userData['email']!.indexOf(email)]}'),
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
