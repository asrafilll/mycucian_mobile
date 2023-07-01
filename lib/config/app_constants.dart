class AppConstants {
  static const appName = 'My Cucian';
  static const _host = '192.168.0.109:8000';
  static const baseURL = 'http://$_host/api';
  static const baseImageURL = 'http://$_host/storage';
}

enum LaundryStatusCategory {
  all,
  pickup,
  queue,
  process,
  washing,
  dried,
  ironed,
  done,
  delivery,
}
