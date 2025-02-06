import "package:flutter/material.dart";

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 32, 31, 36) ,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/onboarding.png'),
                  fit: BoxFit.cover,
            
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
                  Text("Premium Cars. \nEnjoy the Luxury",
                  style: TextStyle(
                    color: Colors.white , 
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Premium and prestigious car daily rental. \nExperince the thrill at lower prices",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 204, 203, 203) ,   
                    fontSize: 16,
                    
                  ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: 320,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.grey[200],
                        
                      ),
                      child: Text(
                        "Let's Go !",
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                        
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