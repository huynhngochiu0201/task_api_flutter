import 'package:flutter/material.dart';
import 'package:task_api_flutter/services/remote/body/register_body.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({super.key, required this.registerBody});

  final RegisterBody registerBody;

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Verification Code Page'),
      ),
    );
  }
}
