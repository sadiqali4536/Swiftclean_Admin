import 'package:flutter/material.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 248, 248, 1),
      body: Stack(
        children: [
          // Background image section
          Positioned(
            top: screenHeight * 0.05,
            left: screenWidth * 0.05,
            child: Container(
              height: screenHeight * 0.90,
              width: screenWidth * 0.4,
              child: Stack(
                children: [
                  Image.asset("assets/avathar_backround.png", fit: BoxFit.cover),
                  Positioned(
                    top: screenHeight * 0.07,
                    left: screenWidth * 0.09,
                    child: Container(
                      height: screenHeight * 0.22,
                      width: screenWidth * 0.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Image.asset("assets/logo.png"),
                          Positioned(
                            top: screenHeight * 0.17,
                            left: screenWidth * 0.04,
                            child: const Text(
                              "SWIFT",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color.fromARGB(255, 27, 131, 31),
                              ),
                            ),
                          ),
                          Positioned(
                            top: screenHeight * 0.17,
                            left: screenWidth * 0.09,
                            child: const Text(
                              "CLEAN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Right-side form box
          Positioned(
            top: screenHeight * 0.05,
            left: screenWidth * 0.40,
            child: Container(
              height: screenHeight * 0.90,
              width: screenWidth * 0.54,
              decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight * 0.15,
                    left: screenWidth * 0.18,
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          
                  // Email input
                  Positioned(
                    top: screenHeight * 0.37,
                    left: screenWidth * 0.14,
                    child: SizedBox(
                      width: screenWidth * 0.25,
                      child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter Your Email",
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color.fromARGB(255, 202, 202, 202)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          
                  // Reset Button
                  Positioned(
                    top: screenHeight * 0.48,
                    left: screenWidth * 0.14,
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(15),
                      child: InkWell(
                        onTap: (){
          
                        },
                        child: Container(
                          height: 40,
                          width: screenWidth * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 24, 128, 27),
                          ),
                          child: const Center(
                            child: Text(
                              "Reset Password",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          
                  // Back Button
                  Positioned(
                    top: screenHeight * 0.60,
                    left: screenWidth * 0.14,
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                        onTap: (){
          
                        },
                        child: Container(
                          height: 40,
                          width: screenWidth * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Cleaning image
          Positioned(
            top: screenHeight * 0.50,
            left: screenWidth * 0.15,
            child: Image.asset(
              "assets/cleaning_avathar.png",
              scale: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
