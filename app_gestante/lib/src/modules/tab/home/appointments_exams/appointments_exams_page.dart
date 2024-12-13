import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/modules/tab/home/appointments_exams/appointments_exams_controller.dart';
import 'package:app_gestante/src/modules/tab/home/appointments_exams/widgets/appointments_page.dart';
import 'package:app_gestante/src/modules/tab/home/appointments_exams/widgets/exams_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AppointmentsExamsPage extends StatefulWidget {
  const AppointmentsExamsPage({super.key});

  @override
  State<AppointmentsExamsPage> createState() => _AppointmentsExamsPageState();
}

class _AppointmentsExamsPageState extends State<AppointmentsExamsPage>
    with MessageViewMixin {
  final _controller = Injector.get<AppointmentsExamsController>();

  @override
  void initState() {
    super.initState();
    messageListener(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _controller.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: _buildAppBar,
              body: _buildBody,
              bottomNavigationBar: _buildBottomNavigation,
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  AppBar get _buildAppBar => AppBar(
        title: const Text(
          'Consultas e Exames',
          style: AppTheme.titleSmallStyle,
        ),
        centerTitle: true,
      );

  Widget get _buildBottomNavigation {
    return Container(
      color: Colors.white,
      child: const TabBar(tabs: [
        Tab(
          icon: Icon(Icons.content_paste_search_outlined),
          text: 'Consultas',
        ),
        Tab(
          icon: Icon(Icons.local_hospital),
          text: 'Exames',
        ),
      ]),
    );
  }

  Widget get _buildBody => TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          AppointmentsPage(controller: _controller),
          ExamsPage(
            controller: _controller,
          ),
        ],
      );
}
