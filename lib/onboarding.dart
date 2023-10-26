import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class BoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF4EB2E7), Color(0xFFD9D9D9)],
        ),
      ),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height / 25),
          Image.asset(
            'assets/icon_start.png',
            width: 230,
            height: 230,
          ),
          SizedBox(height: 50),
          Text(
            "WELCOME TO DIKANTIN",
            style: GoogleFonts.inter(
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Cari Makan Tinggal Pesan, Mau Jajan Tinggal Tekan",
            style: GoogleFonts.inter(
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 12,
            ),
          ),
          SizedBox(height: 120),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4EB2E7),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text(
                  "Mulai",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
