import 'package:app_core/app_core.dart';
import 'package:app_gestante/src/core/extensions/size_extension.dart';
import 'package:app_gestante/src/modules/auth/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with MessageViewMixin {
  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();
  final controller = Injector.get<LoginController>();

  @override
  void initState() {
    super.initState();
    effect(() {
      if (controller.logged) {
        Navigator.of(context).pushReplacementNamed('/tab');
      }
    });
    messageListener(controller);
  }

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // controller.login('at1@gmail.com', '123123');
          controller.debug();
        },
        child: const Icon(
          Icons.bug_report,
        ),
      ),
    );
  }

  Widget get _buildBody => SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(minHeight: context.screenHeight),
          decoration: const BoxDecoration(
            color: AppTheme.primaryColor,
          ),
          child: _buildElements,
        ),
      );

  Widget get _buildElements => Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(40),
          constraints: BoxConstraints(maxWidth: context.screenWidth * .8),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: AppTheme.titleStyle,
                ),
                const SizedBox(height: 32),
                TextFormField(
                  controller: emailEC,
                  validator: Validatorless.multiple([
                    Validatorless.required('E-mail obrigatório'),
                    Validatorless.email('E-mail inválido')
                  ]),
                  decoration: const InputDecoration(
                    label: Text('E-mail'),
                  ),
                ),
                const SizedBox(height: 24),
                Watch(
                  (_) => TextFormField(
                    obscureText: controller.obscurePassword,
                    controller: passwordEC,
                    validator: Validatorless.required('Senha obrigatória'),
                    decoration: InputDecoration(
                      label: const Text('Senha'),
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.passwordToggle();
                        },
                        icon: Icon(
                          controller.obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.forgotMyPassword();
                  },
                  child: const Text('Esqueceu sua senha? Clique aqui!'),
                ),
                const SizedBox(height: 32),
                _loginButton,
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {
                    controller.createAccount();
                  },
                  child: const Text('Não possui conta? Clique aqui!'),
                ),
              ],
            ),
          ),
        ),
      );

  SizedBox get _loginButton => SizedBox(
        width: context.screenWidth * .8,
        height: 48,
        child: ElevatedButton(
          onPressed: () {
            final valid = formKey.currentState?.validate() ?? false;
            if (valid) {
              controller.login(emailEC.text, passwordEC.text);
            }
          },
          child: const Text('ENTRAR'),
        ),
      );
}
