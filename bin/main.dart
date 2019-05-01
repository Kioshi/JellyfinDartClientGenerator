import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:async';
import 'package:JellyfinAPI/JellyfinAPI.dart';
import 'package:open_api/v3.dart';
import 'package:strings/strings.dart';


main(List<String> arguments) async{

  const String address = "https://jellyfin.severus.site/emby/";

  Dio dio = Dio(new Options(
    baseUrl: address,

    headers: {
      HttpHeaders.userAgentHeader: "dio",
      "X-Emby-Authorization": 'MediaBrowser Client="Jellyfin Custom Web", Device="Chrome", DeviceId="abc", Version="0.0.1"'
    },
    responseType: ResponseType.JSON
  ));

  String data = '[{"Name":"Dark Ein","ServerId":"8c07d3e7bc5240e5b2a9b0338df1bc49","Id":"95653f92d76f465aab782a269e3b8129","HasPassword":true,"HasConfiguredPassword":true,"HasConfiguredEasyPassword":true,"Configuration":{"PlayDefaultAudioTrack":true,"DisplayMissingEpisodes":false,"GroupedFolders":[],"SubtitleMode":"Default","DisplayCollectionsView":false,"EnableLocalPassword":false,"OrderedViews":[],"LatestItemsExcludes":[],"MyMediaExcludes":[],"HidePlayedInLatest":true,"RememberAudioSelections":true,"RememberSubtitleSelections":true,"EnableNextEpisodeAutoPlay":true},"Policy":{"IsAdministrator":false,"IsHidden":false,"IsDisabled":false,"BlockedTags":[],"EnableUserPreferenceAccess":true,"AccessSchedules":[],"BlockUnratedItems":[],"EnableRemoteControlOfOtherUsers":false,"EnableSharedDeviceControl":true,"EnableRemoteAccess":true,"EnableLiveTvManagement":true,"EnableLiveTvAccess":true,"EnableMediaPlayback":true,"EnableAudioPlaybackTranscoding":true,"EnableVideoPlaybackTranscoding":true,"EnablePlaybackRemuxing":true,"EnableContentDeletion":true,"EnableContentDeletionFromFolders":[],"EnableContentDownloading":true,"EnableSyncTranscoding":true,"EnableMediaConversion":true,"EnabledDevices":[],"EnableAllDevices":true,"EnabledChannels":[],"EnableAllChannels":true,"EnabledFolders":[],"EnableAllFolders":true,"InvalidLoginAttemptCount":0,"LoginAttemptsBeforeLockout":-1,"EnablePublicSharing":true,"RemoteClientBitrateLimit":0,"AuthenticationProviderId":"Emby.Server.Implementations.Library.DefaultAuthenticationProvider"}},{"Name":"HHrom","ServerId":"8c07d3e7bc5240e5b2a9b0338df1bc49","Id":"7bb7ed75725b46efb22df3333ccb5073","HasPassword":true,"HasConfiguredPassword":true,"HasConfiguredEasyPassword":true,"Configuration":{"PlayDefaultAudioTrack":true,"DisplayMissingEpisodes":false,"GroupedFolders":[],"SubtitleMode":"Default","DisplayCollectionsView":false,"EnableLocalPassword":false,"OrderedViews":[],"LatestItemsExcludes":[],"MyMediaExcludes":[],"HidePlayedInLatest":true,"RememberAudioSelections":true,"RememberSubtitleSelections":true,"EnableNextEpisodeAutoPlay":true},"Policy":{"IsAdministrator":false,"IsHidden":false,"IsDisabled":false,"BlockedTags":[],"EnableUserPreferenceAccess":true,"AccessSchedules":[],"BlockUnratedItems":[],"EnableRemoteControlOfOtherUsers":false,"EnableSharedDeviceControl":true,"EnableRemoteAccess":true,"EnableLiveTvManagement":true,"EnableLiveTvAccess":true,"EnableMediaPlayback":true,"EnableAudioPlaybackTranscoding":true,"EnableVideoPlaybackTranscoding":true,"EnablePlaybackRemuxing":true,"EnableContentDeletion":true,"EnableContentDeletionFromFolders":[],"EnableContentDownloading":true,"EnableSyncTranscoding":true,"EnableMediaConversion":true,"EnabledDevices":[],"EnableAllDevices":true,"EnabledChannels":[],"EnableAllChannels":true,"EnabledFolders":[],"EnableAllFolders":true,"InvalidLoginAttemptCount":0,"LoginAttemptsBeforeLockout":-1,"EnablePublicSharing":true,"RemoteClientBitrateLimit":0,"AuthenticationProviderId":"Emby.Server.Implementations.Library.DefaultAuthenticationProvider"}},{"Name":"Klexik","ServerId":"8c07d3e7bc5240e5b2a9b0338df1bc49","Id":"5312bd26e97b421aa06b1865af238f07","HasPassword":true,"HasConfiguredPassword":true,"HasConfiguredEasyPassword":true,"LastLoginDate":"2019-04-29T09:06:32.5457794Z","LastActivityDate":"2019-04-29T09:07:34.6259863Z","Configuration":{"PlayDefaultAudioTrack":true,"DisplayMissingEpisodes":false,"GroupedFolders":[],"SubtitleMode":"Default","DisplayCollectionsView":false,"EnableLocalPassword":false,"OrderedViews":[],"LatestItemsExcludes":[],"MyMediaExcludes":[],"HidePlayedInLatest":true,"RememberAudioSelections":true,"RememberSubtitleSelections":true,"EnableNextEpisodeAutoPlay":true},"Policy":{"IsAdministrator":true,"IsHidden":false,"IsDisabled":false,"BlockedTags":[],"EnableUserPreferenceAccess":true,"AccessSchedules":[],"BlockUnratedItems":[],"EnableRemoteControlOfOtherUsers":false,"EnableSharedDeviceControl":true,"EnableRemoteAccess":true,"EnableLiveTvManagement":true,"EnableLiveTvAccess":true,"EnableMediaPlayback":true,"EnableAudioPlaybackTranscoding":true,"EnableVideoPlaybackTranscoding":true,"EnablePlaybackRemuxing":true,"EnableContentDeletion":true,"EnableContentDeletionFromFolders":[],"EnableContentDownloading":true,"EnableSyncTranscoding":true,"EnableMediaConversion":true,"EnabledDevices":[],"EnableAllDevices":true,"EnabledChannels":[],"EnableAllChannels":true,"EnabledFolders":[],"EnableAllFolders":true,"InvalidLoginAttemptCount":4,"LoginAttemptsBeforeLockout":-1,"EnablePublicSharing":true,"RemoteClientBitrateLimit":0,"AuthenticationProviderId":"Emby.Server.Implementations.Library.DefaultAuthenticationProvider"}},{"Name":"Qwerty","ServerId":"8c07d3e7bc5240e5b2a9b0338df1bc49","Id":"3f8ac4cb5f1744b5ad28f8b25d984e4c","HasPassword":true,"HasConfiguredPassword":true,"HasConfiguredEasyPassword":true,"LastLoginDate":"2019-04-25T16:24:27.6248743Z","LastActivityDate":"2019-04-25T17:57:03.6189279Z","Configuration":{"PlayDefaultAudioTrack":true,"DisplayMissingEpisodes":false,"GroupedFolders":[],"SubtitleMode":"Default","DisplayCollectionsView":false,"EnableLocalPassword":false,"OrderedViews":[],"LatestItemsExcludes":[],"MyMediaExcludes":[],"HidePlayedInLatest":true,"RememberAudioSelections":true,"RememberSubtitleSelections":true,"EnableNextEpisodeAutoPlay":true},"Policy":{"IsAdministrator":false,"IsHidden":false,"IsDisabled":false,"BlockedTags":[],"EnableUserPreferenceAccess":true,"AccessSchedules":[],"BlockUnratedItems":[],"EnableRemoteControlOfOtherUsers":false,"EnableSharedDeviceControl":true,"EnableRemoteAccess":true,"EnableLiveTvManagement":true,"EnableLiveTvAccess":true,"EnableMediaPlayback":true,"EnableAudioPlaybackTranscoding":true,"EnableVideoPlaybackTranscoding":true,"EnablePlaybackRemuxing":true,"EnableContentDeletion":true,"EnableContentDeletionFromFolders":[],"EnableContentDownloading":true,"EnableSyncTranscoding":true,"EnableMediaConversion":true,"EnabledDevices":[],"EnableAllDevices":true,"EnabledChannels":[],"EnableAllChannels":true,"EnabledFolders":[],"EnableAllFolders":true,"InvalidLoginAttemptCount":1,"LoginAttemptsBeforeLockout":-1,"EnablePublicSharing":true,"RemoteClientBitrateLimit":0,"AuthenticationProviderId":"Emby.Server.Implementations.Library.DefaultAuthenticationProvider"}}]';
  //String data = (await dio.get("Users/Public")).data.toString();
  var json = jsonDecode(data);
  User user = User.fromJson(json[0]);

  final file = new File("embyapi.json");
  final contents = await file.readAsString();
  final doc = new APIDocument.fromMap(jsonDecode(contents));

  doc.components.schemas.forEach((String originalName, APISchemaObject data){
    String name = originalName.replaceAll(RegExp('[\\.\\-]'), "_");
    /*if (name == "TranscodingInfo")
    {
      name += '_';
    }*/
    print('@JsonSerializable(nullable: ${data.isNullable})');
    print('class $name{');
    List<String> names = [];
    data.properties.forEach((String origPropertyName, APISchemaObject property){
      Map<String, String> attributes = {};
      String propertyName = origPropertyName;
      if (startsWithUpperCase(propertyName))
      {
        attributes['name'] = '"$propertyName"';
        propertyName = '${propertyName[0].toLowerCase()}${propertyName.substring(1)}';
      }
      names.add(propertyName);
      String type = getType(property, propertyName, name);
      /*if (type == "TranscodingInfo")
      {
        type += '_';
      }*/
      if (property.isNullable)
      {
        attributes["nullable"] = "true";
      }
      if (type.contains("DateTime"))
      {
        attributes["fromJson"] = "dateTimeFromJson";
        attributes["toJson"] = "dateTimeToJson";
      }
      if (attributes.isNotEmpty)
      {
        String str = "";
        attributes.forEach((String key, String value) => str += '$key: $value, ');
        str = str.substring(0,str.length - 2);
        print('\t@JsonKey($str)');
      }
      print('\t$type $propertyName;');
    });
    print('');
    print('\t$name({${names.map((String name)=>'this.$name').toList().toString().replaceAll(RegExp(r"[\[\]]"),"")}});');
    print('');
    print('\tfactory ${name}.fromJson(Map<String, dynamic> json) => _\$${name}FromJson(json);');
    print('\tMap<String, dynamic> toJson() => _\$${name}ToJson(this);');
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


  doc.paths.forEach((String pathString, APIPath path){
    path.operations.forEach((String type, APIOperation operation){
      String summary = operation.summary;
      String desc = operation.description;
      String id = operation.id;
      List<APIParameter> parameters = operation.parameters;
      APIRequestBody body = operation.requestBody;
      if (body != null)
        {
          if (body.content["application/json"] != null)
            String bodyType = getType(body.content["application/json"].schema);
          else if (body.content["application/octet-stream"] != null)
            String bodyType = getType(body.content["application/octet-stream"].schema);
        }
      APIResponse ok = operation.responses["200"];
      if (ok != null) {
        if (ok.content != null)
          {
            var jsonContent = ok.content["application/json"];
            String responseType = getType(jsonContent.schema);
          }
      }
      if (parameters != null)
        {
          parameters.forEach((APIParameter parameter){
            if (!parameter.isRequired && parameter.location == APIParameterLocation.path)
              print("blah");
          });
        }

      //print('$responseType $id(');
    });
  });

}

Map<String, List<String>> enums = {};

String resolveEnum(String propertyName, List<String> list, String itemName)
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

  String enumName = capitalize(propertyName);
  if (enums.containsKey('e$enumName'))
  {
    enumName = "${capitalize(itemName)}_$enumName";
  }
  enumName = 'e$enumName';
  while (enums.containsKey(enumName))
  {
    enumName += '_';
  }
  enums[enumName] = list;
  return enumName;
}

String getType(APISchemaObject obj, [String objName = "", String originalName = ""])
{
  switch(obj.type)
  {
    case APIType.array:
      return 'List<${getType(obj.items, objName, originalName)}>';
    case APIType.string:
      if (obj.format != null)
      {
        switch(obj.format)
        {
          case 'date-time':
            return 'DateTime';
          case 'guid':
          case 'binary':
            break;
        }
      }
      if (obj.enumerated != null)
      {
        return resolveEnum(objName, List<String>.from(obj.enumerated), originalName);
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
        return 'Map<String,${getType(obj.additionalPropertySchema, objName, originalName)}>';
      }
      return obj.referenceURI.pathSegments.last.replaceAll(RegExp('[\\.\\-]'), "_");;
  }
}
