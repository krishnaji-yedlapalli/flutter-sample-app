
import 'package:flutter/material.dart';

class HealthParams extends StatefulWidget {
  const HealthParams({Key? key}) : super(key: key);

  @override
  _HealthParamsState createState() => _HealthParamsState();
}

class _HealthParamsState extends State<HealthParams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _buildMonthSelection(),
          _healthParams(),
          _buildTestsView()
        ],
      ),
    );
  }

  Widget _buildMonthSelection(){
    return Container();
  }

  Widget _healthParams() {
    return Container();
  }

  Widget _buildTestsView() {
    return Container();
  }
}
