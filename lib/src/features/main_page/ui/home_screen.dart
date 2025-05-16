import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:mgr_frontend/src/core/i18n/l10n.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/datasource/models/User/user.dart';
import 'package:mgr_frontend/src/features/main_page/logic/home/home_cubit.dart';
import 'package:mgr_frontend/src/shared/components/gap.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';
import 'package:mgr_frontend/src/shared/functions/handlers.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().loadUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (err) => handleError(context, err),
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
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.when(
                  initial: () => Center(child: Text(I18n.of(context).home_title),),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (users) => Column(
                    children: [
                      _UserPieChart(users: users),
                      const Gap.vertical(height: Dimens.doubleSpacing),
                      _UserRolesPieChart(users: users),
                    ],
                  ),
                  error: (message) => Center(child: Text('Błąd: $message')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _UserPieChart extends StatelessWidget {
  final List<User> users;

  const _UserPieChart({required this.users});

  @override
  Widget build(BuildContext context) {
    final active = users.where((user) => user.is_active).length;
    final inactive = users.length - active;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Aktywność użytkowników',
          style: context.textTheme.titleMedium,
        ),
        const Gap.vertical(height: Dimens.spacing),
        AspectRatio(
          aspectRatio: 1.1,
          child: PieChart(
            PieChartData(
              sectionsSpace: 4,
              centerSpaceRadius: 40,
              sections: [
                PieChartSectionData(
                  value: active.toDouble(),
                  color: Colors.green,
                  title: 'Aktywni użytkownicy\n$active',
                  radius: 70,
                  titleStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                PieChartSectionData(
                  value: inactive.toDouble(),
                  color: Colors.red,
                  title: 'Nieaktywni użytkownicy\n$inactive',
                  radius: 70,
                  titleStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _UserRolesPieChart extends StatelessWidget {
  final List<User> users;

  const _UserRolesPieChart({required this.users});

  @override
  Widget build(BuildContext context) {
    final roleCounts = <String, int>{};

    for (final user in users) {
      final userRoles = user.roles ?? [];
      for (final role in userRoles) {
        roleCounts.update(role.name, (value) => value + 1, ifAbsent: () => 1);
      }
    }

    final colors = [
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.teal,
      Colors.yellow,
      Colors.brown,
      Colors.indigo,
    ];

    int colorIndex = 0;
    final sections = roleCounts.entries.map((entry) {
      final sectionColor = colors[colorIndex % colors.length];
      colorIndex++;
      return PieChartSectionData(
        value: entry.value.toDouble(),
        color: sectionColor,
        title: '${entry.key}\n${entry.value}',
        radius: 80,
        titleStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
      );
    }).toList();

    if (sections.isEmpty) {
      return const Center(child: Text('Brak przypisanych ról'));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Użytkownicy według ról',
          style: context.textTheme.titleMedium,
        ),
        const Gap.vertical(height: Dimens.spacing),
        AspectRatio(
          aspectRatio: 1.3,
          child: PieChart(
            PieChartData(
              sectionsSpace: 4,
              centerSpaceRadius: 40,
              sections: sections,
            ),
          ),
        ),
      ],
    );
  }
}