import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final String svgAddress = 'lib/assets/icons';
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 60,
            width: MediaQuery
                .sizeOf(context)
                .width,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Colors.white70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyIconBtn(
                  semanticsLabel: "Gallery",
                  icon: SvgPicture.asset('$svgAddress/briefcase_icon.svg',color: iconBtnColor(isActive), semanticsLabel: "Workings",),
                  onPressed: () {
                    setState(() {
                      isActive =! isActive;
                    });
                    Navigator.pushNamed(context, '/hero_landing');
                  },
                ),
                MyIconBtn(
                  semanticsLabel: "Applicant Info",
                  icon: SvgPicture.asset('$svgAddress/profile_icon.svg',color: iconBtnColor(isActive), semanticsLabel: "Applicant Info",),
                  onPressed: () {
                    setState(() {
                      isActive =! isActive;
                    });
                    Navigator.pushNamed(context, '/about_me');
                  },
                ),
                MyIconBtn(
                  semanticsLabel: "History",
                  icon: SvgPicture.asset('$svgAddress/work_history_icon.svg',
                  color: iconBtnColor(isActive), semanticsLabel: "History",),
                  onPressed: () {
                    setState(() {
                      isActive =! isActive;
                    });
                    Navigator.pushNamed(context, '/work_history');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
//changing icon color when selected and idle
  Color iconBtnColor(bool isActive) {
    return isActive ? Colors.green : Colors.brown;
  }

}
// ignore: must_be_immutable
class MyIconBtn extends StatefulWidget {
  final Widget icon;
  Function()? onPressed;
  final String semanticsLabel;

  MyIconBtn({super.key, required this.icon, required this.onPressed, required this.semanticsLabel});

  @override
  State<MyIconBtn> createState() => _MyIconBtnState();
}

class _MyIconBtnState extends State<MyIconBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 36,
      child: IconButton(
        onPressed: widget.onPressed,
        icon: widget.icon,
        color: Colors.redAccent,
        tooltip: widget.semanticsLabel,
      ),
    );
  }
}
