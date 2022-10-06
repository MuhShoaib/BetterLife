import 'package:better_life/add_bank_screen/add_bank_screen.dart';
import 'package:better_life/add_bank_screen/binding/add_bank_binding.dart';
import 'package:better_life/food_screen/binding/food_binding.dart';
import 'package:better_life/food_tracker_screen/binding/food_tracker_binding.dart';
import 'package:better_life/food_tracker_screen/food_tracker_screen.dart';
import 'package:better_life/healthy_habits_screen/binding/healthy_habits_binding.dart';
import 'package:better_life/healthy_habits_screen/healthy_habits_screen.dart';
import 'package:better_life/home1_screen/controller/home1_controller.dart';
import 'package:better_life/meditation_screen/binding/meditation_binding.dart';
import 'package:better_life/meditation_screen/meditation_screen.dart';
import 'package:better_life/news_screen/binding/news_binding.dart';
import 'package:better_life/news_screen/news_screen.dart';
import 'package:better_life/recipe_screen/binding/recipe_binding.dart';
import 'package:better_life/religion_screen/binding/religion_binding.dart';
import 'package:better_life/religion_screen/religion_screen.dart';
import 'package:better_life/search1_screen/binding/search1_binding.dart';
import 'package:better_life/search1_screen/search1_screen.dart';
import 'package:better_life/sleep_screen/binding/sleep_binding.dart';
import 'package:better_life/sleep_screen/sleep_screen.dart';
import 'package:get/get.dart';
import '../../food_screen/food_screen.dart';

import '../../food_tracker1_screen/binding/food_tracker1_binding.dart';
import '../../food_tracker1_screen/food_tracker1_screen.dart';
import '../../healthy_habits1_screen/binding/healthy_habits1_binding.dart';
import '../../healthy_habits1_screen/healthy_habits1_screen.dart';
import '../../home1_screen/binding/home1_binding.dart';
import '../../home1_screen/home1_screen.dart';
import '../../home2_screen/binding/home2_binding.dart';
import '../../home2_screen/home2_screen.dart';
import '../../home3_screen/binding/home3_binding.dart';
import '../../home3_screen/home3_screen.dart';
import '../../home4_screen/binding/home4_binding.dart';
import '../../home4_screen/home4_screen.dart';
import '../../home_screen/binding/home_binding.dart';
import '../../home_screen/home_screen.dart';
import '../../news1_screen/binding/news1_binding.dart';
import '../../news1_screen/news1_screen.dart';
import '../../recipe_screen/recipe_screen.dart';
import '../../social_profile_message1_screen/binding/social_profile_message1_binding.dart';
import '../../social_profile_message1_screen/social_profile_message1_screen.dart';
import '../../views/root.dart';
import '../../views/user/complete_account.dart';
import '../../views/user/complete_survey.dart';
import '../../views/user/login.dart';
import '../../views/splash.dart';
import '../../views/user/signup.dart';
import 'bindings.dart';

class AppRoutes {
  static List<GetPage> pages = [
    GetPage(
        name: "/search",
        page: () => Search1Screen(),
        binding: Search1Binding()),
    GetPage(name: "/", page: () => const Splash(), binding: SplashBinding()),
    GetPage(name: "/login", page: () => const Login(), binding: LoginBinding()),
    GetPage(
        name: "/signup", page: () => const Signup(), binding: SignupBinding()),
    GetPage(
        name: "/complete_account",
        page: () => const CompleteAccount(),
        binding: CompleteAccountBinding()),
    GetPage(
        name: "/complete_survey",
        page: () => const CompleteSurvey(),
        binding: CompleteSurveyBinding()),
    GetPage(name: "/root", page: () => const Root(), binding: RootBinding()),
    GetPage(name: "/home", page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(name: "/home4", page: () => Home4Screen(), binding: Home4Binding()),
    GetPage(name: "/home1", page: () => Home1Screen(), binding: Home1Binding()),
    GetPage(name: "/home3", page: () => Home3Screen(), binding: Home3Binding()),
    GetPage(name: "/home2", page: () => Home2Screen(), binding: Home2Binding()),
    GetPage(
        name: "/foodscreen", page: () => FoodScreen(), binding: FoodBinding()),
    GetPage(
        name: "/foodtracker",
        page: () => FoodTrackerScreen(),
        binding: FoodTrackerBinding()),
    GetPage(
        name: "/foodtracker1",
        page: () => FoodTracker1Screen(),
        binding: FoodTracker1Binding()),
    GetPage(name: "/sleep", page: () => SleepScreen(), binding: SleepBinding()),
    GetPage(
        name: "/receipe", page: () => RecipeScreen(), binding: RecipeBinding()),
    GetPage(
        name: "/religion",
        page: () => ReligionScreen(),
        binding: ReligionBinding()),
    GetPage(
        name: "/healthy",
        page: () => HealthyHabitsScreen(),
        binding: HealthyHabitsBinding()),
    GetPage(
        name: "/healthy1",
        page: () => HealthyHabits1Screen(),
        binding: HealthyHabits1Binding()),
    GetPage(
        name: "/meditation",
        page: () => MeditationScreen(),
        binding: MeditationBinding()),
    GetPage(name: "/news", page: () => NewsScreen(), binding: NewsBinding()),
    GetPage(name: "/news1", page: () => News1Screen(), binding: News1Binding()),
    GetPage(
        name: "/addbank",
        page: () => AddBankScreen(),
        binding: AddBankBinding()),
    GetPage(
        name: "/socialProfileMessage1Screen",
        page: () => SocialProfileMessage1Screen(),
        binding: SocialProfileMessage1Binding()),
  ];
}
