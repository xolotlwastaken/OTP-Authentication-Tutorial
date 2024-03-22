// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future otpSignIn(String signInType, String phoneOrEmail) async {
  // Add your function code here!

  // Get a reference your Supabase client
  final supabase = Supabase.instance.client;

  if (signInType == 'email') {
    await supabase.auth.signInWithOtp(
      email: phoneOrEmail,
      shouldCreateUser: false,
    );
  }

  else if (signInType == 'phone') {
    await supabase.auth.signInWithOtp(
      phone: phoneOrEmail,
      shouldCreateUser: false,
    );
  }
  
}
