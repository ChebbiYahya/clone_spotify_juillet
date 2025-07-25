import 'package:clone_spotify_juillet/screens/login/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/logo-spotify.svg"),
              SizedBox(height: 20),
              Text(
                "Millions of songs",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "Free on spotify",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SigninPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Sign Up Free"),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print("object");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/icons/facebook.png", height: 25),
                    Text("Continue with Facebook"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print("object");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/icons/apple.png", height: 25),
                    Text("Continue with Apple"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print("object");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/icons/google.png", height: 25),
                    Text("Continue with Gmail"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
