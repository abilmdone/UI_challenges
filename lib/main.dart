import 'package:flutter/material.dart';

import 'HomePage_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('login Screen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login', style: TextStyle(
                fontSize: 35,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Form(child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(labelText: 'Email',
                      hintText: 'Enter Email',
                      prefixIcon: Icon(
                        Icons.email,
                        
                      ),
                      border: OutlineInputBorder(),
                      ),
                      onChanged: (String value){
                              
                      },
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter Email' : null;
                      },
                    ),
                  ),
                  SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(labelText: 'Password',
                      hintText: 'Enter Password',
                      prefixIcon: Icon(
                        Icons.password,
                        
                      ),
                      border: OutlineInputBorder(),
                      ),
                      onChanged: (String value){
                              
                      },
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password' : null;
                      },
                    ),
                  ),
                  SizedBox(height: 35,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: MaterialButton(onPressed: () {},
                    minWidth: double.infinity,
                    child: Text('Login'),color: Colors.teal,
                    textColor: Colors.white,),
                  )
                 
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

