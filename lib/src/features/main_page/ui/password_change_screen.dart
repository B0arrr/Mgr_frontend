import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/features/main_page/logic/password_change/password_change_cubit.dart';
import 'package:mgr_frontend/src/shared/components/buttons/button.dart';
import 'package:mgr_frontend/src/shared/components/dialogs/dialog_builder.dart';
import 'package:mgr_frontend/src/shared/components/forms/input.dart';
import 'package:mgr_frontend/src/shared/components/gap.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';
import 'package:mgr_frontend/src/shared/functions/handlers.dart';
import 'package:mgr_frontend/src/shared/functions/validators.dart';

@RoutePage()
class PasswordChangeScreen extends StatefulWidget implements AutoRouteWrapper {
  const PasswordChangeScreen({super.key});

  @override
  State<PasswordChangeScreen> createState() => _PasswordChangeScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordChangeCubit(),
      child: this,
    );
  }
}

class _PasswordChangeScreenState extends State<PasswordChangeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordRepeatedController =
      TextEditingController();

  bool _isPasswordVisible = false;
  bool _isPasswordRepeatedVisible = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _passwordRepeatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PasswordChangeCubit, PasswordChangeState>(
      listener: (context, state) {
        state.whenOrNull(
          initial: (password, passwordRepeated) =>
              LoadingDialog.hide(context: context),
          loading: (password, passwordRepeated) =>
              LoadingDialog.show(context: context),
          loaded: (password, passwordRepeated) =>
              LoadingDialog.hide(context: context),
          error: (password, passwordRepeated, err) {
            handleError(context, err);
            LoadingDialog.hide(context: context);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => context.router.popForced(),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(Dimens.spacing),
          children: [
            const Gap.vertical(
              height: Dimens.tripleSpacing,
            ),
            Text(
              I18n.of(context).password_change_title,
              style: context.textTheme.titleLarge,
            ),
            const Gap.vertical(height: Dimens.doubleSpacing),
            AutofillGroup(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Input(
                      autofillHints: const [AutofillHints.password],
                      controller: _passwordController,
                      isPassword: !_isPasswordVisible,
                      labelText: I18n.of(context).password_change_passwordLabel,
                      hintText: I18n.of(context).password_change_passwordHint,
                      onChanged:
                          context.read<PasswordChangeCubit>().onPasswordChanged,
                      textInputAction: TextInputAction.done,
                      suffixIcon: IconButton(
                        onPressed: () => setState(
                            () => _isPasswordVisible = !_isPasswordVisible),
                        icon: Icon(
                          _isPasswordVisible
                              ? IconsaxPlusBroken.eye
                              : IconsaxPlusBroken.eye_slash,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                      validator: validatePassword,
                    ),
                    const Gap.vertical(height: Dimens.spacing),
                    Input(
                      autofillHints: const [AutofillHints.password],
                      controller: _passwordRepeatedController,
                      isPassword: !_isPasswordRepeatedVisible,
                      labelText: I18n.of(context)
                          .password_change_passwordRepeatedLabel,
                      hintText:
                          I18n.of(context).password_change_passwordRepeatedHint,
                      onChanged: context
                          .read<PasswordChangeCubit>()
                          .onPasswordRepeatedChanged,
                      textInputAction: TextInputAction.done,
                      suffixIcon: IconButton(
                        onPressed: () => setState(() =>
                            _isPasswordRepeatedVisible =
                                !_isPasswordRepeatedVisible),
                        icon: Icon(
                          _isPasswordRepeatedVisible
                              ? IconsaxPlusBroken.eye
                              : IconsaxPlusBroken.eye_slash,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                      validator: validatePassword,
                    )
                  ],
                ),
              ),
            ),
            const Gap.vertical(height: Dimens.spacing),
            Button.primary(
              title: I18n.of(context).password_change_submitBtnLabel,
              onPressed: _onChangePassword,
            ),
          ],
        ),
      ),
    );
  }

  void _onChangePassword() {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text != _passwordRepeatedController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(I18n.of(context).form_password_not_match),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(I18n.of(context).form_submitted)),
      );

      context.read<PasswordChangeCubit>().updatePassword();
    }
  }
}
