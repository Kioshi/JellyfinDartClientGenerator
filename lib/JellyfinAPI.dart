import 'package:json_annotation/json_annotation.dart';

import 'package:intl/intl.dart';

part 'JellyfinAPI.g.dart';


//2019-04-29T09:06:32.5457794Z
final _dateFormatter = new DateFormat('yyyy-MM-ddTHH:mm:ss.mmmuuuZ');
DateTime _fromJson(String date){
  if (date == null)
    return null;
  return _dateFormatter.parse(date);
}
String _toJson(DateTime date)
{
  if (date == null)
    return null;
  return _dateFormatter.format(date);
}

enum eConnectionLinkType
{
  LinkedUser, Guest
}

@JsonSerializable(nullable: false)
class User {
  final String Name;
  final String ServerId;
  final String ConnectUserName;
  final String ConnectUserId;
  @JsonKey(nullable: true)
  final eConnectionLinkType ConnectLinkType;
  final String Id;
  final String PrimaryImageTag;
  final bool HasPassword;
  final bool HasConfiguredPassword;
  final bool HasConfiguredEasyPassword;
  final bool EnableAutoLogin;
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final DateTime LastLoginDate;
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final DateTime LastActivityDate;
  final UserConfiguration Configuration;
  final UserPolicy Policy;
  @JsonKey(nullable: true)
  final double PrimaryImageAspectRatio;


  User({this.Name, this.ServerId, this.ConnectUserName, this.ConnectUserId,
      this.ConnectLinkType, this.Id, this.PrimaryImageTag, this.HasPassword,
      this.HasConfiguredPassword, this.HasConfiguredEasyPassword,
      this.EnableAutoLogin, this.LastLoginDate, this.LastActivityDate,
      this.Configuration, this.Policy, this.PrimaryImageAspectRatio});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

enum eSubtitleMode{
  Default, Always, OnlyForced, None, Smart
}

@JsonSerializable(nullable: false)
class UserConfiguration {
  final String AudioLanguagePreference;
  final bool PlayDefaultAudioTrack;
  final String SubtitleLanguagePreference;
  final bool DisplayMissingEpisodes;
  final List<String> GroupedFolders;
  final String SubtitleMode;
  final bool DisplayCollectionsView;
  final bool EnableLocalPassword;
  final List<String> OrderedViews;
  final List<String> LatestItemsExcludes;
  final List<String> MyMediaExcludes;
  final bool HidePlayedInLatest;
  final bool RememberAudioSelections;
  final bool RememberSubtitleSelections;
  final bool EnableNextEpisodeAutoPlay;


  UserConfiguration({this.AudioLanguagePreference, this.PlayDefaultAudioTrack,
    this.SubtitleLanguagePreference, this.DisplayMissingEpisodes,
    this.GroupedFolders, this.SubtitleMode, this.DisplayCollectionsView,
    this.EnableLocalPassword, this.OrderedViews, this.LatestItemsExcludes,
    this.MyMediaExcludes, this.HidePlayedInLatest,
    this.RememberAudioSelections, this.RememberSubtitleSelections,
    this.EnableNextEpisodeAutoPlay});

  factory UserConfiguration.fromJson(Map<String, dynamic> json) => _$UserConfigurationFromJson(json);
  Map<String, dynamic> toJson() => _$UserConfigurationToJson(this);
}

enum eBlockUnratedItems
{
  Movie, Trailer, Series, Music, Game, Book, LiveTvChannel, LiveTvProgram, ChannelContent, Other
}

@JsonSerializable(nullable: false)
class UserPolicy {

  final bool IsAdministrator;
  final bool IsHidden;
  final bool IsDisabled;
  final int MaxParentalRating;
  final List<String> BlockedTags;
  final bool EnableUserPreferenceAccess;
  final List<AccessSchedule> AccessSchedules;
  final List<String> BlockUnratedItems;
  final bool EnableRemoteControlOfOtherUsers;
  final bool EnableSharedDeviceControl;
  final bool EnableRemoteAccess;
  final bool EnableLiveTvManagement;
  final bool EnableLiveTvAccess;
  final bool EnableMediaPlayback;
  final bool EnableAudioPlaybackTranscoding;
  final bool EnableVideoPlaybackTranscoding;
  final bool EnablePlaybackRemuxing;
  final bool EnableContentDeletion;
  final List<String> EnableContentDeletionFromFolders;
  final bool EnableContentDownloading;
  final bool EnableSyncTranscoding;
  final bool EnableMediaConversion;
  final List<String> EnabledDevices;
  final bool EnableAllDevices;
  final List<String> EnabledChannels;
  final bool EnableAllChannels;
  final List<String> EnabledFolders;
  final bool EnableAllFolders;
  final int InvalidLoginAttemptCount;
  final bool EnablePublicSharing;
  @JsonKey(nullable: true)
  final List<String> BlockedMediaFolders;
  @JsonKey(nullable: true)
  final List<String> BlockedChannels;
  final int RemoteClientBitrateLimit;
  final String AuthenticationProviderId;


  UserPolicy({this.IsAdministrator, this.IsHidden, this.IsDisabled,
      this.MaxParentalRating, this.BlockedTags, this.EnableUserPreferenceAccess,
      this.AccessSchedules, this.BlockUnratedItems,
      this.EnableRemoteControlOfOtherUsers, this.EnableSharedDeviceControl,
      this.EnableRemoteAccess, this.EnableLiveTvManagement,
      this.EnableLiveTvAccess, this.EnableMediaPlayback,
      this.EnableAudioPlaybackTranscoding, this.EnableVideoPlaybackTranscoding,
      this.EnablePlaybackRemuxing, this.EnableContentDeletion,
      this.EnableContentDeletionFromFolders, this.EnableContentDownloading,
      this.EnableSyncTranscoding, this.EnableMediaConversion,
      this.EnabledDevices, this.EnableAllDevices, this.EnabledChannels,
      this.EnableAllChannels, this.EnabledFolders, this.EnableAllFolders,
      this.InvalidLoginAttemptCount, this.EnablePublicSharing,
      this.BlockedMediaFolders, this.BlockedChannels,
      this.RemoteClientBitrateLimit, this.AuthenticationProviderId});

  factory UserPolicy.fromJson(Map<String, dynamic> json) => _$UserPolicyFromJson(json);
  Map<String, dynamic> toJson() => _$UserPolicyToJson(this);
}

enum eDayOfWeek
{
  Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Everyday, Weekday, Weekend
}

@JsonSerializable(nullable: false)
class AccessSchedule {
  final eDayOfWeek DayOfWeek;
  final double StartHour;
  final double EndHour;


  AccessSchedule({this.DayOfWeek, this.StartHour, this.EndHour});

  factory AccessSchedule.fromJson(Map<String, dynamic> json) => _$AccessScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$AccessScheduleToJson(this);
}
