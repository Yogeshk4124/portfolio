import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Pages/Skills.dart';

class NavBar extends StatefulWidget {
  // BuildContext pageContext;
  // NavBar({required this.pageContext});
  final int page;
  NavBar({required this.page});
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
  List<Color> navItemBgColor = [black, black, black],
      navItemTextColor = [Colors.white, Colors.white, Colors.white];
  List navLinks = ['/Skills', '/Projects', '/Projects'];
  late bool isVisible = false;
  double height = 0;
  double height1 = 0;
  double height2 = 0;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    InkWell buildInkWell(String text, int index) {
      return InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(
            context,
            navLinks[index],
          );
        },
        onHover: (isInside) {
          setState(() {
            if (isInside) {
              navItemBgColor[index] = Colors.white;
              navItemTextColor[index] = black;
            } else {
              navItemBgColor[index] = black;
              navItemTextColor[index] = Colors.white;
            }
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: navItemBgColor[index],
            border: Border(
              left: BorderSide(width: 1.0, color: Colors.white),
              right: BorderSide(width: 1.0, color: Colors.white),
              top: BorderSide(width: 1.0, color: Colors.white),
              bottom: BorderSide(
                  width: 1.0,
                  color: index + 1 == widget.page ? black : Colors.white),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: GoogleFonts.bungee(
              color: navItemTextColor[index],
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return Column(
      children: [
        Container(
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Visibility(
                visible: !(MediaQuery.of(context).size.width > 800),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                      if (isVisible) {
                        height = 30;
                        height1 = 30;
                        height2 = 30;
                      } else {
                        height = 0;
                        height1 = 0;
                        height2 = 0;
                      }
                    });
                  },
                  child: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.0, color: Colors.white),
                        right: BorderSide(width: 1.0, color: Colors.white),
                        top: BorderSide(width: 1.0, color: Colors.white),
                        bottom: BorderSide(width: 1.0, color: Colors.white),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  onHover: (val) {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.white, width: 1),
                        left: BorderSide(color: Colors.white, width: 1),
                        bottom: BorderSide(color: Colors.white, width: 1),
                        right: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Yogesh',
                      style: GoogleFonts.bungee(
                        //rocksalt,arbutus,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: MediaQuery.of(context).size.width >= 800,
                child: Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: buildInkWell('Skills', 0),
                      ),
                      Expanded(
                        child: buildInkWell('Project', 1),
                      ),
                      Expanded(
                        child: buildInkWell('Resume', 2),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/Skills');
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: height,
            curve: Curves.easeIn,
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: MediaQuery.of(context).size.width >= 800
                    ? BorderSide.none
                    : BorderSide(color: Colors.white, width: 1),
                left: BorderSide(color: Colors.white, width: 1),
                right: BorderSide(color: Colors.white, width: 1),
              ),
            ),
            child: Text(
              'Skills',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/Projects');
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: height,
            curve: Curves.easeIn,
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: MediaQuery.of(context).size.width >= 800
                    ? BorderSide.none
                    : BorderSide(color: Colors.white, width: 1),
                left: BorderSide(color: Colors.white, width: 1),
                right: BorderSide(color: Colors.white, width: 1),
              ),
            ),
            child: Text(
              'Projects',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/Projects');
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: height,
            curve: Curves.easeIn,
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: MediaQuery.of(context).size.width >= 800
                    ? BorderSide.none
                    : BorderSide(color: Colors.white, width: 1),
                left: BorderSide(color: Colors.white, width: 1),
                right: BorderSide(color: Colors.white, width: 1),
              ),
            ),
            child: Text(
              'Resume',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
