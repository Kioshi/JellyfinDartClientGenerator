// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JellyfinAPI.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      Name: json['Name'] as String,
      ServerId: json['ServerId'] as String,
      ConnectUserName: json['ConnectUserName'] as String,
      ConnectUserId: json['ConnectUserId'] as String,
      ConnectLinkType: _$enumDecodeNullable(
          _$eConnectionLinkTypeEnumMap, json['ConnectLinkType']),
      Id: json['Id'] as String,
      PrimaryImageTag: json['PrimaryImageTag'] as String,
      HasPassword: json['HasPassword'] as bool,
      HasConfiguredPassword: json['HasConfiguredPassword'] as bool,
      HasConfiguredEasyPassword: json['HasConfiguredEasyPassword'] as bool,
      EnableAutoLogin: json['EnableAutoLogin'] as bool,
      LastLoginDate: _fromJson(json['LastLoginDate'] as String),
      LastActivityDate: _fromJson(json['LastActivityDate'] as String),
      Configuration: UserConfiguration.fromJson(
          json['Configuration'] as Map<String, dynamic>),
      Policy: UserPolicy.fromJson(json['Policy'] as Map<String, dynamic>),
      PrimaryImageAspectRatio:
          (json['PrimaryImageAspectRatio'] as num)?.toDouble());
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'Name': instance.Name,
      'ServerId': instance.ServerId,
      'ConnectUserName': instance.ConnectUserName,
      'ConnectUserId': instance.ConnectUserId,
      'ConnectLinkType': _$eConnectionLinkTypeEnumMap[instance.ConnectLinkType],
      'Id': instance.Id,
      'PrimaryImageTag': instance.PrimaryImageTag,
      'HasPassword': instance.HasPassword,
      'HasConfiguredPassword': instance.HasConfiguredPassword,
      'HasConfiguredEasyPassword': instance.HasConfiguredEasyPassword,
      'EnableAutoLogin': instance.EnableAutoLogin,
      'LastLoginDate': _toJson(instance.LastLoginDate),
      'LastActivityDate': _toJson(instance.LastActivityDate),
      'Configuration': instance.Configuration,
      'Policy': instance.Policy,
      'PrimaryImageAspectRatio': instance.PrimaryImageAspectRatio
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$eConnectionLinkTypeEnumMap = <eConnectionLinkType, dynamic>{
  eConnectionLinkType.LinkedUser: 'LinkedUser',
  eConnectionLinkType.Guest: 'Guest'
};

UserConfiguration _$UserConfigurationFromJson(Map<String, dynamic> json) {
  return UserConfiguration(
      AudioLanguagePreference: json['AudioLanguagePreference'] as String,
      PlayDefaultAudioTrack: json['PlayDefaultAudioTrack'] as bool,
      SubtitleLanguagePreference: json['SubtitleLanguagePreference'] as String,
      DisplayMissingEpisodes: json['DisplayMissingEpisodes'] as bool,
      GroupedFolders:
          (json['GroupedFolders'] as List).map((e) => e as String).toList(),
      SubtitleMode: json['SubtitleMode'] as String,
      DisplayCollectionsView: json['DisplayCollectionsView'] as bool,
      EnableLocalPassword: json['EnableLocalPassword'] as bool,
      OrderedViews:
          (json['OrderedViews'] as List).map((e) => e as String).toList(),
      LatestItemsExcludes: (json['LatestItemsExcludes'] as List)
          .map((e) => e as String)
          .toList(),
      MyMediaExcludes:
          (json['MyMediaExcludes'] as List).map((e) => e as String).toList(),
      HidePlayedInLatest: json['HidePlayedInLatest'] as bool,
      RememberAudioSelections: json['RememberAudioSelections'] as bool,
      RememberSubtitleSelections: json['RememberSubtitleSelections'] as bool,
      EnableNextEpisodeAutoPlay: json['EnableNextEpisodeAutoPlay'] as bool);
}

Map<String, dynamic> _$UserConfigurationToJson(UserConfiguration instance) =>
    <String, dynamic>{
      'AudioLanguagePreference': instance.AudioLanguagePreference,
      'PlayDefaultAudioTrack': instance.PlayDefaultAudioTrack,
      'SubtitleLanguagePreference': instance.SubtitleLanguagePreference,
      'DisplayMissingEpisodes': instance.DisplayMissingEpisodes,
      'GroupedFolders': instance.GroupedFolders,
      'SubtitleMode': instance.SubtitleMode,
      'DisplayCollectionsView': instance.DisplayCollectionsView,
      'EnableLocalPassword': instance.EnableLocalPassword,
      'OrderedViews': instance.OrderedViews,
      'LatestItemsExcludes': instance.LatestItemsExcludes,
      'MyMediaExcludes': instance.MyMediaExcludes,
      'HidePlayedInLatest': instance.HidePlayedInLatest,
      'RememberAudioSelections': instance.RememberAudioSelections,
      'RememberSubtitleSelections': instance.RememberSubtitleSelections,
      'EnableNextEpisodeAutoPlay': instance.EnableNextEpisodeAutoPlay
    };

UserPolicy _$UserPolicyFromJson(Map<String, dynamic> json) {
  return UserPolicy(
      IsAdministrator: json['IsAdministrator'] as bool,
      IsHidden: json['IsHidden'] as bool,
      IsDisabled: json['IsDisabled'] as bool,
      MaxParentalRating: json['MaxParentalRating'] as int,
      BlockedTags:
          (json['BlockedTags'] as List).map((e) => e as String).toList(),
      EnableUserPreferenceAccess: json['EnableUserPreferenceAccess'] as bool,
      AccessSchedules: (json['AccessSchedules'] as List)
          .map((e) => AccessSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      BlockUnratedItems:
          (json['BlockUnratedItems'] as List).map((e) => e as String).toList(),
      EnableRemoteControlOfOtherUsers:
          json['EnableRemoteControlOfOtherUsers'] as bool,
      EnableSharedDeviceControl: json['EnableSharedDeviceControl'] as bool,
      EnableRemoteAccess: json['EnableRemoteAccess'] as bool,
      EnableLiveTvManagement: json['EnableLiveTvManagement'] as bool,
      EnableLiveTvAccess: json['EnableLiveTvAccess'] as bool,
      EnableMediaPlayback: json['EnableMediaPlayback'] as bool,
      EnableAudioPlaybackTranscoding:
          json['EnableAudioPlaybackTranscoding'] as bool,
      EnableVideoPlaybackTranscoding:
          json['EnableVideoPlaybackTranscoding'] as bool,
      EnablePlaybackRemuxing: json['EnablePlaybackRemuxing'] as bool,
      EnableContentDeletion: json['EnableContentDeletion'] as bool,
      EnableContentDeletionFromFolders:
          (json['EnableContentDeletionFromFolders'] as List)
              .map((e) => e as String)
              .toList(),
      EnableContentDownloading: json['EnableContentDownloading'] as bool,
      EnableSyncTranscoding: json['EnableSyncTranscoding'] as bool,
      EnableMediaConversion: json['EnableMediaConversion'] as bool,
      EnabledDevices:
          (json['EnabledDevices'] as List).map((e) => e as String).toList(),
      EnableAllDevices: json['EnableAllDevices'] as bool,
      EnabledChannels:
          (json['EnabledChannels'] as List).map((e) => e as String).toList(),
      EnableAllChannels: json['EnableAllChannels'] as bool,
      EnabledFolders:
          (json['EnabledFolders'] as List).map((e) => e as String).toList(),
      EnableAllFolders: json['EnableAllFolders'] as bool,
      InvalidLoginAttemptCount: json['InvalidLoginAttemptCount'] as int,
      EnablePublicSharing: json['EnablePublicSharing'] as bool,
      BlockedMediaFolders: (json['BlockedMediaFolders'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      BlockedChannels:
          (json['BlockedChannels'] as List)?.map((e) => e as String)?.toList(),
      RemoteClientBitrateLimit: json['RemoteClientBitrateLimit'] as int,
      AuthenticationProviderId: json['AuthenticationProviderId'] as String);
}

Map<String, dynamic> _$UserPolicyToJson(UserPolicy instance) =>
    <String, dynamic>{
      'IsAdministrator': instance.IsAdministrator,
      'IsHidden': instance.IsHidden,
      'IsDisabled': instance.IsDisabled,
      'MaxParentalRating': instance.MaxParentalRating,
      'BlockedTags': instance.BlockedTags,
      'EnableUserPreferenceAccess': instance.EnableUserPreferenceAccess,
      'AccessSchedules': instance.AccessSchedules,
      'BlockUnratedItems': instance.BlockUnratedItems,
      'EnableRemoteControlOfOtherUsers':
          instance.EnableRemoteControlOfOtherUsers,
      'EnableSharedDeviceControl': instance.EnableSharedDeviceControl,
      'EnableRemoteAccess': instance.EnableRemoteAccess,
      'EnableLiveTvManagement': instance.EnableLiveTvManagement,
      'EnableLiveTvAccess': instance.EnableLiveTvAccess,
      'EnableMediaPlayback': instance.EnableMediaPlayback,
      'EnableAudioPlaybackTranscoding': instance.EnableAudioPlaybackTranscoding,
      'EnableVideoPlaybackTranscoding': instance.EnableVideoPlaybackTranscoding,
      'EnablePlaybackRemuxing': instance.EnablePlaybackRemuxing,
      'EnableContentDeletion': instance.EnableContentDeletion,
      'EnableContentDeletionFromFolders':
          instance.EnableContentDeletionFromFolders,
      'EnableContentDownloading': instance.EnableContentDownloading,
      'EnableSyncTranscoding': instance.EnableSyncTranscoding,
      'EnableMediaConversion': instance.EnableMediaConversion,
      'EnabledDevices': instance.EnabledDevices,
      'EnableAllDevices': instance.EnableAllDevices,
      'EnabledChannels': instance.EnabledChannels,
      'EnableAllChannels': instance.EnableAllChannels,
      'EnabledFolders': instance.EnabledFolders,
      'EnableAllFolders': instance.EnableAllFolders,
      'InvalidLoginAttemptCount': instance.InvalidLoginAttemptCount,
      'EnablePublicSharing': instance.EnablePublicSharing,
      'BlockedMediaFolders': instance.BlockedMediaFolders,
      'BlockedChannels': instance.BlockedChannels,
      'RemoteClientBitrateLimit': instance.RemoteClientBitrateLimit,
      'AuthenticationProviderId': instance.AuthenticationProviderId
    };

AccessSchedule _$AccessScheduleFromJson(Map<String, dynamic> json) {
  return AccessSchedule(
      DayOfWeek: _$enumDecode(_$eDayOfWeekEnumMap, json['DayOfWeek']),
      StartHour: (json['StartHour'] as num).toDouble(),
      EndHour: (json['EndHour'] as num).toDouble());
}

Map<String, dynamic> _$AccessScheduleToJson(AccessSchedule instance) =>
    <String, dynamic>{
      'DayOfWeek': _$eDayOfWeekEnumMap[instance.DayOfWeek],
      'StartHour': instance.StartHour,
      'EndHour': instance.EndHour
    };

const _$eDayOfWeekEnumMap = <eDayOfWeek, dynamic>{
  eDayOfWeek.Sunday: 'Sunday',
  eDayOfWeek.Monday: 'Monday',
  eDayOfWeek.Tuesday: 'Tuesday',
  eDayOfWeek.Wednesday: 'Wednesday',
  eDayOfWeek.Thursday: 'Thursday',
  eDayOfWeek.Friday: 'Friday',
  eDayOfWeek.Saturday: 'Saturday',
  eDayOfWeek.Everyday: 'Everyday',
  eDayOfWeek.Weekday: 'Weekday',
  eDayOfWeek.Weekend: 'Weekend'
};
