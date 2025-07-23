enum Env {
  dev,
  uat,
  prod,
}

class Environment {
  static Env env = Env.dev;

  static bool get isDev => env == Env.dev;
  static bool get isUat => env == Env.uat;
  static bool get isProd => env == Env.prod;
}
