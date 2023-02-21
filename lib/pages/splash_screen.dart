part of 'pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/boat.jpg',
            width: double.infinity,
            height: 500,
            fit: BoxFit.cover,
          ),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 310,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        "Discover the beafutiful place \n in the world with us",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 21,
                            color: primaryColor),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Discover the most beafutiful places in the\n world you've never been with us",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.black26),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: SizedBox(
                              width: 300,
                              height: 45,
                              child: Center(
                                child: Text(
                                  "Get Started",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                )),
          )),
        ],
      ),
    );
  }
}
