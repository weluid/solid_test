import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:solid_test/bloc/color_bloc.dart';
import 'package:solid_test/utils/constants.dart';



/// This is the home page of the application.
/// It serves as the main entry point of the app and displays its content.
class HomePage extends StatefulWidget {
  /// const constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorBloc>(
      create: (BuildContext context) {
        final ColorBloc bloc = ColorBloc();
        bloc.add(ChangeColor());

        return bloc;
      },
      child: BlocBuilder<ColorBloc, ColorState>(
        builder: (context, state) {
          return state is ColorChangedState ?
          _buildScreen(context, state) : _loadingWidget();
        },
      ),
    );
  }

  Widget _buildScreen(BuildContext context, ColorChangedState state) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<ColorBloc>(context).add(ChangeColor());
      },
      child: Scaffold(
        backgroundColor: state.randomBackgroundColor,
        body: SafeArea(
          child: Center(
            child: Text(
              AppLocalizations.of(context).helloThere,
              style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.bold,
                color: state.randomTextColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _loadingWidget() {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
