import 'package:flutter/material.dart';
import 'package:my_app/Pages/HomePage/Settings/widgets/level1.dart';
import 'package:my_app/Pages/HomePage/Settings/widgets/level2.dart';
import 'package:my_app/Pages/HomePage/Settings/widgets/level3.dart';
import 'package:my_app/Pages/HomePage/Settings/widgets/level4.dart';
import 'package:my_app/Services/auth_service.dart';
import 'package:my_app/State/generate_dynamic_link.dart';

// ignore: camel_case_types
class level1_profile extends StatelessWidget {
  level1_profile({
    Key key,
  }) : super(key: key);

  final AuthService _authService = AuthService();
  final GenerateLink _dynamicLinkService = GenerateLink();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const level1(), //
          level2(authService: _authService),
          level3(
            authService: _authService,
            dynamicLinkService: _dynamicLinkService,
          ),
          level4(
            authService: _authService,
          ),
        ],
      ),
    );
  }
}
