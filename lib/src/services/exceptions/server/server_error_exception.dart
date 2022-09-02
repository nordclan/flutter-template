/// Implement base class [Exception] to
/// map error which you need

/// Base server error
class ServerErrorException implements Exception {}

/// Error 404
class NotFoundException implements Exception {}

/// Dead token error
class UnauthorizedException implements Exception {}

/// Auth error
class AuthorizationException implements Exception {}

/// Actice session error
class ActiveSessionException implements Exception {}
