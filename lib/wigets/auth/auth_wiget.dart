import 'package:flutter/material.dart';
import 'package:moviedb/theme/ app_button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login to your account') ,centerTitle: true ,),
      body: ListView(
        children:const [_HeaderWidget()],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25,),
          const _FormWidget(),
          const SizedBox(height: 25,),
          const Text('In order to use the editing and rating capabilities of TMDb, as well as get personal recommendation you will need to login to your account. If you do not have an account, registering for an account if free and simple.',
            style: textStyle,
          ),
          const SizedBox(height: 5,),
          TextButton(onPressed: () {}, style: AppButtonStyle.linkButton, child: const Text('Register'),),
          const SizedBox(height: 25,),
          const Text('If you signed up but didn`t get your verification mail.', style: textStyle,),
          const SizedBox(height: 5,),
          TextButton(onPressed: () {}, style: AppButtonStyle.linkButton, child: const Text('Verify mail'),),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  get decoration => null;
  final _loginTextController = TextEditingController();
  final _passTextController = TextEditingController();
  void _auth() {
    final login = _loginTextController.text;
    final password  = _passTextController.text;
  }
  void _resetPassword() {

  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );
    const color = Color(0xFF01B4E4);
    const textFieldDecoration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,

    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const Text('Username', style: textStyle,),
        const SizedBox(height: 5,),
        const TextField(decoration: textFieldDecoration),
        const SizedBox(height: 20,),
        const Text('Password', style: textStyle,),
        const SizedBox(height: 5,),
        const TextField(decoration: textFieldDecoration, obscureText: true,),
        const SizedBox(height: 10,),
        Row (
          children: [
            const SizedBox(height: 25,),
           TextButton(
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(color),
               foregroundColor: MaterialStateProperty.all(Colors.white),
               textStyle: MaterialStateProperty.all(
                 const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
               ),
               padding: MaterialStateProperty.all(
                 const EdgeInsets.symmetric(horizontal: 10),
               ),

             ),
               onPressed: _auth,
               child: const Text('Login'),
           ),
            const SizedBox(width: 30),
            TextButton(
              style: AppButtonStyle.linkButton,
                onPressed: _resetPassword,
                child: const Text('Reset password'),
            )
          ],
        ),
      ],
    );
  }
}

