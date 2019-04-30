import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:async';
import 'package:JellyfinAPI/JellyfinAPI.dart';
import 'package:open_api/v3.dart';

main(List<String> arguments) async{

  const String address = "https://jellyfin.severus.site/emby/";

  Dio dio = Dio(Options(baseUrl: address));
  String data = '[{"Name":"Dark Ein","ServerId":"8c07d3e7bc5240e5b2a9b0338df1bc49","Id":"95653f92d76f465aab782a269e3b8129","HasPassword":true,"HasConfiguredPassword":true,"HasConfiguredEasyPassword":true,"Configuration":{"PlayDefaultAudioTrack":true,"DisplayMissingEpisodes":false,"GroupedFolders":[],"SubtitleMode":"Default","DisplayCollectionsView":false,"EnableLocalPassword":false,"OrderedViews":[],"LatestItemsExcludes":[],"MyMediaExcludes":[],"HidePlayedInLatest":true,"RememberAudioSelections":true,"RememberSubtitleSelections":true,"EnableNextEpisodeAutoPlay":true},"Policy":{"IsAdministrator":false,"IsHidden":false,"IsDisabled":false,"BlockedTags":[],"EnableUserPreferenceAccess":true,"AccessSchedules":[],"BlockUnratedItems":[],"EnableRemoteControlOfOtherUsers":false,"EnableSharedDeviceControl":true,"EnableRemoteAccess":true,"EnableLiveTvManagement":true,"EnableLiveTvAccess":true,"EnableMediaPlayback":true,"EnableAudioPlaybackTranscoding":true,"EnableVideoPlaybackTranscoding":true,"EnablePlaybackRemuxing":true,"EnableContentDeletion":true,"EnableContentDeletionFromFolders":[],"EnableContentDownloading":true,"EnableSyncTranscoding":true,"EnableMediaConversion":true,"EnabledDevices":[],"EnableAllDevices":true,"EnabledChannels":[],"EnableAllChannels":true,"EnabledFolders":[],"EnableAllFolders":true,"InvalidLoginAttemptCount":0,"LoginAttemptsBeforeLockout":-1,"EnablePublicSharing":true,"RemoteClientBitrateLimit":0,"AuthenticationProviderId":"Emby.Server.Implementations.Library.DefaultAuthenticationProvider"}},{"Name":"HHrom","ServerId":"8c07d3e7bc5240e5b2a9b0338df1bc49","Id":"7bb7ed75725b46efb22df3333ccb5073","HasPassword":true,"HasConfiguredPassword":true,"HasConfiguredEasyPassword":true,"Configuration":{"PlayDefaultAudioTrack":true,"DisplayMissingEpisodes":false,"GroupedFolders":[],"SubtitleMode":"Default","DisplayCollectionsView":false,"EnableLocalPassword":false,"OrderedViews":[],"LatestItemsExcludes":[],"MyMediaExcludes":[],"HidePlayedInLatest":true,"RememberAudioSelections":true,"RememberSubtitleSelections":true,"EnableNextEpisodeAutoPlay":true},"Policy":{"IsAdministrator":false,"IsHidden":false,"IsDisabled":false,"BlockedTags":[],"EnableUserPreferenceAccess":true,"AccessSchedules":[],"BlockUnratedItems":[],"EnableRemoteControlOfOtherUsers":false,"EnableSharedDeviceControl":true,"EnableRemoteAccess":true,"EnableLiveTvManagement":true,"EnableLiveTvAccess":true,"EnableMediaPlayback":true,"EnableAudioPlaybackTranscoding":true,"EnableVideoPlaybackTranscoding":true,"EnablePlaybackRemuxing":true,"EnableContentDeletion":true,"EnableContentDeletionFromFolders":[],"EnableContentDownloading":true,"EnableSyncTranscoding":true,"EnableMediaConversion":true,"EnabledDevices":[],"EnableAllDevices":true,"EnabledChannels":[],"EnableAllChannels":true,"EnabledFolders":[],"EnableAllFolders":true,"InvalidLoginAttemptCount":0,"LoginAttemptsBeforeLockout":-1,"EnablePublicSharing":true,"RemoteClientBitrateLimit":0,"AuthenticationProviderId":"Emby.Server.Implementations.Library.DefaultAuthenticationProvider"}},{"Name":"Klexik","ServerId":"8c07d3e7bc5240e5b2a9b0338df1bc49","Id":"5312bd26e97b421aa06b1865af238f07","HasPassword":true,"HasConfiguredPassword":true,"HasConfiguredEasyPassword":true,"LastLoginDate":"2019-04-29T09:06:32.5457794Z","LastActivityDate":"2019-04-29T09:07:34.6259863Z","Configuration":{"PlayDefaultAudioTrack":true,"DisplayMissingEpisodes":false,"GroupedFolders":[],"SubtitleMode":"Default","DisplayCollectionsView":false,"EnableLocalPassword":false,"OrderedViews":[],"LatestItemsExcludes":[],"MyMediaExcludes":[],"HidePlayedInLatest":true,"RememberAudioSelections":true,"RememberSubtitleSelections":true,"EnableNextEpisodeAutoPlay":true},"Policy":{"IsAdministrator":true,"IsHidden":false,"IsDisabled":false,"BlockedTags":[],"EnableUserPreferenceAccess":true,"AccessSchedules":[],"BlockUnratedItems":[],"EnableRemoteControlOfOtherUsers":false,"EnableSharedDeviceControl":true,"EnableRemoteAccess":true,"EnableLiveTvManagement":true,"EnableLiveTvAccess":true,"EnableMediaPlayback":true,"EnableAudioPlaybackTranscoding":true,"EnableVideoPlaybackTranscoding":true,"EnablePlaybackRemuxing":true,"EnableContentDeletion":true,"EnableContentDeletionFromFolders":[],"EnableContentDownloading":true,"EnableSyncTranscoding":true,"EnableMediaConversion":true,"EnabledDevices":[],"EnableAllDevices":true,"EnabledChannels":[],"EnableAllChannels":true,"EnabledFolders":[],"EnableAllFolders":true,"InvalidLoginAttemptCount":4,"LoginAttemptsBeforeLockout":-1,"EnablePublicSharing":true,"RemoteClientBitrateLimit":0,"AuthenticationProviderId":"Emby.Server.Implementations.Library.DefaultAuthenticationProvider"}},{"Name":"Qwerty","ServerId":"8c07d3e7bc5240e5b2a9b0338df1bc49","Id":"3f8ac4cb5f1744b5ad28f8b25d984e4c","HasPassword":true,"HasConfiguredPassword":true,"HasConfiguredEasyPassword":true,"LastLoginDate":"2019-04-25T16:24:27.6248743Z","LastActivityDate":"2019-04-25T17:57:03.6189279Z","Configuration":{"PlayDefaultAudioTrack":true,"DisplayMissingEpisodes":false,"GroupedFolders":[],"SubtitleMode":"Default","DisplayCollectionsView":false,"EnableLocalPassword":false,"OrderedViews":[],"LatestItemsExcludes":[],"MyMediaExcludes":[],"HidePlayedInLatest":true,"RememberAudioSelections":true,"RememberSubtitleSelections":true,"EnableNextEpisodeAutoPlay":true},"Policy":{"IsAdministrator":false,"IsHidden":false,"IsDisabled":false,"BlockedTags":[],"EnableUserPreferenceAccess":true,"AccessSchedules":[],"BlockUnratedItems":[],"EnableRemoteControlOfOtherUsers":false,"EnableSharedDeviceControl":true,"EnableRemoteAccess":true,"EnableLiveTvManagement":true,"EnableLiveTvAccess":true,"EnableMediaPlayback":true,"EnableAudioPlaybackTranscoding":true,"EnableVideoPlaybackTranscoding":true,"EnablePlaybackRemuxing":true,"EnableContentDeletion":true,"EnableContentDeletionFromFolders":[],"EnableContentDownloading":true,"EnableSyncTranscoding":true,"EnableMediaConversion":true,"EnabledDevices":[],"EnableAllDevices":true,"EnabledChannels":[],"EnableAllChannels":true,"EnabledFolders":[],"EnableAllFolders":true,"InvalidLoginAttemptCount":1,"LoginAttemptsBeforeLockout":-1,"EnablePublicSharing":true,"RemoteClientBitrateLimit":0,"AuthenticationProviderId":"Emby.Server.Implementations.Library.DefaultAuthenticationProvider"}}]';
  //String data = (await dio.get("Users/Public")).data.toString();
  var json = jsonDecode(data);
  User user = User.fromJson(json[0]);

  final file = new File("embyapi.json");
  final contents = await file.readAsString();
  final doc = new APIDocument.fromMap(jsonDecode(contents));

  doc.components.schemas.forEach((String name, APISchemaObject data){
    print('@JsonSerializable(nullable: false)');
    print('class $name{');
    List<String> names = [];
    data.properties.forEach((String propertyName, APISchemaObject property){
      names.add(propertyName);
      if (property.isNullable)
      {
        print('\t@JsonKey(nullable: true)');
      }
      print('\t${getType(property, propertyName)} $propertyName;');
    });
    print('}');
    print('');
  });

  // Print enums
  enums.forEach((String enumName, List<String> list){
    print('enum $enumName {');
    print('\t${list.toString().replaceAll(RegExp(r"[\[\]]"),"")}');
    print('}');
    print('');
  });

}

Map<String, List<String>> enums = {};

String resolveEnum(String propertyName, List<String> list)
{
  for(String name in enums.keys)
  {
    List<String> values = enums[name];
    if (list.length != values.length)
    {
      continue;
    }
    int i = 0;
    for (; i < list.length; i++)
    {
      if (list[i] != values[i])
      {
        break;
      }
    }
    if (i == list.length)
      return name;
  };

  String enumName = 'e$propertyName';
  while (enums.containsKey(enumName))
  {
    enumName += '_';
  }
  enums[enumName] = list;
  return enumName;
}

String getType(APISchemaObject obj, String objName)
{
  switch(obj.type)
  {
    case APIType.array:
      return 'List<${getType(obj.items, objName)}>';
    case APIType.string:
      if (obj.format != null)
      {
        switch(obj.format)
        {
          //TODO
          case 'guid':
          case 'date-time':
          case 'binary':
            break;
        }
      }
      if (obj.enumerated != null)
      {
        return resolveEnum(objName, List<String>.from(obj.enumerated));
      }
      return 'String';
      break;
    case APIType.number:
    case APIType.integer:
      if (obj.format != null && (obj.format == "double" || obj.format == "float"))
      {
        return 'double';
      }
      // int32 int64 double
      else
      {
        return 'int';
      }
      break;
    case APIType.boolean:
      return 'bool';
    case APIType.object:
      if (obj.referenceURI == null)
      {
        return 'Map<String,${getType(obj.additionalPropertySchema, objName)}>';
      }
      return obj.referenceURI.pathSegments.last;
  }

}
