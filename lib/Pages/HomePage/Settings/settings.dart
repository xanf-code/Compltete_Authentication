import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/Pages/HomePage/Settings/levels/settings_widget_main.dart';
import 'package:my_app/Services/Authentication_service/auth_service.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          stops: [0.0, 1.0, 1.5],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF08051a),
            Color(0xFF07041b),
            Color(0xFF081631),
          ],
        ),
      ),
      child: ListView(
        children: [
          level1_profile(),
          GestureDetector(
            onTap: () {
              HapticFeedback.mediumImpact();
              signOut(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 25.0,
                top: 25,
                right: 25,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 65,
                decoration: BoxDecoration(
                  color: Color(0xFF272732),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Sign Out",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void signOut(context) {
    try {
      final auth = AuthService();
      auth.signOut();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
