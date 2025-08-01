import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ApiConfig {
  static String get baseUrl => dotenv.env['DEBUG']! == "true"
      ? dotenv.env['API_URL_DEV']!
      : dotenv.env['API_URL_PROD']!;

  // Rental Unit Endpoints
  static const String rentalUnitBasePath = "/rental-unit";
  static const String rentalUnitAdminPath = "/rental-unit/admin";
  static const String rentalUnitAllPath = "/rental-unit/all";

  // Reservation Endpoints
  static const String reservationBasePath = "/reservation";
  static const String reservationAllPath = "/reservation/all";
  static const String reservationAllInDateRange = "/reservation/all/date-range";
  static const String reservationUpcomingPath = "/reservation/upcoming";
  static const String reservationAvailabilityPath = "/reservation/availability";

  // Customer Endpoints
  static const String customerBasePath = "/customer";
  static const String customerAllPath = "/customer/all";
  static const String customerSearchPath = "/customer/search";

  // Admin Endpoints
  static const String adminBasePath = "/admin";
  static const String adminAllPath = "/admin/all";
  static const String adminIsAdminPath = "/admin/is-admin";

  // Statistics Endpoints
  static const String statisticsBasePath = "/statistics";
  static const String statisticsReservationsByWeekdayPath =
      "/statistics/reservations-by-weekday";

  // Bot User Endpoints
  static const String botUserBasePath = "/bot-user";
}
