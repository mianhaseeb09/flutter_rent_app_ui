import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Haseeb',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Find Your Sweet Home',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
