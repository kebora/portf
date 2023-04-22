import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portf/widgets/blocs/custom_chips_bloc.dart';

class CustomChipPage extends StatelessWidget {
  const CustomChipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomChipView();
  }
}

class CustomChipView extends StatelessWidget {
  const CustomChipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: BlocBuilder<CustomChipsBloc, ChipStates>(
                  builder: (context, state) {
                    return Chip(
                      label: const Text("Mobile Apps"),
                      backgroundColor: state == ChipStates.mobileapp
                          ? Colors.amberAccent
                          : null,
                    );
                  },
                ),
                onTap: () => context.read<CustomChipsBloc>().add(
                      MobileAppPressed(),
                    ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: BlocBuilder<CustomChipsBloc, ChipStates>(
                  builder: (context, state) {
                    return Chip(
                      label: const Text("Companies"),
                      backgroundColor: state == ChipStates.companies
                          ? Colors.amberAccent
                          : null,
                    );
                  },
                ),
                onTap: () => context.read<CustomChipsBloc>().add(
                      CompaniesPressed(),
                    ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: BlocBuilder<CustomChipsBloc, ChipStates>(
                  builder: (context, state) {
                    return Chip(
                      label: const Text("Web Apps"),
                      backgroundColor: state == ChipStates.webapp
                          ? Colors.amberAccent
                          : null,
                    );
                  },
                ),
                onTap: () => context.read<CustomChipsBloc>().add(
                      WebAppPressed(),
                    ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: BlocBuilder<CustomChipsBloc, ChipStates>(
                  builder: (context, state) {
                    return Chip(
                      label: const Text("Video Tutorials"),
                      backgroundColor: state == ChipStates.videoTutorials
                          ? Colors.amberAccent
                          : null,
                    );
                  },
                ),
                onTap: () => context.read<CustomChipsBloc>().add(
                      VideoTutorialsPressed(),
                    ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: BlocBuilder<CustomChipsBloc, ChipStates>(
                  builder: (context, state) {
                    return Chip(
                      label: const Text("Articles"),
                      backgroundColor: state == ChipStates.articles
                          ? Colors.amberAccent
                          : null,
                    );
                  },
                ),
                onTap: () => context.read<CustomChipsBloc>().add(
                      ArticlesPressed(),
                    ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: BlocBuilder<CustomChipsBloc, ChipStates>(
                  builder: (context, state) {
                    return Chip(
                      label: const Text("Wired Logo Art"),
                      backgroundColor:
                          state == ChipStates.art ? Colors.amberAccent : null,
                    );
                  },
                ),
                onTap: () => context.read<CustomChipsBloc>().add(
                      ArtsPressed(),
                    ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: BlocBuilder<CustomChipsBloc, ChipStates>(
                  builder: (context, state) {
                    return Chip(
                      label: const Text("Contact Me"),
                      backgroundColor: state == ChipStates.contact
                          ? Colors.amberAccent
                          : null,
                    );
                  },
                ),
                onTap: () => context.read<CustomChipsBloc>().add(
                      ContactPressed(),
                    ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: BlocBuilder<CustomChipsBloc, ChipStates>(
                  builder: (context, state) {
                    return Chip(
                      label: const Text("Automation & APIs"),
                      backgroundColor: state == ChipStates.automation
                          ? Colors.amberAccent
                          : null,
                    );
                  },
                ),
                onTap: () => context.read<CustomChipsBloc>().add(
                      AutomationPressed(),
                    ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            //Remove section incase we have no work in progress.
            // MouseRegion(
            //   cursor: SystemMouseCursors.click,
            //   child: GestureDetector(
            //     child: const Chip(
            //       label: Text("Latest Project"),
            //       backgroundColor: Colors.amberAccent,
            //     ),
            //     onTap: () {},
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
