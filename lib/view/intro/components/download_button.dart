import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            launchUrl(Uri.parse('https://resumecraftpluss.netlify.app'));
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
                vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
                BoxShadow(
                    color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.pink,
                    Colors.blue.shade900,
                  ]),
            ),
            child: Row(
              children: [
                Text(
                  'Build Resume\n     today',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: defaultPadding / 3,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            launchUrl(Uri.parse('http://portfoliobuilder1.netlify.app'));
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
                vertical: defaultPadding / 1.5, horizontal: defaultPadding * 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
                BoxShadow(
                    color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
              ],
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.pink,
                    Colors.blue.shade900,
                  ]),
            ),
            child: Row(
              children: [
                Text(
                  'Build Portfolio\n     today',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: defaultPadding / 3,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
