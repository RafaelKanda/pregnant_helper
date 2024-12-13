import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/modules/tab/childbirth/childbirth_router.dart';
import 'package:app_gestante/src/modules/tab/gestation/gestation_router.dart';
import 'package:app_gestante/src/modules/tab/home/home_router.dart';
import 'package:app_gestante/src/modules/tab/profile/profile_page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late final List<Widget> _tabs;
  late final TabController _tabController;

  List<Widget> get _buildTabs => [
        _buildTab(Icons.home, 'Home'),
        _buildTab(Icons.favorite_border_sharp, 'Gestação'),
        _buildTab(Icons.menu, 'Parto'),
        _buildTab(Icons.account_circle, 'Perfil'),
      ];

  Widget _buildTab(IconData icon, String label) => Tab(
        icon: Icon(
          icon,
          size: 40,
        ),
        text: label,
      );

  @override
  void initState() {
    super.initState();
    _tabs = _buildTabs;
    _tabController = TabController(length: _tabs.length, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _tabController.index =
          ModalRoute.of(context)?.settings.arguments as int? ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
      bottomNavigationBar: _buildNavigationBar,
    );
  }

  Widget get _buildBody => TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeRouter(),
          GestationRouter(),
          ChildbirthRouter(),
          ProfilePage(),
        ],
      );

  Widget get _buildNavigationBar => SafeArea(
        child: Container(
          height: 72,
          decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(0, -1),
                blurRadius: 4,
              )
            ],
          ),
          child: TabBar(
            controller: _tabController,
            onTap: (_) => Future.delayed(const Duration(seconds: 1)),
            labelColor: AppTheme.textColor,
            unselectedLabelColor: AppTheme.darkTextColor,
            tabs: _tabs,
          ),
        ),
      );
}
