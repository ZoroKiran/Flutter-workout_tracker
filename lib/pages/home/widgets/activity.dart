import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    //refactor using command .
    //wrap using widget then rename to wrap with Expanded widget
    //By wrapping with expanded widget this section will not require height. It will auto exapand to fill the rest of the screen.
    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.blue,
      ),
    );
  }
}
