import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/routing/app_router.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/features/login/logic/login_cubit.dart';
import 'package:mgr_frontend/src/features/main_page/logic/profile/profile_cubit.dart';
import 'package:mgr_frontend/src/shared/components/buttons/button.dart';
import 'package:mgr_frontend/src/shared/components/dialogs/dialog_builder.dart';
import 'package:mgr_frontend/src/shared/components/forms/input.dart';
import 'package:mgr_frontend/src/shared/components/gap.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';
import 'package:mgr_frontend/src/shared/functions/handlers.dart';
import 'package:mgr_frontend/src/shared/functions/validators.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: (name, surname, email) =>
              LoadingDialog.show(context: context),
          loaded: (name, surname, email) {
            _firstNameController.value = _firstNameController.value.copyWith(
              text: name,
              selection: TextSelection.collapsed(offset: name.length),
            );
            _lastNameController.value = _lastNameController.value.copyWith(
              text: surname,
              selection: TextSelection.collapsed(offset: surname.length),
            );
            _emailController.value = _emailController.value.copyWith(
              text: email,
              selection: TextSelection.collapsed(offset: email.length),
            );
            LoadingDialog.hide(context: context);
          },
          error: (name, surname, email, err) {
            handleError(context, err);
            if (err.statusCode == 403) {
              context.read<LoginCubit>().logout();
              context.router.replace(LoginRoute());
            }
            LoadingDialog.hide(context: context);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(Dimens.spacing),
          children: [
            const Gap.vertical(height: Dimens.tripleSpacing),
            Text(
              I18n.of(context).profile_title,
              style: context.textTheme.titleLarge,
            ),
            const Gap.vertical(height: Dimens.doubleSpacing),
            AutofillGroup(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Input(
                      autofillHints: const [AutofillHints.name],
                      controller: _firstNameController,
                      labelText: I18n.of(context).profile_firstNameLabel,
                      hintText: I18n.of(context).profile_firstNameHint,
                      onChanged: context.read<ProfileCubit>().onFirstNameChanged,
                      textInputAction: TextInputAction.done,
                      validator: validateName,
                    ),
                    const Gap.vertical(height: Dimens.spacing),
                    Input(
                      autofillHints: const [AutofillHints.familyName],
                      controller: _lastNameController,
                      labelText: I18n.of(context).profile_lastNameLabel,
                      hintText: I18n.of(context).profile_lastNameHint,
                      onChanged: context.read<ProfileCubit>().onLastNameChanged,
                      textInputAction: TextInputAction.done,
                      validator: validateSurname,
                    ),
                    const Gap.vertical(height: Dimens.spacing),
                    Input(
                      autofillHints: const [AutofillHints.email],
                      controller: _emailController,
                      labelText: I18n.of(context).profile_emailLabel,
                      hintText: I18n.of(context).profile_emailHint,
                      onChanged: context.read<ProfileCubit>().onEmailChanged,
                      textInputAction: TextInputAction.done,
                      validator: validateEmail,
                    ),
                  ],
                ),
              ),
            ),
            const Gap.vertical(height: Dimens.spacing),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: _passwordChange,
                child: Text(I18n.of(context).profile_changePassword),
              ),
            ),
            const Gap.vertical(height: Dimens.spacing),
            Button.primary(
              title: I18n.of(context).profile_submitBtnLabel,
              onPressed: _onSave,
            ),
          ],
        ),
      ),
    );
  }

  void _onSave() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(I18n.of(context).form_submitted)),
      );
      context.read<ProfileCubit>().updateProfile();
    }
  }

  void _passwordChange() {
    context.router.push(PasswordChangeRoute());
  }
}
