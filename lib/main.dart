import 'package:dwfifa/app/core/config/env/env.dart';
import 'package:dwfifa/app/services/app_widget.dart';
import 'package:flutter/material.dart';

void main() async {
  //antes de startar a aplicação ele le o que tem dentro do .env
  await Env.instanceEnv.load();
  runApp(const AppWidget());
}
