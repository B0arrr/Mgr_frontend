import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/application/application_cubit.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/shared/components/gap.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(Dimens.spacing),
        children: [
          const Gap.vertical(
            height: Dimens.tripleSpacing,
          ),
          Text(
            I18n.of(context).settings_title,
            style: context.textTheme.titleLarge,
          ),
          const Gap.vertical(height: Dimens.doubleSpacing),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SwitchListTile(
                title: Text(I18n.of(context).settings_darkModeTitle),
                subtitle: Text(I18n.of(context).settings_darkModeSubtitle),
                value: context.read<ApplicationCubit>().state.isDarkMode,
                onChanged: (value) {
                  context.read<ApplicationCubit>().changeThemeMode(value);
                },
              ),
              ListTile(
                title: Text(I18n.of(context).settings_languageTitle),
                subtitle: Text(I18n.of(context).settings_languageSubtitle),
                trailing: DropdownButton<String>(
                  value: context.read<ApplicationCubit>().state.language.toString(),
                  items: [
                    DropdownMenuItem(value: "en", child: Text(I18n.of(context).settings_en)),
                  ],
                  onChanged: (value) {
                    context.read<ApplicationCubit>().changeLanguage(value ?? "en");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
