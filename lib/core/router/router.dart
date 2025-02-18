import 'package:go_router/go_router.dart';
import 'package:valentine_app/core/router/router_def.dart';
import 'package:valentine_app/features/presentation/views/date_view.dart';
import 'package:valentine_app/features/presentation/views/match_view.dart';
import 'package:valentine_app/features/presentation/views/question_view.dart';

final goRouter = GoRouter(
  initialLocation: RouterDef.questionRoute,
  routes: [
    GoRoute(
      path: RouterDef.questionRoute,
      builder: (context, state) => QuestionView(),
      routes: [
        GoRoute(
            path: "match",
            builder: (context, state) => MatchView(),
            routes: [
              GoRoute(
                path: "date",
                builder: (context, state) => DateView(),
              ),
            ]),
      ],
    ),
  ],
);
