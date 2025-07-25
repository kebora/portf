import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:portf/modules/account_deletion/account_deletion_view.dart';
import 'package:portf/modules/articles/articles_view.dart';
import 'package:portf/modules/arts/arts_view.dart';
import 'package:portf/modules/automation/automation_view.dart';
import 'package:portf/modules/desktop_apps/companies_view.dart';
import 'package:portf/modules/contact/contact_view.dart';
import 'package:portf/modules/graphics/graphics_view.dart';
import 'package:portf/modules/mobile_apps/mobile_apps_view.dart';
import 'package:portf/modules/video_tutorials/video_tutorials_view.dart';
import 'package:portf/modules/web_apps/web_apps_view.dart';
import 'package:portf/widgets/blocs/custom_chips_bloc.dart';
import 'package:portf/widgets/custom_chips.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Daniel Simiyu',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: const Color(0xFF243447),
      ),
      home: BlocProvider(
        create: (context) => CustomChipsBloc(),
        child: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'DANIEL SIMIYU',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Montserrat",
          ),
        ),
      ),
      body: ListView(
        children: [
          const CustomChipPage(),
          BlocBuilder<CustomChipsBloc, ChipStates>(builder: (context, state) {
            return state == ChipStates.mobileapp
                ? const MobileAppsView()
                : state == ChipStates.webapp
                    ? const WebAppsView()
                    : state == ChipStates.videoTutorials
                        ? const VideoTutorialsView()
                        : state == ChipStates.articles
                            ? const ArticlesView()
                            : state == ChipStates.automation
                                ? const AutomationView()
                                : state == ChipStates.art
                                    ? const ArtsView()
                                    : state == ChipStates.graphics
                                        ? GraphicsView()
                                        : state == ChipStates.contact
                                            ? const ContactView()
                                           : state == ChipStates.accountdeletion
                                            ? const AccountDeletionView()  
                                            : const CompaniesView();
          }),
        ],
      ),
    );
  }
}
