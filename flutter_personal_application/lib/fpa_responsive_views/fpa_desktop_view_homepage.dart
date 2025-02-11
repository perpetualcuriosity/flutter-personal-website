import 'package:flutter/material.dart';
import 'package:flutter_personal_application/fpa_pages/page_contact.dart';
import 'package:flutter_personal_application/fpa_pages/page_education.dart';
import 'package:flutter_personal_application/fpa_pages/page_home.dart';
import 'package:flutter_personal_application/fpa_pages/page_projects.dart';
import 'package:flutter_personal_application/fpa_pages/page_skills.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});
  @override
  State<DesktopView> createState() => _DesktopView();
}

class _DesktopView extends State<DesktopView> {
  Widget wid = PageHome();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: col)),),
          title: Text('Jash Upadhyay'),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    wid = PageHome();
                  });
                },
                child: Text('Home')),
            TextButton(
                onPressed: () {
                  setState(() {
                    wid = PageEducation();
                  });
                },
                child: Text('Education')),
            TextButton(
                onPressed: () {
                  setState(() {
                    wid = PageSkills();
                  });
                },
                child: Text('Skills')),
            TextButton(
                onPressed: () {
                  setState(() {
                    wid = PageProjects();
                  });
                },
                child: Text('Projects')),
            TextButton(
                onPressed: () {
                  setState(() {
                    wid = PageContact();
                  });
                },
                child: Text('Contact')),
          ],
        ),
        body: wid));
  }
}
