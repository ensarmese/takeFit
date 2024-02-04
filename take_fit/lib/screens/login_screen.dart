// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously


import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:http/http.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    
//APİ İŞLEMİ BURADA ÇEKİLDİ

  void login(String email, password, BuildContext context) async {
  try {
    Response response = await post(Uri.parse('https://reqres.in/api/register'),   
        body: {"email": email, "password": password});
    if (response.statusCode == 200) {                        
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(   
        content: Text(" Bilgiler Hatalı!"),    
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating 
      ));
    }
  } catch (e) {
    print(e.toString());
  }
}



class _LoginScreenState extends State<LoginScreen> {
  
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF039DF8)),
        child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 150, 50, 150),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Column(
                        children: [
                          Gap(50),
                          Text(
                            "Login",
                            style: TextStyle(fontSize: 30),
                          ),
                          Gap(25),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "e-mail",
                              ),
                            ),
                          ),
                          Gap(20),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "password",
                              ),
                            ),
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Remember me"),
                                ],
                              ),
                              InkWell(
                                onTap: () => Navigator.pushNamed(context, ''),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      " Forgot Password?",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Gap(20),
                          GestureDetector(
                            onTap: () {
                              login(emailController.text.toString(),
                               passwordController.text.toString(),
                               context);

                            },
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 214, 214, 216),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "Giriş Yap",
                                  
                                ),
                              ),
                            ),
                          ),
                          Gap(40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                              ),
                              InkWell(
                                onTap: () =>
                                    Navigator.pushNamed(context, '/register'),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      " Signup",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Gap(40),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: Row(
                              children: <Widget>[
                                Expanded(child: Divider()),
                                Text(
                                  "    Or    ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Expanded(child: Divider()),
                              ],
                            ),
                          ),
                          Gap(40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () =>
                                    Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        '/home',
                                        (Route<dynamic> route) => false),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons
                                            .g_mobiledata), //google png formatı buton içerisinde uyarı veriyor
                                        Text(
                                          "Login with Google",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black87),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
