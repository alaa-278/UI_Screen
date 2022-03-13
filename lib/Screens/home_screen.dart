import 'package:flutter/material.dart';
import 'package:task1/Categories//body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffe5a8b7),
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: Image.asset("assets/images/A.jpg", height: 220)),
          const Text.rich(
              TextSpan(text: "Personal ",style: TextStyle(
                color: Color(0xff72545b),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
                  children: [TextSpan(text: "Information",style: TextStyle(
                    color: Color(0xff72545b),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ))
              ]),

          ),
          const SizedBox(height: 15,),
           const Body(title: 'Full Name: ', value: 'Alaa Amin',subTitle: 'User Name',firstIcon: Icons.account_circle),
          const Body(title: 'Phone Number: ', value: '01423569511',subTitle: 'User Phone Number',firstIcon: Icons.phone),
          const Body(title: 'Email: ', subTitle: 'User E-mail',value: 'alaa@gmail.com',firstIcon: Icons.email),
          const Body(title: 'Age: ', subTitle: 'User Age',value: '19',firstIcon: Icons.person),
          const Body(title: 'HomeLand: ', subTitle: 'User Address',value: 'Giza/Egypt',firstIcon: Icons.home),

        ],
      ),
    );
  }
}
