//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SystemConfigMetricsDto {
  /// Returns a new [SystemConfigMetricsDto] instance.
  SystemConfigMetricsDto({
    required this.assetCount,
    required this.enabled,
    required this.serverInfo,
  });

  MetricsAssetCountConfig assetCount;

  bool enabled;

  MetricServerInfoConfig serverInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SystemConfigMetricsDto &&
     other.assetCount == assetCount &&
     other.enabled == enabled &&
     other.serverInfo == serverInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assetCount.hashCode) +
    (enabled.hashCode) +
    (serverInfo.hashCode);

  @override
  String toString() => 'SystemConfigMetricsDto[assetCount=$assetCount, enabled=$enabled, serverInfo=$serverInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assetCount'] = this.assetCount;
      json[r'enabled'] = this.enabled;
      json[r'serverInfo'] = this.serverInfo;
    return json;
  }

  /// Returns a new [SystemConfigMetricsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemConfigMetricsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SystemConfigMetricsDto(
        assetCount: MetricsAssetCountConfig.fromJson(json[r'assetCount'])!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        serverInfo: MetricServerInfoConfig.fromJson(json[r'serverInfo'])!,
      );
    }
    return null;
  }

  static List<SystemConfigMetricsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SystemConfigMetricsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemConfigMetricsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemConfigMetricsDto> mapFromJson(dynamic json) {
    final map = <String, SystemConfigMetricsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemConfigMetricsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemConfigMetricsDto-objects as value to a dart map
  static Map<String, List<SystemConfigMetricsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SystemConfigMetricsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SystemConfigMetricsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assetCount',
    'enabled',
    'serverInfo',
  };
}
