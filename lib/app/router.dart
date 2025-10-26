import 'package:ecom_flux/features/auth/presentation/forgot_password_screen.dart';
import 'package:ecom_flux/features/auth/presentation/login_screen.dart';
import 'package:ecom_flux/features/auth/presentation/signup_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/auth/signup',
  routes: [
    GoRoute(
      path: '/auth/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/auth/signup',
      name: 'signup',
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      path: '/auth/forgot-password',
      name: 'forgotPassword',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
  ],
);
