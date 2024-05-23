import 'package:flutter/material.dart';
import 'package:movie_booking_app/configs/components/glass_icon_button.dart';
import 'package:movie_booking_app/configs/components/round_button.dart';
import 'package:movie_booking_app/configs/routes%20/routes_name.dart';
import 'package:movie_booking_app/services/session_manager/session_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SessionController.user.email == 'eve.holt@reqres.in'
                ? Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Account Type: Demo",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                : const SizedBox.shrink(),
            const Center(child: GlassIconButton(icon: Icon(Icons.person))),
            const SizedBox(height: 20),
            Text(
              "Email: ${SessionController.user.email}",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 100,
              child: RoundButton(
                color: Colors.red.withOpacity(.2),
                onPressed: () {
                  SessionController().removeUserFromPreference();
                  Navigator.pushNamedAndRemoveUntil(
                      context, RoutesName.login, (route) => false);
                },
                title: 'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
