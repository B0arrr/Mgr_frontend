class Environment {
  static const environment = String.fromEnvironment('env', defaultValue: 'dev');
  static const baseUrl = String.fromEnvironment('base_url', defaultValue: 'http://localhost:8000/api/v1');
}
