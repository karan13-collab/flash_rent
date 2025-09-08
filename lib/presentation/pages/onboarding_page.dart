import 'package:flutter/material.dart';
import 'package:flash_rent/presentation/pages/car_list_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/onboarding.png'),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flash Rent. \nEnjoy the luxury.',
                    style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Premium and prestige car daily rental. \nExperience the class.',
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 320,
                    height: 54,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => CarListScreen())
                              , (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black
                        ),
                        child: Text(
                          'All Aboard',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}