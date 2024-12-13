import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/tab/custom_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with MessageViewMixin {
  final formKey = GlobalKey<FormState>();
  final _controller = Injector.get<CustomTabController>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _controller.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return _content;
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget get _content => Container(
        constraints: BoxConstraints(
          maxHeight: context.screenHeight - 72,
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 225,
                  alignment: Alignment.topCenter,
                  color: AppTheme.secondaryColor,
                  child: Container(
                    height: 150,
                    color: AppTheme.primaryColor,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: AppTheme.secondaryColor,
                    child: CircleAvatar(
                      radius: 64,
                      backgroundColor: AppTheme.darkTextColor,
                      child: Text(
                        _controller.name.substring(0, 1),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: context.screenWidth,
                alignment: Alignment.topCenter,
                color: AppTheme.secondaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      _controller.name,
                      style: AppTheme.titleSmallStyle,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 72,
                      decoration: const BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: AppTheme.darkTextColor,
                          ),
                        ),
                      ),
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, '/profile-data'),
                        child: const Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(
                              Icons.note_alt_outlined,
                              size: 40,
                              color: AppTheme.darkTextColor,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Meus dados',
                              style: AppTheme.subTitleStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
