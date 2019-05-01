import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:intl/intl.dart';

part 'GeneratedClasses.g.dart';



//2019-04-29T09:06:32.5457794Z
final _dateFormatter = new DateFormat('yyyy-MM-ddTHH:mm:ss.mmmuuuZ');
dynamic dateTimeFromJson(String date){
  if (date == null)
    return null;

  if (date[0] == '{')
  {
    return Map.castFrom<String, dynamic, String, DateTime>(jsonDecode(date));
  }

  if (date[0] == '[')
  {
    return (jsonDecode(date) as List<dynamic>).map((dynamic value) => _dateFormatter.parse(value));
  }

  return _dateFormatter.parse(date);
}
String dateTimeToJson(dynamic date)//DateTime date)
{
  if (date == null)
    return null;

  if (date is DateTime)
    return _dateFormatter.format(date);

  if (date is List<DateTime>)
    return date.map((DateTime d) => _dateFormatter.format(d)).toList().toString();

  if (date is Map<String, DateTime>)
    return date.map((String s, DateTime d) => MapEntry(s, _dateFormatter.format(d))).toString();

  return null;
}

@JsonSerializable(nullable: false)
class QueryResult_BaseItemDto{
  @JsonKey(name: "Items")
  List<BaseItemDto> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  QueryResult_BaseItemDto({this.items, this.totalRecordCount});

  factory QueryResult_BaseItemDto.fromJson(Map<String, dynamic> json) => _$QueryResult_BaseItemDtoFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResult_BaseItemDtoToJson(this);
}

@JsonSerializable(nullable: false)
class BaseItemDto{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "OriginalTitle")
  String originalTitle;
  @JsonKey(name: "ServerId")
  String serverId;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Etag")
  String etag;
  @JsonKey(name: "SourceType")
  String sourceType;
  @JsonKey(name: "PlaylistItemId")
  String playlistItemId;
  @JsonKey(name: "DateCreated", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateCreated;
  @JsonKey(name: "DateLastMediaAdded", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateLastMediaAdded;
  @JsonKey(name: "ExtraType")
  String extraType;
  @JsonKey(name: "AirsBeforeSeasonNumber", nullable: true)
  int airsBeforeSeasonNumber;
  @JsonKey(name: "AirsAfterSeasonNumber", nullable: true)
  int airsAfterSeasonNumber;
  @JsonKey(name: "AirsBeforeEpisodeNumber", nullable: true)
  int airsBeforeEpisodeNumber;
  @JsonKey(name: "DisplaySpecialsWithSeasons", nullable: true)
  bool displaySpecialsWithSeasons;
  @JsonKey(name: "CanDelete", nullable: true)
  bool canDelete;
  @JsonKey(name: "CanDownload", nullable: true)
  bool canDownload;
  @JsonKey(name: "HasSubtitles", nullable: true)
  bool hasSubtitles;
  @JsonKey(name: "PreferredMetadataLanguage")
  String preferredMetadataLanguage;
  @JsonKey(name: "PreferredMetadataCountryCode")
  String preferredMetadataCountryCode;
  @JsonKey(name: "SupportsSync", nullable: true)
  bool supportsSync;
  @JsonKey(name: "Container")
  String container;
  @JsonKey(name: "SortName")
  String sortName;
  @JsonKey(name: "ForcedSortName")
  String forcedSortName;
  @JsonKey(name: "Video3DFormat")
  eVideo3DFormat video3DFormat;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "ExternalUrls")
  List<ExternalUrl> externalUrls;
  @JsonKey(name: "MediaSources")
  List<MediaSourceInfo> mediaSources;
  @JsonKey(name: "CriticRating", nullable: true)
  double criticRating;
  @JsonKey(name: "GameSystem")
  String gameSystem;
  @JsonKey(name: "ProductionLocations")
  List<String> productionLocations;
  @JsonKey(name: "MultiPartGameFiles")
  List<String> multiPartGameFiles;
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "EnableMediaSourceDisplay", nullable: true)
  bool enableMediaSourceDisplay;
  @JsonKey(name: "OfficialRating")
  String officialRating;
  @JsonKey(name: "CustomRating")
  String customRating;
  @JsonKey(name: "ChannelId")
  String channelId;
  @JsonKey(name: "ChannelName")
  String channelName;
  @JsonKey(name: "Overview")
  String overview;
  @JsonKey(name: "Taglines")
  List<String> taglines;
  @JsonKey(name: "Genres")
  List<String> genres;
  @JsonKey(name: "CommunityRating", nullable: true)
  double communityRating;
  @JsonKey(name: "CumulativeRunTimeTicks", nullable: true)
  int cumulativeRunTimeTicks;
  @JsonKey(name: "RunTimeTicks", nullable: true)
  int runTimeTicks;
  @JsonKey(name: "PlayAccess")
  ePlayAccess playAccess;
  @JsonKey(name: "AspectRatio")
  String aspectRatio;
  @JsonKey(name: "ProductionYear", nullable: true)
  int productionYear;
  @JsonKey(name: "IsPlaceHolder", nullable: true)
  bool isPlaceHolder;
  @JsonKey(name: "Number")
  String number;
  @JsonKey(name: "ChannelNumber")
  String channelNumber;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "IndexNumberEnd", nullable: true)
  int indexNumberEnd;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "RemoteTrailers")
  List<MediaUrl> remoteTrailers;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "IsHD", nullable: true)
  bool isHD;
  @JsonKey(name: "IsFolder", nullable: true)
  bool isFolder;
  @JsonKey(name: "ParentId")
  String parentId;
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "People")
  List<BaseItemPerson> people;
  @JsonKey(name: "Studios")
  List<NameGuidPair> studios;
  @JsonKey(name: "GenreItems")
  List<NameGuidPair> genreItems;
  @JsonKey(name: "ParentLogoItemId")
  String parentLogoItemId;
  @JsonKey(name: "ParentBackdropItemId")
  String parentBackdropItemId;
  @JsonKey(name: "ParentBackdropImageTags")
  List<String> parentBackdropImageTags;
  @JsonKey(name: "LocalTrailerCount", nullable: true)
  int localTrailerCount;
  @JsonKey(name: "UserData")
  UserItemDataDto userData;
  @JsonKey(name: "RecursiveItemCount", nullable: true)
  int recursiveItemCount;
  @JsonKey(name: "ChildCount", nullable: true)
  int childCount;
  @JsonKey(name: "SeriesName")
  String seriesName;
  @JsonKey(name: "SeriesId")
  String seriesId;
  @JsonKey(name: "SeasonId")
  String seasonId;
  @JsonKey(name: "SpecialFeatureCount", nullable: true)
  int specialFeatureCount;
  @JsonKey(name: "DisplayPreferencesId")
  String displayPreferencesId;
  @JsonKey(name: "Status")
  String status;
  @JsonKey(name: "AirTime")
  String airTime;
  @JsonKey(name: "AirDays")
  List<eAirDays> airDays;
  @JsonKey(name: "Tags")
  List<String> tags;
  @JsonKey(name: "PrimaryImageAspectRatio", nullable: true)
  double primaryImageAspectRatio;
  @JsonKey(name: "Artists")
  List<String> artists;
  @JsonKey(name: "ArtistItems")
  List<NameGuidPair> artistItems;
  @JsonKey(name: "Album")
  String album;
  @JsonKey(name: "CollectionType")
  String collectionType;
  @JsonKey(name: "DisplayOrder")
  String displayOrder;
  @JsonKey(name: "AlbumId")
  String albumId;
  @JsonKey(name: "AlbumPrimaryImageTag")
  String albumPrimaryImageTag;
  @JsonKey(name: "SeriesPrimaryImageTag")
  String seriesPrimaryImageTag;
  @JsonKey(name: "AlbumArtist")
  String albumArtist;
  @JsonKey(name: "AlbumArtists")
  List<NameGuidPair> albumArtists;
  @JsonKey(name: "SeasonName")
  String seasonName;
  @JsonKey(name: "MediaStreams")
  List<MediaStream> mediaStreams;
  @JsonKey(name: "VideoType")
  eVideoType videoType;
  @JsonKey(name: "PartCount", nullable: true)
  int partCount;
  @JsonKey(name: "MediaSourceCount", nullable: true)
  int mediaSourceCount;
  @JsonKey(name: "ImageTags")
  Map<String,String> imageTags;
  @JsonKey(name: "BackdropImageTags")
  List<String> backdropImageTags;
  @JsonKey(name: "ScreenshotImageTags")
  List<String> screenshotImageTags;
  @JsonKey(name: "ParentLogoImageTag")
  String parentLogoImageTag;
  @JsonKey(name: "ParentArtItemId")
  String parentArtItemId;
  @JsonKey(name: "ParentArtImageTag")
  String parentArtImageTag;
  @JsonKey(name: "SeriesThumbImageTag")
  String seriesThumbImageTag;
  @JsonKey(name: "SeriesStudio")
  String seriesStudio;
  @JsonKey(name: "ParentThumbItemId")
  String parentThumbItemId;
  @JsonKey(name: "ParentThumbImageTag")
  String parentThumbImageTag;
  @JsonKey(name: "ParentPrimaryImageItemId")
  String parentPrimaryImageItemId;
  @JsonKey(name: "ParentPrimaryImageTag")
  String parentPrimaryImageTag;
  @JsonKey(name: "Chapters")
  List<ChapterInfo> chapters;
  @JsonKey(name: "LocationType")
  eLocationType locationType;
  @JsonKey(name: "IsoType")
  eIsoType isoType;
  @JsonKey(name: "MediaType")
  String mediaType;
  @JsonKey(name: "EndDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime endDate;
  @JsonKey(name: "LockedFields")
  List<eLockedFields> lockedFields;
  @JsonKey(name: "TrailerCount", nullable: true)
  int trailerCount;
  @JsonKey(name: "MovieCount", nullable: true)
  int movieCount;
  @JsonKey(name: "SeriesCount", nullable: true)
  int seriesCount;
  @JsonKey(name: "ProgramCount", nullable: true)
  int programCount;
  @JsonKey(name: "EpisodeCount", nullable: true)
  int episodeCount;
  @JsonKey(name: "GameCount", nullable: true)
  int gameCount;
  @JsonKey(name: "SongCount", nullable: true)
  int songCount;
  @JsonKey(name: "AlbumCount", nullable: true)
  int albumCount;
  @JsonKey(name: "ArtistCount", nullable: true)
  int artistCount;
  @JsonKey(name: "MusicVideoCount", nullable: true)
  int musicVideoCount;
  @JsonKey(name: "LockData", nullable: true)
  bool lockData;
  @JsonKey(name: "Width", nullable: true)
  int width;
  @JsonKey(name: "Height", nullable: true)
  int height;
  @JsonKey(name: "CameraMake")
  String cameraMake;
  @JsonKey(name: "CameraModel")
  String cameraModel;
  @JsonKey(name: "Software")
  String software;
  @JsonKey(name: "ExposureTime", nullable: true)
  double exposureTime;
  @JsonKey(name: "FocalLength", nullable: true)
  double focalLength;
  @JsonKey(name: "ImageOrientation")
  eImageOrientation imageOrientation;
  @JsonKey(name: "Aperture", nullable: true)
  double aperture;
  @JsonKey(name: "ShutterSpeed", nullable: true)
  double shutterSpeed;
  @JsonKey(name: "Latitude", nullable: true)
  double latitude;
  @JsonKey(name: "Longitude", nullable: true)
  double longitude;
  @JsonKey(name: "Altitude", nullable: true)
  double altitude;
  @JsonKey(name: "IsoSpeedRating", nullable: true)
  int isoSpeedRating;
  @JsonKey(name: "RecordingCount", nullable: true)
  int recordingCount;
  @JsonKey(name: "SeriesTimerId")
  String seriesTimerId;
  @JsonKey(name: "ProgramId")
  String programId;
  @JsonKey(name: "ChannelPrimaryImageTag")
  String channelPrimaryImageTag;
  @JsonKey(name: "StartDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime startDate;
  @JsonKey(name: "CompletionPercentage", nullable: true)
  double completionPercentage;
  @JsonKey(name: "IsRepeat", nullable: true)
  bool isRepeat;
  @JsonKey(name: "EpisodeTitle")
  String episodeTitle;
  @JsonKey(name: "ChannelType")
  eChannelType channelType;
  @JsonKey(name: "Audio")
  eAudio audio;
  @JsonKey(name: "IsMovie", nullable: true)
  bool isMovie;
  @JsonKey(name: "IsSports", nullable: true)
  bool isSports;
  @JsonKey(name: "IsSeries", nullable: true)
  bool isSeries;
  @JsonKey(name: "IsLive", nullable: true)
  bool isLive;
  @JsonKey(name: "IsNews", nullable: true)
  bool isNews;
  @JsonKey(name: "IsKids", nullable: true)
  bool isKids;
  @JsonKey(name: "IsPremiere", nullable: true)
  bool isPremiere;
  @JsonKey(name: "TimerId")
  String timerId;
  @JsonKey(name: "CurrentProgram")
  BaseItemDto currentProgram;

  BaseItemDto({this.name, this.originalTitle, this.serverId, this.id, this.etag, this.sourceType, this.playlistItemId, this.dateCreated, this.dateLastMediaAdded, this.extraType, this.airsBeforeSeasonNumber, this.airsAfterSeasonNumber, this.airsBeforeEpisodeNumber, this.displaySpecialsWithSeasons, this.canDelete, this.canDownload, this.hasSubtitles, this.preferredMetadataLanguage, this.preferredMetadataCountryCode, this.supportsSync, this.container, this.sortName, this.forcedSortName, this.video3DFormat, this.premiereDate, this.externalUrls, this.mediaSources, this.criticRating, this.gameSystem, this.productionLocations, this.multiPartGameFiles, this.path, this.enableMediaSourceDisplay, this.officialRating, this.customRating, this.channelId, this.channelName, this.overview, this.taglines, this.genres, this.communityRating, this.cumulativeRunTimeTicks, this.runTimeTicks, this.playAccess, this.aspectRatio, this.productionYear, this.isPlaceHolder, this.number, this.channelNumber, this.indexNumber, this.indexNumberEnd, this.parentIndexNumber, this.remoteTrailers, this.providerIds, this.isHD, this.isFolder, this.parentId, this.type, this.people, this.studios, this.genreItems, this.parentLogoItemId, this.parentBackdropItemId, this.parentBackdropImageTags, this.localTrailerCount, this.userData, this.recursiveItemCount, this.childCount, this.seriesName, this.seriesId, this.seasonId, this.specialFeatureCount, this.displayPreferencesId, this.status, this.airTime, this.airDays, this.tags, this.primaryImageAspectRatio, this.artists, this.artistItems, this.album, this.collectionType, this.displayOrder, this.albumId, this.albumPrimaryImageTag, this.seriesPrimaryImageTag, this.albumArtist, this.albumArtists, this.seasonName, this.mediaStreams, this.videoType, this.partCount, this.mediaSourceCount, this.imageTags, this.backdropImageTags, this.screenshotImageTags, this.parentLogoImageTag, this.parentArtItemId, this.parentArtImageTag, this.seriesThumbImageTag, this.seriesStudio, this.parentThumbItemId, this.parentThumbImageTag, this.parentPrimaryImageItemId, this.parentPrimaryImageTag, this.chapters, this.locationType, this.isoType, this.mediaType, this.endDate, this.lockedFields, this.trailerCount, this.movieCount, this.seriesCount, this.programCount, this.episodeCount, this.gameCount, this.songCount, this.albumCount, this.artistCount, this.musicVideoCount, this.lockData, this.width, this.height, this.cameraMake, this.cameraModel, this.software, this.exposureTime, this.focalLength, this.imageOrientation, this.aperture, this.shutterSpeed, this.latitude, this.longitude, this.altitude, this.isoSpeedRating, this.recordingCount, this.seriesTimerId, this.programId, this.channelPrimaryImageTag, this.startDate, this.completionPercentage, this.isRepeat, this.episodeTitle, this.channelType, this.audio, this.isMovie, this.isSports, this.isSeries, this.isLive, this.isNews, this.isKids, this.isPremiere, this.timerId, this.currentProgram});

  factory BaseItemDto.fromJson(Map<String, dynamic> json) => _$BaseItemDtoFromJson(json);
  Map<String, dynamic> toJson() => _$BaseItemDtoToJson(this);
}

@JsonSerializable(nullable: false)
class ExternalUrl{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Url")
  String url;

  ExternalUrl({this.name, this.url});

  factory ExternalUrl.fromJson(Map<String, dynamic> json) => _$ExternalUrlFromJson(json);
  Map<String, dynamic> toJson() => _$ExternalUrlToJson(this);
}

@JsonSerializable(nullable: false)
class MediaSourceInfo{
  @JsonKey(name: "Protocol")
  eProtocol protocol;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "EncoderPath")
  String encoderPath;
  @JsonKey(name: "EncoderProtocol")
  eProtocol encoderProtocol;
  @JsonKey(name: "Type")
  eType type;
  @JsonKey(name: "Container")
  String container;
  @JsonKey(name: "Size", nullable: true)
  int size;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "IsRemote")
  bool isRemote;
  @JsonKey(name: "ETag")
  String eTag;
  @JsonKey(name: "RunTimeTicks", nullable: true)
  int runTimeTicks;
  @JsonKey(name: "ReadAtNativeFramerate")
  bool readAtNativeFramerate;
  @JsonKey(name: "IgnoreDts")
  bool ignoreDts;
  @JsonKey(name: "IgnoreIndex")
  bool ignoreIndex;
  @JsonKey(name: "GenPtsInput")
  bool genPtsInput;
  @JsonKey(name: "SupportsTranscoding")
  bool supportsTranscoding;
  @JsonKey(name: "SupportsDirectStream")
  bool supportsDirectStream;
  @JsonKey(name: "SupportsDirectPlay")
  bool supportsDirectPlay;
  @JsonKey(name: "IsInfiniteStream")
  bool isInfiniteStream;
  @JsonKey(name: "RequiresOpening")
  bool requiresOpening;
  @JsonKey(name: "OpenToken")
  String openToken;
  @JsonKey(name: "RequiresClosing")
  bool requiresClosing;
  @JsonKey(name: "LiveStreamId")
  String liveStreamId;
  @JsonKey(name: "BufferMs", nullable: true)
  int bufferMs;
  @JsonKey(name: "RequiresLooping")
  bool requiresLooping;
  @JsonKey(name: "SupportsProbing")
  bool supportsProbing;
  @JsonKey(name: "VideoType")
  eVideoType videoType;
  @JsonKey(name: "IsoType")
  eIsoType isoType;
  @JsonKey(name: "Video3DFormat")
  eVideo3DFormat video3DFormat;
  @JsonKey(name: "MediaStreams")
  List<MediaStream> mediaStreams;
  @JsonKey(name: "Formats")
  List<String> formats;
  @JsonKey(name: "Bitrate", nullable: true)
  int bitrate;
  @JsonKey(name: "Timestamp")
  eTimestamp timestamp;
  @JsonKey(name: "RequiredHttpHeaders")
  Map<String,String> requiredHttpHeaders;
  @JsonKey(name: "TranscodingUrl")
  String transcodingUrl;
  @JsonKey(name: "TranscodingSubProtocol")
  String transcodingSubProtocol;
  @JsonKey(name: "TranscodingContainer")
  String transcodingContainer;
  @JsonKey(name: "AnalyzeDurationMs", nullable: true)
  int analyzeDurationMs;
  @JsonKey(name: "DefaultAudioStreamIndex", nullable: true)
  int defaultAudioStreamIndex;
  @JsonKey(name: "DefaultSubtitleStreamIndex", nullable: true)
  int defaultSubtitleStreamIndex;

  MediaSourceInfo({this.protocol, this.id, this.path, this.encoderPath, this.encoderProtocol, this.type, this.container, this.size, this.name, this.isRemote, this.eTag, this.runTimeTicks, this.readAtNativeFramerate, this.ignoreDts, this.ignoreIndex, this.genPtsInput, this.supportsTranscoding, this.supportsDirectStream, this.supportsDirectPlay, this.isInfiniteStream, this.requiresOpening, this.openToken, this.requiresClosing, this.liveStreamId, this.bufferMs, this.requiresLooping, this.supportsProbing, this.videoType, this.isoType, this.video3DFormat, this.mediaStreams, this.formats, this.bitrate, this.timestamp, this.requiredHttpHeaders, this.transcodingUrl, this.transcodingSubProtocol, this.transcodingContainer, this.analyzeDurationMs, this.defaultAudioStreamIndex, this.defaultSubtitleStreamIndex});

  factory MediaSourceInfo.fromJson(Map<String, dynamic> json) => _$MediaSourceInfoFromJson(json);
  Map<String, dynamic> toJson() => _$MediaSourceInfoToJson(this);
}

@JsonSerializable(nullable: false)
class MediaStream{
  @JsonKey(name: "Codec")
  String codec;
  @JsonKey(name: "CodecTag")
  String codecTag;
  @JsonKey(name: "Language")
  String language;
  @JsonKey(name: "ColorTransfer")
  String colorTransfer;
  @JsonKey(name: "ColorPrimaries")
  String colorPrimaries;
  @JsonKey(name: "ColorSpace")
  String colorSpace;
  @JsonKey(name: "Comment")
  String comment;
  @JsonKey(name: "TimeBase")
  String timeBase;
  @JsonKey(name: "CodecTimeBase")
  String codecTimeBase;
  @JsonKey(name: "Title")
  String title;
  @JsonKey(name: "VideoRange")
  String videoRange;
  @JsonKey(name: "DisplayTitle")
  String displayTitle;
  @JsonKey(name: "NalLengthSize")
  String nalLengthSize;
  @JsonKey(name: "IsInterlaced")
  bool isInterlaced;
  @JsonKey(name: "IsAVC", nullable: true)
  bool isAVC;
  @JsonKey(name: "ChannelLayout")
  String channelLayout;
  @JsonKey(name: "BitRate", nullable: true)
  int bitRate;
  @JsonKey(name: "BitDepth", nullable: true)
  int bitDepth;
  @JsonKey(name: "RefFrames", nullable: true)
  int refFrames;
  @JsonKey(name: "PacketLength", nullable: true)
  int packetLength;
  @JsonKey(name: "Channels", nullable: true)
  int channels;
  @JsonKey(name: "SampleRate", nullable: true)
  int sampleRate;
  @JsonKey(name: "IsDefault")
  bool isDefault;
  @JsonKey(name: "IsForced")
  bool isForced;
  @JsonKey(name: "Height", nullable: true)
  int height;
  @JsonKey(name: "Width", nullable: true)
  int width;
  @JsonKey(name: "AverageFrameRate", nullable: true)
  double averageFrameRate;
  @JsonKey(name: "RealFrameRate", nullable: true)
  double realFrameRate;
  @JsonKey(name: "Profile")
  String profile;
  @JsonKey(name: "Type")
  eMediaStream_Type type;
  @JsonKey(name: "AspectRatio")
  String aspectRatio;
  @JsonKey(name: "Index")
  int index;
  @JsonKey(name: "Score", nullable: true)
  int score;
  @JsonKey(name: "IsExternal")
  bool isExternal;
  @JsonKey(name: "DeliveryMethod")
  eDeliveryMethod deliveryMethod;
  @JsonKey(name: "DeliveryUrl")
  String deliveryUrl;
  @JsonKey(name: "IsExternalUrl", nullable: true)
  bool isExternalUrl;
  @JsonKey(name: "IsTextSubtitleStream")
  bool isTextSubtitleStream;
  @JsonKey(name: "SupportsExternalStream")
  bool supportsExternalStream;
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "PixelFormat")
  String pixelFormat;
  @JsonKey(name: "Level", nullable: true)
  double level;
  @JsonKey(name: "IsAnamorphic", nullable: true)
  bool isAnamorphic;

  MediaStream({this.codec, this.codecTag, this.language, this.colorTransfer, this.colorPrimaries, this.colorSpace, this.comment, this.timeBase, this.codecTimeBase, this.title, this.videoRange, this.displayTitle, this.nalLengthSize, this.isInterlaced, this.isAVC, this.channelLayout, this.bitRate, this.bitDepth, this.refFrames, this.packetLength, this.channels, this.sampleRate, this.isDefault, this.isForced, this.height, this.width, this.averageFrameRate, this.realFrameRate, this.profile, this.type, this.aspectRatio, this.index, this.score, this.isExternal, this.deliveryMethod, this.deliveryUrl, this.isExternalUrl, this.isTextSubtitleStream, this.supportsExternalStream, this.path, this.pixelFormat, this.level, this.isAnamorphic});

  factory MediaStream.fromJson(Map<String, dynamic> json) => _$MediaStreamFromJson(json);
  Map<String, dynamic> toJson() => _$MediaStreamToJson(this);
}

@JsonSerializable(nullable: false)
class MediaUrl{
  @JsonKey(name: "Url")
  String url;
  @JsonKey(name: "Name")
  String name;

  MediaUrl({this.url, this.name});

  factory MediaUrl.fromJson(Map<String, dynamic> json) => _$MediaUrlFromJson(json);
  Map<String, dynamic> toJson() => _$MediaUrlToJson(this);
}

@JsonSerializable(nullable: false)
class BaseItemPerson{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Role")
  String role;
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "PrimaryImageTag")
  String primaryImageTag;

  BaseItemPerson({this.name, this.id, this.role, this.type, this.primaryImageTag});

  factory BaseItemPerson.fromJson(Map<String, dynamic> json) => _$BaseItemPersonFromJson(json);
  Map<String, dynamic> toJson() => _$BaseItemPersonToJson(this);
}

@JsonSerializable(nullable: false)
class NameGuidPair{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Id")
  String id;

  NameGuidPair({this.name, this.id});

  factory NameGuidPair.fromJson(Map<String, dynamic> json) => _$NameGuidPairFromJson(json);
  Map<String, dynamic> toJson() => _$NameGuidPairToJson(this);
}

@JsonSerializable(nullable: false)
class UserItemDataDto{
  @JsonKey(name: "Rating", nullable: true)
  double rating;
  @JsonKey(name: "PlayedPercentage", nullable: true)
  double playedPercentage;
  @JsonKey(name: "UnplayedItemCount", nullable: true)
  int unplayedItemCount;
  @JsonKey(name: "PlaybackPositionTicks")
  int playbackPositionTicks;
  @JsonKey(name: "PlayCount")
  int playCount;
  @JsonKey(name: "IsFavorite")
  bool isFavorite;
  @JsonKey(name: "Likes", nullable: true)
  bool likes;
  @JsonKey(name: "LastPlayedDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime lastPlayedDate;
  @JsonKey(name: "Played")
  bool played;
  @JsonKey(name: "Key")
  String key;
  @JsonKey(name: "ItemId")
  String itemId;

  UserItemDataDto({this.rating, this.playedPercentage, this.unplayedItemCount, this.playbackPositionTicks, this.playCount, this.isFavorite, this.likes, this.lastPlayedDate, this.played, this.key, this.itemId});

  factory UserItemDataDto.fromJson(Map<String, dynamic> json) => _$UserItemDataDtoFromJson(json);
  Map<String, dynamic> toJson() => _$UserItemDataDtoToJson(this);
}

@JsonSerializable(nullable: false)
class ChapterInfo{
  @JsonKey(name: "StartPositionTicks")
  int startPositionTicks;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "ImageTag")
  String imageTag;

  ChapterInfo({this.startPositionTicks, this.name, this.imageTag});

  factory ChapterInfo.fromJson(Map<String, dynamic> json) => _$ChapterInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Collections_CollectionCreationResult{
  @JsonKey(name: "Id")
  String id;

  Collections_CollectionCreationResult({this.id});

  factory Collections_CollectionCreationResult.fromJson(Map<String, dynamic> json) => _$Collections_CollectionCreationResultFromJson(json);
  Map<String, dynamic> toJson() => _$Collections_CollectionCreationResultToJson(this);
}

@JsonSerializable(nullable: false)
class QueryResult_Devices_DeviceInfo{
  @JsonKey(name: "Items")
  List<Devices_DeviceInfo> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  QueryResult_Devices_DeviceInfo({this.items, this.totalRecordCount});

  factory QueryResult_Devices_DeviceInfo.fromJson(Map<String, dynamic> json) => _$QueryResult_Devices_DeviceInfoFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResult_Devices_DeviceInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Devices_DeviceInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "ReportedName")
  String reportedName;
  @JsonKey(name: "CustomName")
  String customName;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "LastUserName")
  String lastUserName;
  @JsonKey(name: "AppName")
  String appName;
  @JsonKey(name: "AppVersion")
  String appVersion;
  @JsonKey(name: "LastUserId")
  String lastUserId;
  @JsonKey(name: "DateLastActivity", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateLastActivity;
  @JsonKey(name: "IconUrl")
  String iconUrl;

  Devices_DeviceInfo({this.name, this.reportedName, this.customName, this.id, this.lastUserName, this.appName, this.appVersion, this.lastUserId, this.dateLastActivity, this.iconUrl});

  factory Devices_DeviceInfo.fromJson(Map<String, dynamic> json) => _$Devices_DeviceInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Devices_DeviceInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Updates_PackageInfo{
  String id;
  String name;
  String shortDescription;
  String overview;
  bool isPremium;
  bool adult;
  String richDescUrl;
  String thumbImage;
  String previewImage;
  String type;
  String targetFilename;
  String owner;
  String category;
  String tileColor;
  String featureId;
  String regInfo;
  double price;
  eTargetSystem targetSystem;
  String guid;
  @JsonKey(nullable: true)
  int totalRatings;
  double avgRating;
  bool isRegistered;
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime expDate;
  List<Updates_PackageVersionInfo> versions;
  bool enableInAppStore;
  int installs;

  Updates_PackageInfo({this.id, this.name, this.shortDescription, this.overview, this.isPremium, this.adult, this.richDescUrl, this.thumbImage, this.previewImage, this.type, this.targetFilename, this.owner, this.category, this.tileColor, this.featureId, this.regInfo, this.price, this.targetSystem, this.guid, this.totalRatings, this.avgRating, this.isRegistered, this.expDate, this.versions, this.enableInAppStore, this.installs});

  factory Updates_PackageInfo.fromJson(Map<String, dynamic> json) => _$Updates_PackageInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Updates_PackageInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Updates_PackageVersionInfo{
  String name;
  String guid;
  String versionStr;
  eClassification classification;
  String description;
  String requiredVersionStr;
  String sourceUrl;
  String checksum;
  String targetFilename;
  String infoUrl;
  String runtimes;

  Updates_PackageVersionInfo({this.name, this.guid, this.versionStr, this.classification, this.description, this.requiredVersionStr, this.sourceUrl, this.checksum, this.targetFilename, this.infoUrl, this.runtimes});

  factory Updates_PackageVersionInfo.fromJson(Map<String, dynamic> json) => _$Updates_PackageVersionInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Updates_PackageVersionInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Playlists_PlaylistCreationResult{
  @JsonKey(name: "Id")
  String id;

  Playlists_PlaylistCreationResult({this.id});

  factory Playlists_PlaylistCreationResult.fromJson(Map<String, dynamic> json) => _$Playlists_PlaylistCreationResultFromJson(json);
  Map<String, dynamic> toJson() => _$Playlists_PlaylistCreationResultToJson(this);
}

@JsonSerializable(nullable: false)
class Plugins_PluginInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Version")
  String version;
  @JsonKey(name: "ConfigurationFileName")
  String configurationFileName;
  @JsonKey(name: "Description")
  String description;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "ImageUrl")
  String imageUrl;

  Plugins_PluginInfo({this.name, this.version, this.configurationFileName, this.description, this.id, this.imageUrl});

  factory Plugins_PluginInfo.fromJson(Map<String, dynamic> json) => _$Plugins_PluginInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Plugins_PluginInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Tasks_TaskInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "State")
  eState state;
  @JsonKey(name: "CurrentProgressPercentage", nullable: true)
  double currentProgressPercentage;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "LastExecutionResult")
  Tasks_TaskResult lastExecutionResult;
  @JsonKey(name: "Triggers")
  List<Tasks_TaskTriggerInfo> triggers;
  @JsonKey(name: "Description")
  String description;
  @JsonKey(name: "Category")
  String category;
  @JsonKey(name: "IsHidden")
  bool isHidden;
  @JsonKey(name: "Key")
  String key;

  Tasks_TaskInfo({this.name, this.state, this.currentProgressPercentage, this.id, this.lastExecutionResult, this.triggers, this.description, this.category, this.isHidden, this.key});

  factory Tasks_TaskInfo.fromJson(Map<String, dynamic> json) => _$Tasks_TaskInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Tasks_TaskInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Tasks_TaskResult{
  @JsonKey(name: "StartTimeUtc", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime startTimeUtc;
  @JsonKey(name: "EndTimeUtc", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime endTimeUtc;
  @JsonKey(name: "Status")
  eStatus status;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Key")
  String key;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "ErrorMessage")
  String errorMessage;
  @JsonKey(name: "LongErrorMessage")
  String longErrorMessage;

  Tasks_TaskResult({this.startTimeUtc, this.endTimeUtc, this.status, this.name, this.key, this.id, this.errorMessage, this.longErrorMessage});

  factory Tasks_TaskResult.fromJson(Map<String, dynamic> json) => _$Tasks_TaskResultFromJson(json);
  Map<String, dynamic> toJson() => _$Tasks_TaskResultToJson(this);
}

@JsonSerializable(nullable: false)
class Tasks_TaskTriggerInfo{
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "TimeOfDayTicks", nullable: true)
  int timeOfDayTicks;
  @JsonKey(name: "IntervalTicks", nullable: true)
  int intervalTicks;
  @JsonKey(name: "SystemEvent")
  eSystemEvent systemEvent;
  @JsonKey(name: "DayOfWeek")
  eAirDays dayOfWeek;
  @JsonKey(name: "MaxRuntimeTicks", nullable: true)
  int maxRuntimeTicks;

  Tasks_TaskTriggerInfo({this.type, this.timeOfDayTicks, this.intervalTicks, this.systemEvent, this.dayOfWeek, this.maxRuntimeTicks});

  factory Tasks_TaskTriggerInfo.fromJson(Map<String, dynamic> json) => _$Tasks_TaskTriggerInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Tasks_TaskTriggerInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Session_SessionInfo{
  @JsonKey(name: "PlayState")
  PlayerStateInfo playState;
  @JsonKey(name: "AdditionalUsers")
  List<SessionUserInfo> additionalUsers;
  @JsonKey(name: "Capabilities")
  ClientCapabilities capabilities;
  @JsonKey(name: "RemoteEndPoint")
  String remoteEndPoint;
  @JsonKey(name: "PlayableMediaTypes")
  List<String> playableMediaTypes;
  @JsonKey(name: "PlaylistItemId")
  String playlistItemId;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "ServerId")
  String serverId;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "UserName")
  String userName;
  @JsonKey(name: "UserPrimaryImageTag")
  String userPrimaryImageTag;
  @JsonKey(name: "Client")
  String client;
  @JsonKey(name: "LastActivityDate", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime lastActivityDate;
  @JsonKey(name: "DeviceName")
  String deviceName;
  @JsonKey(name: "DeviceType")
  String deviceType;
  @JsonKey(name: "NowPlayingItem")
  BaseItemDto nowPlayingItem;
  @JsonKey(name: "DeviceId")
  String deviceId;
  @JsonKey(name: "ApplicationVersion")
  String applicationVersion;
  @JsonKey(name: "AppIconUrl")
  String appIconUrl;
  @JsonKey(name: "SupportedCommands")
  List<String> supportedCommands;
  @JsonKey(name: "TranscodingInfo")
  TranscodingInfo transcodingInfo;
  @JsonKey(name: "SupportsRemoteControl")
  bool supportsRemoteControl;

  Session_SessionInfo({this.playState, this.additionalUsers, this.capabilities, this.remoteEndPoint, this.playableMediaTypes, this.playlistItemId, this.id, this.serverId, this.userId, this.userName, this.userPrimaryImageTag, this.client, this.lastActivityDate, this.deviceName, this.deviceType, this.nowPlayingItem, this.deviceId, this.applicationVersion, this.appIconUrl, this.supportedCommands, this.transcodingInfo, this.supportsRemoteControl});

  factory Session_SessionInfo.fromJson(Map<String, dynamic> json) => _$Session_SessionInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Session_SessionInfoToJson(this);
}

@JsonSerializable(nullable: false)
class PlayerStateInfo{
  @JsonKey(name: "PositionTicks", nullable: true)
  int positionTicks;
  @JsonKey(name: "CanSeek")
  bool canSeek;
  @JsonKey(name: "IsPaused")
  bool isPaused;
  @JsonKey(name: "IsMuted")
  bool isMuted;
  @JsonKey(name: "VolumeLevel", nullable: true)
  int volumeLevel;
  @JsonKey(name: "AudioStreamIndex", nullable: true)
  int audioStreamIndex;
  @JsonKey(name: "SubtitleStreamIndex", nullable: true)
  int subtitleStreamIndex;
  @JsonKey(name: "MediaSourceId")
  String mediaSourceId;
  @JsonKey(name: "PlayMethod")
  ePlayMethod playMethod;
  @JsonKey(name: "RepeatMode")
  eRepeatMode repeatMode;

  PlayerStateInfo({this.positionTicks, this.canSeek, this.isPaused, this.isMuted, this.volumeLevel, this.audioStreamIndex, this.subtitleStreamIndex, this.mediaSourceId, this.playMethod, this.repeatMode});

  factory PlayerStateInfo.fromJson(Map<String, dynamic> json) => _$PlayerStateInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerStateInfoToJson(this);
}

@JsonSerializable(nullable: false)
class SessionUserInfo{
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "UserName")
  String userName;

  SessionUserInfo({this.userId, this.userName});

  factory SessionUserInfo.fromJson(Map<String, dynamic> json) => _$SessionUserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$SessionUserInfoToJson(this);
}

@JsonSerializable(nullable: false)
class ClientCapabilities{
  @JsonKey(name: "PlayableMediaTypes")
  List<String> playableMediaTypes;
  @JsonKey(name: "SupportedCommands")
  List<String> supportedCommands;
  @JsonKey(name: "SupportsMediaControl")
  bool supportsMediaControl;
  @JsonKey(name: "PushToken")
  String pushToken;
  @JsonKey(name: "PushTokenType")
  String pushTokenType;
  @JsonKey(name: "SupportsPersistentIdentifier")
  bool supportsPersistentIdentifier;
  @JsonKey(name: "SupportsSync")
  bool supportsSync;
  @JsonKey(name: "DeviceProfile")
  Dlna_DeviceProfile deviceProfile;
  @JsonKey(name: "IconUrl")
  String iconUrl;
  @JsonKey(name: "AppId")
  String appId;

  ClientCapabilities({this.playableMediaTypes, this.supportedCommands, this.supportsMediaControl, this.pushToken, this.pushTokenType, this.supportsPersistentIdentifier, this.supportsSync, this.deviceProfile, this.iconUrl, this.appId});

  factory ClientCapabilities.fromJson(Map<String, dynamic> json) => _$ClientCapabilitiesFromJson(json);
  Map<String, dynamic> toJson() => _$ClientCapabilitiesToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_DeviceProfile{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Identification")
  Dlna_DeviceIdentification identification;
  @JsonKey(name: "FriendlyName")
  String friendlyName;
  @JsonKey(name: "Manufacturer")
  String manufacturer;
  @JsonKey(name: "ManufacturerUrl")
  String manufacturerUrl;
  @JsonKey(name: "ModelName")
  String modelName;
  @JsonKey(name: "ModelDescription")
  String modelDescription;
  @JsonKey(name: "ModelNumber")
  String modelNumber;
  @JsonKey(name: "ModelUrl")
  String modelUrl;
  @JsonKey(name: "SerialNumber")
  String serialNumber;
  @JsonKey(name: "EnableAlbumArtInDidl")
  bool enableAlbumArtInDidl;
  @JsonKey(name: "EnableSingleAlbumArtLimit")
  bool enableSingleAlbumArtLimit;
  @JsonKey(name: "EnableSingleSubtitleLimit")
  bool enableSingleSubtitleLimit;
  @JsonKey(name: "SupportedMediaTypes")
  String supportedMediaTypes;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "AlbumArtPn")
  String albumArtPn;
  @JsonKey(name: "MaxAlbumArtWidth")
  int maxAlbumArtWidth;
  @JsonKey(name: "MaxAlbumArtHeight")
  int maxAlbumArtHeight;
  @JsonKey(name: "MaxIconWidth", nullable: true)
  int maxIconWidth;
  @JsonKey(name: "MaxIconHeight", nullable: true)
  int maxIconHeight;
  @JsonKey(name: "MaxStreamingBitrate", nullable: true)
  int maxStreamingBitrate;
  @JsonKey(name: "MaxStaticBitrate", nullable: true)
  int maxStaticBitrate;
  @JsonKey(name: "MusicStreamingTranscodingBitrate", nullable: true)
  int musicStreamingTranscodingBitrate;
  @JsonKey(name: "MaxStaticMusicBitrate", nullable: true)
  int maxStaticMusicBitrate;
  @JsonKey(name: "SonyAggregationFlags")
  String sonyAggregationFlags;
  @JsonKey(name: "ProtocolInfo")
  String protocolInfo;
  @JsonKey(name: "TimelineOffsetSeconds")
  int timelineOffsetSeconds;
  @JsonKey(name: "RequiresPlainVideoItems")
  bool requiresPlainVideoItems;
  @JsonKey(name: "RequiresPlainFolders")
  bool requiresPlainFolders;
  @JsonKey(name: "EnableMSMediaReceiverRegistrar")
  bool enableMSMediaReceiverRegistrar;
  @JsonKey(name: "IgnoreTranscodeByteRangeRequests")
  bool ignoreTranscodeByteRangeRequests;
  @JsonKey(name: "XmlRootAttributes")
  List<Dlna_XmlAttribute> xmlRootAttributes;
  @JsonKey(name: "DirectPlayProfiles")
  List<Dlna_DirectPlayProfile> directPlayProfiles;
  @JsonKey(name: "TranscodingProfiles")
  List<Dlna_TranscodingProfile> transcodingProfiles;
  @JsonKey(name: "ContainerProfiles")
  List<Dlna_ContainerProfile> containerProfiles;
  @JsonKey(name: "CodecProfiles")
  List<Dlna_CodecProfile> codecProfiles;
  @JsonKey(name: "ResponseProfiles")
  List<Dlna_ResponseProfile> responseProfiles;
  @JsonKey(name: "SubtitleProfiles")
  List<Dlna_SubtitleProfile> subtitleProfiles;

  Dlna_DeviceProfile({this.name, this.id, this.identification, this.friendlyName, this.manufacturer, this.manufacturerUrl, this.modelName, this.modelDescription, this.modelNumber, this.modelUrl, this.serialNumber, this.enableAlbumArtInDidl, this.enableSingleAlbumArtLimit, this.enableSingleSubtitleLimit, this.supportedMediaTypes, this.userId, this.albumArtPn, this.maxAlbumArtWidth, this.maxAlbumArtHeight, this.maxIconWidth, this.maxIconHeight, this.maxStreamingBitrate, this.maxStaticBitrate, this.musicStreamingTranscodingBitrate, this.maxStaticMusicBitrate, this.sonyAggregationFlags, this.protocolInfo, this.timelineOffsetSeconds, this.requiresPlainVideoItems, this.requiresPlainFolders, this.enableMSMediaReceiverRegistrar, this.ignoreTranscodeByteRangeRequests, this.xmlRootAttributes, this.directPlayProfiles, this.transcodingProfiles, this.containerProfiles, this.codecProfiles, this.responseProfiles, this.subtitleProfiles});

  factory Dlna_DeviceProfile.fromJson(Map<String, dynamic> json) => _$Dlna_DeviceProfileFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_DeviceProfileToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_DeviceIdentification{
  @JsonKey(name: "FriendlyName")
  String friendlyName;
  @JsonKey(name: "ModelNumber")
  String modelNumber;
  @JsonKey(name: "SerialNumber")
  String serialNumber;
  @JsonKey(name: "ModelName")
  String modelName;
  @JsonKey(name: "ModelDescription")
  String modelDescription;
  @JsonKey(name: "DeviceDescription")
  String deviceDescription;
  @JsonKey(name: "ModelUrl")
  String modelUrl;
  @JsonKey(name: "Manufacturer")
  String manufacturer;
  @JsonKey(name: "ManufacturerUrl")
  String manufacturerUrl;
  @JsonKey(name: "Headers")
  List<Dlna_HttpHeaderInfo> headers;

  Dlna_DeviceIdentification({this.friendlyName, this.modelNumber, this.serialNumber, this.modelName, this.modelDescription, this.deviceDescription, this.modelUrl, this.manufacturer, this.manufacturerUrl, this.headers});

  factory Dlna_DeviceIdentification.fromJson(Map<String, dynamic> json) => _$Dlna_DeviceIdentificationFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_DeviceIdentificationToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_HttpHeaderInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Value")
  String value;
  @JsonKey(name: "Match")
  eMatch match;

  Dlna_HttpHeaderInfo({this.name, this.value, this.match});

  factory Dlna_HttpHeaderInfo.fromJson(Map<String, dynamic> json) => _$Dlna_HttpHeaderInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_HttpHeaderInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_XmlAttribute{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Value")
  String value;

  Dlna_XmlAttribute({this.name, this.value});

  factory Dlna_XmlAttribute.fromJson(Map<String, dynamic> json) => _$Dlna_XmlAttributeFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_XmlAttributeToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_DirectPlayProfile{
  @JsonKey(name: "Container")
  String container;
  @JsonKey(name: "AudioCodec")
  String audioCodec;
  @JsonKey(name: "VideoCodec")
  String videoCodec;
  @JsonKey(name: "Type")
  eDlna_DirectPlayProfile_Type type;

  Dlna_DirectPlayProfile({this.container, this.audioCodec, this.videoCodec, this.type});

  factory Dlna_DirectPlayProfile.fromJson(Map<String, dynamic> json) => _$Dlna_DirectPlayProfileFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_DirectPlayProfileToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_TranscodingProfile{
  @JsonKey(name: "Container")
  String container;
  @JsonKey(name: "Type")
  eDlna_DirectPlayProfile_Type type;
  @JsonKey(name: "VideoCodec")
  String videoCodec;
  @JsonKey(name: "AudioCodec")
  String audioCodec;
  @JsonKey(name: "Protocol")
  String protocol;
  @JsonKey(name: "EstimateContentLength")
  bool estimateContentLength;
  @JsonKey(name: "EnableMpegtsM2TsMode")
  bool enableMpegtsM2TsMode;
  @JsonKey(name: "TranscodeSeekInfo")
  eTranscodeSeekInfo transcodeSeekInfo;
  @JsonKey(name: "CopyTimestamps")
  bool copyTimestamps;
  @JsonKey(name: "Context")
  eContext context;
  @JsonKey(name: "EnableSubtitlesInManifest")
  bool enableSubtitlesInManifest;
  @JsonKey(name: "MaxAudioChannels")
  String maxAudioChannels;
  @JsonKey(name: "MinSegments")
  int minSegments;
  @JsonKey(name: "SegmentLength")
  int segmentLength;
  @JsonKey(name: "BreakOnNonKeyFrames")
  bool breakOnNonKeyFrames;

  Dlna_TranscodingProfile({this.container, this.type, this.videoCodec, this.audioCodec, this.protocol, this.estimateContentLength, this.enableMpegtsM2TsMode, this.transcodeSeekInfo, this.copyTimestamps, this.context, this.enableSubtitlesInManifest, this.maxAudioChannels, this.minSegments, this.segmentLength, this.breakOnNonKeyFrames});

  factory Dlna_TranscodingProfile.fromJson(Map<String, dynamic> json) => _$Dlna_TranscodingProfileFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_TranscodingProfileToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_ContainerProfile{
  @JsonKey(name: "Type")
  eDlna_DirectPlayProfile_Type type;
  @JsonKey(name: "Conditions")
  List<Dlna_ProfileCondition> conditions;
  @JsonKey(name: "Container")
  String container;

  Dlna_ContainerProfile({this.type, this.conditions, this.container});

  factory Dlna_ContainerProfile.fromJson(Map<String, dynamic> json) => _$Dlna_ContainerProfileFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_ContainerProfileToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_ProfileCondition{
  @JsonKey(name: "Condition")
  eCondition condition;
  @JsonKey(name: "Property")
  eProperty property;
  @JsonKey(name: "Value")
  String value;
  @JsonKey(name: "IsRequired")
  bool isRequired;

  Dlna_ProfileCondition({this.condition, this.property, this.value, this.isRequired});

  factory Dlna_ProfileCondition.fromJson(Map<String, dynamic> json) => _$Dlna_ProfileConditionFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_ProfileConditionToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_CodecProfile{
  @JsonKey(name: "Type")
  eDlna_CodecProfile_Type type;
  @JsonKey(name: "Conditions")
  List<Dlna_ProfileCondition> conditions;
  @JsonKey(name: "ApplyConditions")
  List<Dlna_ProfileCondition> applyConditions;
  @JsonKey(name: "Codec")
  String codec;
  @JsonKey(name: "Container")
  String container;

  Dlna_CodecProfile({this.type, this.conditions, this.applyConditions, this.codec, this.container});

  factory Dlna_CodecProfile.fromJson(Map<String, dynamic> json) => _$Dlna_CodecProfileFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_CodecProfileToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_ResponseProfile{
  @JsonKey(name: "Container")
  String container;
  @JsonKey(name: "AudioCodec")
  String audioCodec;
  @JsonKey(name: "VideoCodec")
  String videoCodec;
  @JsonKey(name: "Type")
  eDlna_DirectPlayProfile_Type type;
  @JsonKey(name: "OrgPn")
  String orgPn;
  @JsonKey(name: "MimeType")
  String mimeType;
  @JsonKey(name: "Conditions")
  List<Dlna_ProfileCondition> conditions;

  Dlna_ResponseProfile({this.container, this.audioCodec, this.videoCodec, this.type, this.orgPn, this.mimeType, this.conditions});

  factory Dlna_ResponseProfile.fromJson(Map<String, dynamic> json) => _$Dlna_ResponseProfileFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_ResponseProfileToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_SubtitleProfile{
  @JsonKey(name: "Format")
  String format;
  @JsonKey(name: "Method")
  eDeliveryMethod method;
  @JsonKey(name: "DidlMode")
  String didlMode;
  @JsonKey(name: "Language")
  String language;
  @JsonKey(name: "Container")
  String container;

  Dlna_SubtitleProfile({this.format, this.method, this.didlMode, this.language, this.container});

  factory Dlna_SubtitleProfile.fromJson(Map<String, dynamic> json) => _$Dlna_SubtitleProfileFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_SubtitleProfileToJson(this);
}

@JsonSerializable(nullable: false)
class TranscodingInfo{
  @JsonKey(name: "AudioCodec")
  String audioCodec;
  @JsonKey(name: "VideoCodec")
  String videoCodec;
  @JsonKey(name: "Container")
  String container;
  @JsonKey(name: "IsVideoDirect")
  bool isVideoDirect;
  @JsonKey(name: "IsAudioDirect")
  bool isAudioDirect;
  @JsonKey(name: "Bitrate", nullable: true)
  int bitrate;
  @JsonKey(name: "Framerate", nullable: true)
  double framerate;
  @JsonKey(name: "CompletionPercentage", nullable: true)
  double completionPercentage;
  @JsonKey(name: "Width", nullable: true)
  int width;
  @JsonKey(name: "Height", nullable: true)
  int height;
  @JsonKey(name: "AudioChannels", nullable: true)
  int audioChannels;
  @JsonKey(name: "TranscodeReasons")
  List<eTranscodeReasons> transcodeReasons;

  TranscodingInfo({this.audioCodec, this.videoCodec, this.container, this.isVideoDirect, this.isAudioDirect, this.bitrate, this.framerate, this.completionPercentage, this.width, this.height, this.audioChannels, this.transcodeReasons});

  factory TranscodingInfo.fromJson(Map<String, dynamic> json) => _$TranscodingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$TranscodingInfoToJson(this);
}

@JsonSerializable(nullable: false)
class UserDto{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "ServerId")
  String serverId;
  @JsonKey(name: "ServerName")
  String serverName;
  @JsonKey(name: "ConnectUserName")
  String connectUserName;
  @JsonKey(name: "ConnectUserId")
  String connectUserId;
  @JsonKey(name: "ConnectLinkType")
  eConnectLinkType connectLinkType;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "PrimaryImageTag")
  String primaryImageTag;
  @JsonKey(name: "HasPassword")
  bool hasPassword;
  @JsonKey(name: "HasConfiguredPassword")
  bool hasConfiguredPassword;
  @JsonKey(name: "HasConfiguredEasyPassword")
  bool hasConfiguredEasyPassword;
  @JsonKey(name: "EnableAutoLogin", nullable: true)
  bool enableAutoLogin;
  @JsonKey(name: "LastLoginDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime lastLoginDate;
  @JsonKey(name: "LastActivityDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime lastActivityDate;
  @JsonKey(name: "Configuration")
  Configuration_UserConfiguration configuration;
  @JsonKey(name: "Policy")
  Users_UserPolicy policy;
  @JsonKey(name: "PrimaryImageAspectRatio", nullable: true)
  double primaryImageAspectRatio;

  UserDto({this.name, this.serverId, this.serverName, this.connectUserName, this.connectUserId, this.connectLinkType, this.id, this.primaryImageTag, this.hasPassword, this.hasConfiguredPassword, this.hasConfiguredEasyPassword, this.enableAutoLogin, this.lastLoginDate, this.lastActivityDate, this.configuration, this.policy, this.primaryImageAspectRatio});

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_UserConfiguration{
  @JsonKey(name: "AudioLanguagePreference")
  String audioLanguagePreference;
  @JsonKey(name: "PlayDefaultAudioTrack")
  bool playDefaultAudioTrack;
  @JsonKey(name: "SubtitleLanguagePreference")
  String subtitleLanguagePreference;
  @JsonKey(name: "DisplayMissingEpisodes")
  bool displayMissingEpisodes;
  @JsonKey(name: "GroupedFolders")
  List<String> groupedFolders;
  @JsonKey(name: "SubtitleMode")
  eSubtitleMode subtitleMode;
  @JsonKey(name: "DisplayCollectionsView")
  bool displayCollectionsView;
  @JsonKey(name: "EnableLocalPassword")
  bool enableLocalPassword;
  @JsonKey(name: "OrderedViews")
  List<String> orderedViews;
  @JsonKey(name: "LatestItemsExcludes")
  List<String> latestItemsExcludes;
  @JsonKey(name: "MyMediaExcludes")
  List<String> myMediaExcludes;
  @JsonKey(name: "HidePlayedInLatest")
  bool hidePlayedInLatest;
  @JsonKey(name: "RememberAudioSelections")
  bool rememberAudioSelections;
  @JsonKey(name: "RememberSubtitleSelections")
  bool rememberSubtitleSelections;
  @JsonKey(name: "EnableNextEpisodeAutoPlay")
  bool enableNextEpisodeAutoPlay;

  Configuration_UserConfiguration({this.audioLanguagePreference, this.playDefaultAudioTrack, this.subtitleLanguagePreference, this.displayMissingEpisodes, this.groupedFolders, this.subtitleMode, this.displayCollectionsView, this.enableLocalPassword, this.orderedViews, this.latestItemsExcludes, this.myMediaExcludes, this.hidePlayedInLatest, this.rememberAudioSelections, this.rememberSubtitleSelections, this.enableNextEpisodeAutoPlay});

  factory Configuration_UserConfiguration.fromJson(Map<String, dynamic> json) => _$Configuration_UserConfigurationFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_UserConfigurationToJson(this);
}

@JsonSerializable(nullable: false)
class Users_UserPolicy{
  @JsonKey(name: "IsAdministrator")
  bool isAdministrator;
  @JsonKey(name: "IsHidden")
  bool isHidden;
  @JsonKey(name: "IsDisabled")
  bool isDisabled;
  @JsonKey(name: "MaxParentalRating", nullable: true)
  int maxParentalRating;
  @JsonKey(name: "BlockedTags")
  List<String> blockedTags;
  @JsonKey(name: "EnableUserPreferenceAccess")
  bool enableUserPreferenceAccess;
  @JsonKey(name: "AccessSchedules")
  List<Configuration_AccessSchedule> accessSchedules;
  @JsonKey(name: "BlockUnratedItems")
  List<eBlockUnratedItems> blockUnratedItems;
  @JsonKey(name: "EnableRemoteControlOfOtherUsers")
  bool enableRemoteControlOfOtherUsers;
  @JsonKey(name: "EnableSharedDeviceControl")
  bool enableSharedDeviceControl;
  @JsonKey(name: "EnableRemoteAccess")
  bool enableRemoteAccess;
  @JsonKey(name: "EnableLiveTvManagement")
  bool enableLiveTvManagement;
  @JsonKey(name: "EnableLiveTvAccess")
  bool enableLiveTvAccess;
  @JsonKey(name: "EnableMediaPlayback")
  bool enableMediaPlayback;
  @JsonKey(name: "EnableAudioPlaybackTranscoding")
  bool enableAudioPlaybackTranscoding;
  @JsonKey(name: "EnableVideoPlaybackTranscoding")
  bool enableVideoPlaybackTranscoding;
  @JsonKey(name: "EnablePlaybackRemuxing")
  bool enablePlaybackRemuxing;
  @JsonKey(name: "EnableContentDeletion")
  bool enableContentDeletion;
  @JsonKey(name: "EnableContentDeletionFromFolders")
  List<String> enableContentDeletionFromFolders;
  @JsonKey(name: "EnableContentDownloading")
  bool enableContentDownloading;
  @JsonKey(name: "EnableSyncTranscoding")
  bool enableSyncTranscoding;
  @JsonKey(name: "EnableMediaConversion")
  bool enableMediaConversion;
  @JsonKey(name: "EnabledDevices")
  List<String> enabledDevices;
  @JsonKey(name: "EnableAllDevices")
  bool enableAllDevices;
  @JsonKey(name: "EnabledChannels")
  List<String> enabledChannels;
  @JsonKey(name: "EnableAllChannels")
  bool enableAllChannels;
  @JsonKey(name: "EnabledFolders")
  List<String> enabledFolders;
  @JsonKey(name: "EnableAllFolders")
  bool enableAllFolders;
  @JsonKey(name: "InvalidLoginAttemptCount")
  int invalidLoginAttemptCount;
  @JsonKey(name: "EnablePublicSharing")
  bool enablePublicSharing;
  @JsonKey(name: "BlockedMediaFolders")
  List<String> blockedMediaFolders;
  @JsonKey(name: "BlockedChannels")
  List<String> blockedChannels;
  @JsonKey(name: "RemoteClientBitrateLimit")
  int remoteClientBitrateLimit;
  @JsonKey(name: "AuthenticationProviderId")
  String authenticationProviderId;

  Users_UserPolicy({this.isAdministrator, this.isHidden, this.isDisabled, this.maxParentalRating, this.blockedTags, this.enableUserPreferenceAccess, this.accessSchedules, this.blockUnratedItems, this.enableRemoteControlOfOtherUsers, this.enableSharedDeviceControl, this.enableRemoteAccess, this.enableLiveTvManagement, this.enableLiveTvAccess, this.enableMediaPlayback, this.enableAudioPlaybackTranscoding, this.enableVideoPlaybackTranscoding, this.enablePlaybackRemuxing, this.enableContentDeletion, this.enableContentDeletionFromFolders, this.enableContentDownloading, this.enableSyncTranscoding, this.enableMediaConversion, this.enabledDevices, this.enableAllDevices, this.enabledChannels, this.enableAllChannels, this.enabledFolders, this.enableAllFolders, this.invalidLoginAttemptCount, this.enablePublicSharing, this.blockedMediaFolders, this.blockedChannels, this.remoteClientBitrateLimit, this.authenticationProviderId});

  factory Users_UserPolicy.fromJson(Map<String, dynamic> json) => _$Users_UserPolicyFromJson(json);
  Map<String, dynamic> toJson() => _$Users_UserPolicyToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_AccessSchedule{
  @JsonKey(name: "DayOfWeek")
  eDayOfWeek dayOfWeek;
  @JsonKey(name: "StartHour")
  double startHour;
  @JsonKey(name: "EndHour")
  double endHour;

  Configuration_AccessSchedule({this.dayOfWeek, this.startHour, this.endHour});

  factory Configuration_AccessSchedule.fromJson(Map<String, dynamic> json) => _$Configuration_AccessScheduleFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_AccessScheduleToJson(this);
}

@JsonSerializable(nullable: false)
class NameIdPair{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Id")
  String id;

  NameIdPair({this.name, this.id});

  factory NameIdPair.fromJson(Map<String, dynamic> json) => _$NameIdPairFromJson(json);
  Map<String, dynamic> toJson() => _$NameIdPairToJson(this);
}

@JsonSerializable(nullable: false)
class Branding_BrandingOptions{
  @JsonKey(name: "LoginDisclaimer")
  String loginDisclaimer;
  @JsonKey(name: "CustomCss")
  String customCss;

  Branding_BrandingOptions({this.loginDisclaimer, this.customCss});

  factory Branding_BrandingOptions.fromJson(Map<String, dynamic> json) => _$Branding_BrandingOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$Branding_BrandingOptionsToJson(this);
}

@JsonSerializable(nullable: false)
class Channels_ChannelFeatures{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "CanSearch")
  bool canSearch;
  @JsonKey(name: "MediaTypes")
  List<eDlna_DirectPlayProfile_Type> mediaTypes;
  @JsonKey(name: "ContentTypes")
  List<eContentTypes> contentTypes;
  @JsonKey(name: "MaxPageSize", nullable: true)
  int maxPageSize;
  @JsonKey(name: "AutoRefreshLevels", nullable: true)
  int autoRefreshLevels;
  @JsonKey(name: "DefaultSortFields")
  List<eDefaultSortFields> defaultSortFields;
  @JsonKey(name: "SupportsSortOrderToggle")
  bool supportsSortOrderToggle;
  @JsonKey(name: "SupportsLatestMedia")
  bool supportsLatestMedia;
  @JsonKey(name: "CanFilter")
  bool canFilter;
  @JsonKey(name: "SupportsContentDownloading")
  bool supportsContentDownloading;

  Channels_ChannelFeatures({this.name, this.id, this.canSearch, this.mediaTypes, this.contentTypes, this.maxPageSize, this.autoRefreshLevels, this.defaultSortFields, this.supportsSortOrderToggle, this.supportsLatestMedia, this.canFilter, this.supportsContentDownloading});

  factory Channels_ChannelFeatures.fromJson(Map<String, dynamic> json) => _$Channels_ChannelFeaturesFromJson(json);
  Map<String, dynamic> toJson() => _$Channels_ChannelFeaturesToJson(this);
}

@JsonSerializable(nullable: false)
class Connect_Api_CreateConnectInvite{
  @JsonKey(name: "ConnectUsername")
  String connectUsername;
  @JsonKey(name: "SendingUserId")
  String sendingUserId;
  @JsonKey(name: "EnabledLibraries")
  String enabledLibraries;
  @JsonKey(name: "EnabledChannels")
  String enabledChannels;
  @JsonKey(name: "EnableLiveTv")
  bool enableLiveTv;

  Connect_Api_CreateConnectInvite({this.connectUsername, this.sendingUserId, this.enabledLibraries, this.enabledChannels, this.enableLiveTv});

  factory Connect_Api_CreateConnectInvite.fromJson(Map<String, dynamic> json) => _$Connect_Api_CreateConnectInviteFromJson(json);
  Map<String, dynamic> toJson() => _$Connect_Api_CreateConnectInviteToJson(this);
}

@JsonSerializable(nullable: false)
class Connect_UserLinkResult{
  @JsonKey(name: "IsPending")
  bool isPending;
  @JsonKey(name: "IsNewUserInvitation")
  bool isNewUserInvitation;
  @JsonKey(name: "GuestDisplayName")
  String guestDisplayName;

  Connect_UserLinkResult({this.isPending, this.isNewUserInvitation, this.guestDisplayName});

  factory Connect_UserLinkResult.fromJson(Map<String, dynamic> json) => _$Connect_UserLinkResultFromJson(json);
  Map<String, dynamic> toJson() => _$Connect_UserLinkResultToJson(this);
}

@JsonSerializable(nullable: false)
class Connect_ConnectAuthorization{
  @JsonKey(name: "ConnectUserId")
  String connectUserId;
  @JsonKey(name: "UserName")
  String userName;
  @JsonKey(name: "ImageUrl")
  String imageUrl;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "EnabledLibraries")
  List<String> enabledLibraries;
  @JsonKey(name: "EnableLiveTv")
  bool enableLiveTv;
  @JsonKey(name: "EnabledChannels")
  List<String> enabledChannels;

  Connect_ConnectAuthorization({this.connectUserId, this.userName, this.imageUrl, this.id, this.enabledLibraries, this.enableLiveTv, this.enabledChannels});

  factory Connect_ConnectAuthorization.fromJson(Map<String, dynamic> json) => _$Connect_ConnectAuthorizationFromJson(json);
  Map<String, dynamic> toJson() => _$Connect_ConnectAuthorizationToJson(this);
}

@JsonSerializable(nullable: false)
class Connect_ConnectAuthenticationExchangeResult{
  @JsonKey(name: "LocalUserId")
  String localUserId;
  @JsonKey(name: "AccessToken")
  String accessToken;

  Connect_ConnectAuthenticationExchangeResult({this.localUserId, this.accessToken});

  factory Connect_ConnectAuthenticationExchangeResult.fromJson(Map<String, dynamic> json) => _$Connect_ConnectAuthenticationExchangeResultFromJson(json);
  Map<String, dynamic> toJson() => _$Connect_ConnectAuthenticationExchangeResultToJson(this);
}

@JsonSerializable(nullable: false)
class Devices_ContentUploadHistory{
  @JsonKey(name: "DeviceId")
  String deviceId;
  @JsonKey(name: "FilesUploaded")
  List<Devices_LocalFileInfo> filesUploaded;

  Devices_ContentUploadHistory({this.deviceId, this.filesUploaded});

  factory Devices_ContentUploadHistory.fromJson(Map<String, dynamic> json) => _$Devices_ContentUploadHistoryFromJson(json);
  Map<String, dynamic> toJson() => _$Devices_ContentUploadHistoryToJson(this);
}

@JsonSerializable(nullable: false)
class Devices_LocalFileInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Album")
  String album;
  @JsonKey(name: "MimeType")
  String mimeType;

  Devices_LocalFileInfo({this.name, this.id, this.album, this.mimeType});

  factory Devices_LocalFileInfo.fromJson(Map<String, dynamic> json) => _$Devices_LocalFileInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Devices_LocalFileInfoToJson(this);
}

@JsonSerializable(nullable: false)
class DisplayPreferences{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "ViewType")
  String viewType;
  @JsonKey(name: "SortBy")
  String sortBy;
  @JsonKey(name: "IndexBy")
  String indexBy;
  @JsonKey(name: "RememberIndexing")
  bool rememberIndexing;
  @JsonKey(name: "PrimaryImageHeight")
  int primaryImageHeight;
  @JsonKey(name: "PrimaryImageWidth")
  int primaryImageWidth;
  @JsonKey(name: "CustomPrefs")
  Map<String,String> customPrefs;
  @JsonKey(name: "ScrollDirection")
  eScrollDirection scrollDirection;
  @JsonKey(name: "ShowBackdrop")
  bool showBackdrop;
  @JsonKey(name: "RememberSorting")
  bool rememberSorting;
  @JsonKey(name: "SortOrder")
  eSortOrder sortOrder;
  @JsonKey(name: "ShowSidebar")
  bool showSidebar;
  @JsonKey(name: "Client")
  String client;

  DisplayPreferences({this.id, this.viewType, this.sortBy, this.indexBy, this.rememberIndexing, this.primaryImageHeight, this.primaryImageWidth, this.customPrefs, this.scrollDirection, this.showBackdrop, this.rememberSorting, this.sortOrder, this.showSidebar, this.client});

  factory DisplayPreferences.fromJson(Map<String, dynamic> json) => _$DisplayPreferencesFromJson(json);
  Map<String, dynamic> toJson() => _$DisplayPreferencesToJson(this);
}

@JsonSerializable(nullable: false)
class Dlna_DeviceProfileInfo{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Type")
  eDlna_DeviceProfileInfo_Type type;

  Dlna_DeviceProfileInfo({this.id, this.name, this.type});

  factory Dlna_DeviceProfileInfo.fromJson(Map<String, dynamic> json) => _$Dlna_DeviceProfileInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Dlna_DeviceProfileInfoToJson(this);
}

@JsonSerializable(nullable: false)
class ValidatePath{
  @JsonKey(name: "ValidateWriteable")
  bool validateWriteable;
  @JsonKey(name: "IsFile", nullable: true)
  bool isFile;

  ValidatePath({this.validateWriteable, this.isFile});

  factory ValidatePath.fromJson(Map<String, dynamic> json) => _$ValidatePathFromJson(json);
  Map<String, dynamic> toJson() => _$ValidatePathToJson(this);
}

@JsonSerializable(nullable: false)
class DefaultDirectoryBrowserInfo{
  @JsonKey(name: "Path")
  String path;

  DefaultDirectoryBrowserInfo({this.path});

  factory DefaultDirectoryBrowserInfo.fromJson(Map<String, dynamic> json) => _$DefaultDirectoryBrowserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$DefaultDirectoryBrowserInfoToJson(this);
}

@JsonSerializable(nullable: false)
class IO_FileSystemEntryInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "Type")
  eIO_FileSystemEntryInfo_Type type;

  IO_FileSystemEntryInfo({this.name, this.path, this.type});

  factory IO_FileSystemEntryInfo.fromJson(Map<String, dynamic> json) => _$IO_FileSystemEntryInfoFromJson(json);
  Map<String, dynamic> toJson() => _$IO_FileSystemEntryInfoToJson(this);
}

@JsonSerializable(nullable: false)
class GameSystemSummary{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "DisplayName")
  String displayName;
  @JsonKey(name: "GameCount")
  int gameCount;
  @JsonKey(name: "GameFileExtensions")
  List<String> gameFileExtensions;
  @JsonKey(name: "ClientInstalledGameCount")
  int clientInstalledGameCount;

  GameSystemSummary({this.name, this.displayName, this.gameCount, this.gameFileExtensions, this.clientInstalledGameCount});

  factory GameSystemSummary.fromJson(Map<String, dynamic> json) => _$GameSystemSummaryFromJson(json);
  Map<String, dynamic> toJson() => _$GameSystemSummaryToJson(this);
}

@JsonSerializable(nullable: false)
class ImageByNameInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Theme")
  String theme;
  @JsonKey(name: "Context")
  String context;
  @JsonKey(name: "FileLength")
  int fileLength;
  @JsonKey(name: "Format")
  String format;

  ImageByNameInfo({this.name, this.theme, this.context, this.fileLength, this.format});

  factory ImageByNameInfo.fromJson(Map<String, dynamic> json) => _$ImageByNameInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ImageByNameInfoToJson(this);
}

@JsonSerializable(nullable: false)
class QueryFilters{
  @JsonKey(name: "Genres")
  List<NameGuidPair> genres;
  @JsonKey(name: "Tags")
  List<String> tags;

  QueryFilters({this.genres, this.tags});

  factory QueryFilters.fromJson(Map<String, dynamic> json) => _$QueryFiltersFromJson(json);
  Map<String, dynamic> toJson() => _$QueryFiltersToJson(this);
}

@JsonSerializable(nullable: false)
class QueryFiltersLegacy{
  @JsonKey(name: "Genres")
  List<String> genres;
  @JsonKey(name: "Tags")
  List<String> tags;
  @JsonKey(name: "OfficialRatings")
  List<String> officialRatings;
  @JsonKey(name: "Years")
  List<int> years;

  QueryFiltersLegacy({this.genres, this.tags, this.officialRatings, this.years});

  factory QueryFiltersLegacy.fromJson(Map<String, dynamic> json) => _$QueryFiltersLegacyFromJson(json);
  Map<String, dynamic> toJson() => _$QueryFiltersLegacyToJson(this);
}

@JsonSerializable(nullable: false)
class ItemCounts{
  @JsonKey(name: "MovieCount")
  int movieCount;
  @JsonKey(name: "SeriesCount")
  int seriesCount;
  @JsonKey(name: "EpisodeCount")
  int episodeCount;
  @JsonKey(name: "GameCount")
  int gameCount;
  @JsonKey(name: "ArtistCount")
  int artistCount;
  @JsonKey(name: "ProgramCount")
  int programCount;
  @JsonKey(name: "GameSystemCount")
  int gameSystemCount;
  @JsonKey(name: "TrailerCount")
  int trailerCount;
  @JsonKey(name: "SongCount")
  int songCount;
  @JsonKey(name: "AlbumCount")
  int albumCount;
  @JsonKey(name: "MusicVideoCount")
  int musicVideoCount;
  @JsonKey(name: "BoxSetCount")
  int boxSetCount;
  @JsonKey(name: "BookCount")
  int bookCount;
  @JsonKey(name: "ItemCount")
  int itemCount;

  ItemCounts({this.movieCount, this.seriesCount, this.episodeCount, this.gameCount, this.artistCount, this.programCount, this.gameSystemCount, this.trailerCount, this.songCount, this.albumCount, this.musicVideoCount, this.boxSetCount, this.bookCount, this.itemCount});

  factory ItemCounts.fromJson(Map<String, dynamic> json) => _$ItemCountsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemCountsToJson(this);
}

@JsonSerializable(nullable: false)
class Library_LibraryOptionsResult{
  @JsonKey(name: "MetadataSavers")
  List<Library_LibraryOptionInfo> metadataSavers;
  @JsonKey(name: "MetadataReaders")
  List<Library_LibraryOptionInfo> metadataReaders;
  @JsonKey(name: "SubtitleFetchers")
  List<Library_LibraryOptionInfo> subtitleFetchers;
  @JsonKey(name: "TypeOptions")
  List<Library_LibraryTypeOptions> typeOptions;

  Library_LibraryOptionsResult({this.metadataSavers, this.metadataReaders, this.subtitleFetchers, this.typeOptions});

  factory Library_LibraryOptionsResult.fromJson(Map<String, dynamic> json) => _$Library_LibraryOptionsResultFromJson(json);
  Map<String, dynamic> toJson() => _$Library_LibraryOptionsResultToJson(this);
}

@JsonSerializable(nullable: false)
class Library_LibraryOptionInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "DefaultEnabled")
  bool defaultEnabled;

  Library_LibraryOptionInfo({this.name, this.defaultEnabled});

  factory Library_LibraryOptionInfo.fromJson(Map<String, dynamic> json) => _$Library_LibraryOptionInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Library_LibraryOptionInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Library_LibraryTypeOptions{
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "MetadataFetchers")
  List<Library_LibraryOptionInfo> metadataFetchers;
  @JsonKey(name: "ImageFetchers")
  List<Library_LibraryOptionInfo> imageFetchers;
  @JsonKey(name: "SupportedImageTypes")
  List<eSupportedImageTypes> supportedImageTypes;
  @JsonKey(name: "DefaultImageOptions")
  List<Configuration_ImageOption> defaultImageOptions;

  Library_LibraryTypeOptions({this.type, this.metadataFetchers, this.imageFetchers, this.supportedImageTypes, this.defaultImageOptions});

  factory Library_LibraryTypeOptions.fromJson(Map<String, dynamic> json) => _$Library_LibraryTypeOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$Library_LibraryTypeOptionsToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_ImageOption{
  @JsonKey(name: "Type")
  eSupportedImageTypes type;
  @JsonKey(name: "Limit")
  int limit;
  @JsonKey(name: "MinWidth")
  int minWidth;

  Configuration_ImageOption({this.type, this.limit, this.minWidth});

  factory Configuration_ImageOption.fromJson(Map<String, dynamic> json) => _$Configuration_ImageOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_ImageOptionToJson(this);
}

@JsonSerializable(nullable: false)
class VirtualFolderInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Locations")
  List<String> locations;
  @JsonKey(name: "CollectionType")
  String collectionType;
  @JsonKey(name: "LibraryOptions")
  Configuration_LibraryOptions libraryOptions;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "PrimaryImageItemId")
  String primaryImageItemId;
  @JsonKey(name: "RefreshProgress", nullable: true)
  double refreshProgress;
  @JsonKey(name: "RefreshStatus")
  String refreshStatus;

  VirtualFolderInfo({this.name, this.locations, this.collectionType, this.libraryOptions, this.itemId, this.primaryImageItemId, this.refreshProgress, this.refreshStatus});

  factory VirtualFolderInfo.fromJson(Map<String, dynamic> json) => _$VirtualFolderInfoFromJson(json);
  Map<String, dynamic> toJson() => _$VirtualFolderInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_LibraryOptions{
  @JsonKey(name: "EnableArchiveMediaFiles")
  bool enableArchiveMediaFiles;
  @JsonKey(name: "EnablePhotos")
  bool enablePhotos;
  @JsonKey(name: "EnableRealtimeMonitor")
  bool enableRealtimeMonitor;
  @JsonKey(name: "EnableChapterImageExtraction")
  bool enableChapterImageExtraction;
  @JsonKey(name: "ExtractChapterImagesDuringLibraryScan")
  bool extractChapterImagesDuringLibraryScan;
  @JsonKey(name: "DownloadImagesInAdvance")
  bool downloadImagesInAdvance;
  @JsonKey(name: "PathInfos")
  List<Configuration_MediaPathInfo> pathInfos;
  @JsonKey(name: "SaveLocalMetadata")
  bool saveLocalMetadata;
  @JsonKey(name: "EnableInternetProviders")
  bool enableInternetProviders;
  @JsonKey(name: "ImportMissingEpisodes")
  bool importMissingEpisodes;
  @JsonKey(name: "EnableAutomaticSeriesGrouping")
  bool enableAutomaticSeriesGrouping;
  @JsonKey(name: "EnableEmbeddedTitles")
  bool enableEmbeddedTitles;
  @JsonKey(name: "AutomaticRefreshIntervalDays")
  int automaticRefreshIntervalDays;
  @JsonKey(name: "PreferredMetadataLanguage")
  String preferredMetadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "SeasonZeroDisplayName")
  String seasonZeroDisplayName;
  @JsonKey(name: "MetadataSavers")
  List<String> metadataSavers;
  @JsonKey(name: "DisabledLocalMetadataReaders")
  List<String> disabledLocalMetadataReaders;
  @JsonKey(name: "LocalMetadataReaderOrder")
  List<String> localMetadataReaderOrder;
  @JsonKey(name: "DisabledSubtitleFetchers")
  List<String> disabledSubtitleFetchers;
  @JsonKey(name: "SubtitleFetcherOrder")
  List<String> subtitleFetcherOrder;
  @JsonKey(name: "SkipSubtitlesIfEmbeddedSubtitlesPresent")
  bool skipSubtitlesIfEmbeddedSubtitlesPresent;
  @JsonKey(name: "SkipSubtitlesIfAudioTrackMatches")
  bool skipSubtitlesIfAudioTrackMatches;
  @JsonKey(name: "SubtitleDownloadLanguages")
  List<String> subtitleDownloadLanguages;
  @JsonKey(name: "RequirePerfectSubtitleMatch")
  bool requirePerfectSubtitleMatch;
  @JsonKey(name: "SaveSubtitlesWithMedia")
  bool saveSubtitlesWithMedia;
  @JsonKey(name: "TypeOptions")
  List<Configuration_TypeOptions> typeOptions;

  Configuration_LibraryOptions({this.enableArchiveMediaFiles, this.enablePhotos, this.enableRealtimeMonitor, this.enableChapterImageExtraction, this.extractChapterImagesDuringLibraryScan, this.downloadImagesInAdvance, this.pathInfos, this.saveLocalMetadata, this.enableInternetProviders, this.importMissingEpisodes, this.enableAutomaticSeriesGrouping, this.enableEmbeddedTitles, this.automaticRefreshIntervalDays, this.preferredMetadataLanguage, this.metadataCountryCode, this.seasonZeroDisplayName, this.metadataSavers, this.disabledLocalMetadataReaders, this.localMetadataReaderOrder, this.disabledSubtitleFetchers, this.subtitleFetcherOrder, this.skipSubtitlesIfEmbeddedSubtitlesPresent, this.skipSubtitlesIfAudioTrackMatches, this.subtitleDownloadLanguages, this.requirePerfectSubtitleMatch, this.saveSubtitlesWithMedia, this.typeOptions});

  factory Configuration_LibraryOptions.fromJson(Map<String, dynamic> json) => _$Configuration_LibraryOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_LibraryOptionsToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_MediaPathInfo{
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "NetworkPath")
  String networkPath;

  Configuration_MediaPathInfo({this.path, this.networkPath});

  factory Configuration_MediaPathInfo.fromJson(Map<String, dynamic> json) => _$Configuration_MediaPathInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_MediaPathInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_TypeOptions{
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "MetadataFetchers")
  List<String> metadataFetchers;
  @JsonKey(name: "MetadataFetcherOrder")
  List<String> metadataFetcherOrder;
  @JsonKey(name: "ImageFetchers")
  List<String> imageFetchers;
  @JsonKey(name: "ImageFetcherOrder")
  List<String> imageFetcherOrder;
  @JsonKey(name: "ImageOptions")
  List<Configuration_ImageOption> imageOptions;

  Configuration_TypeOptions({this.type, this.metadataFetchers, this.metadataFetcherOrder, this.imageFetchers, this.imageFetcherOrder, this.imageOptions});

  factory Configuration_TypeOptions.fromJson(Map<String, dynamic> json) => _$Configuration_TypeOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_TypeOptionsToJson(this);
}

@JsonSerializable(nullable: false)
class Library_AddVirtualFolder{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "CollectionType")
  String collectionType;
  @JsonKey(name: "RefreshLibrary")
  bool refreshLibrary;
  @JsonKey(name: "Paths")
  List<String> paths;
  @JsonKey(name: "LibraryOptions")
  Configuration_LibraryOptions libraryOptions;

  Library_AddVirtualFolder({this.name, this.collectionType, this.refreshLibrary, this.paths, this.libraryOptions});

  factory Library_AddVirtualFolder.fromJson(Map<String, dynamic> json) => _$Library_AddVirtualFolderFromJson(json);
  Map<String, dynamic> toJson() => _$Library_AddVirtualFolderToJson(this);
}

@JsonSerializable(nullable: false)
class MediaInfo_LiveStreamRequest{
  @JsonKey(name: "OpenToken")
  String openToken;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "PlaySessionId")
  String playSessionId;
  @JsonKey(name: "MaxStreamingBitrate", nullable: true)
  int maxStreamingBitrate;
  @JsonKey(name: "StartTimeTicks", nullable: true)
  int startTimeTicks;
  @JsonKey(name: "AudioStreamIndex", nullable: true)
  int audioStreamIndex;
  @JsonKey(name: "SubtitleStreamIndex", nullable: true)
  int subtitleStreamIndex;
  @JsonKey(name: "MaxAudioChannels", nullable: true)
  int maxAudioChannels;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "DeviceProfile")
  Dlna_DeviceProfile deviceProfile;
  @JsonKey(name: "EnableDirectPlay")
  bool enableDirectPlay;
  @JsonKey(name: "EnableDirectStream")
  bool enableDirectStream;
  @JsonKey(name: "DirectPlayProtocols")
  List<eProtocol> directPlayProtocols;

  MediaInfo_LiveStreamRequest({this.openToken, this.userId, this.playSessionId, this.maxStreamingBitrate, this.startTimeTicks, this.audioStreamIndex, this.subtitleStreamIndex, this.maxAudioChannels, this.itemId, this.deviceProfile, this.enableDirectPlay, this.enableDirectStream, this.directPlayProtocols});

  factory MediaInfo_LiveStreamRequest.fromJson(Map<String, dynamic> json) => _$MediaInfo_LiveStreamRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MediaInfo_LiveStreamRequestToJson(this);
}

@JsonSerializable(nullable: false)
class MediaInfo_LiveStreamResponse{
  @JsonKey(name: "MediaSource")
  MediaSourceInfo mediaSource;

  MediaInfo_LiveStreamResponse({this.mediaSource});

  factory MediaInfo_LiveStreamResponse.fromJson(Map<String, dynamic> json) => _$MediaInfo_LiveStreamResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MediaInfo_LiveStreamResponseToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_SetChannelMapping{
  @JsonKey(name: "TunerChannelId")
  String tunerChannelId;
  @JsonKey(name: "ProviderChannelId")
  String providerChannelId;

  LiveTv_SetChannelMapping({this.tunerChannelId, this.providerChannelId});

  factory LiveTv_SetChannelMapping.fromJson(Map<String, dynamic> json) => _$LiveTv_SetChannelMappingFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_SetChannelMappingToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_ListingsProviderInfo{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "Username")
  String username;
  @JsonKey(name: "Password")
  String password;
  @JsonKey(name: "ListingsId")
  String listingsId;
  @JsonKey(name: "ZipCode")
  String zipCode;
  @JsonKey(name: "Country")
  String country;
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "EnabledTuners")
  List<String> enabledTuners;
  @JsonKey(name: "EnableAllTuners")
  bool enableAllTuners;
  @JsonKey(name: "NewsCategories")
  List<String> newsCategories;
  @JsonKey(name: "SportsCategories")
  List<String> sportsCategories;
  @JsonKey(name: "KidsCategories")
  List<String> kidsCategories;
  @JsonKey(name: "MovieCategories")
  List<String> movieCategories;
  @JsonKey(name: "ChannelMappings")
  List<NameValuePair> channelMappings;
  @JsonKey(name: "MoviePrefix")
  String moviePrefix;
  @JsonKey(name: "PreferredLanguage")
  String preferredLanguage;
  @JsonKey(name: "UserAgent")
  String userAgent;

  LiveTv_ListingsProviderInfo({this.id, this.type, this.username, this.password, this.listingsId, this.zipCode, this.country, this.path, this.enabledTuners, this.enableAllTuners, this.newsCategories, this.sportsCategories, this.kidsCategories, this.movieCategories, this.channelMappings, this.moviePrefix, this.preferredLanguage, this.userAgent});

  factory LiveTv_ListingsProviderInfo.fromJson(Map<String, dynamic> json) => _$LiveTv_ListingsProviderInfoFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_ListingsProviderInfoToJson(this);
}

@JsonSerializable(nullable: false)
class NameValuePair{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Value")
  String value;

  NameValuePair({this.name, this.value});

  factory NameValuePair.fromJson(Map<String, dynamic> json) => _$NameValuePairFromJson(json);
  Map<String, dynamic> toJson() => _$NameValuePairToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_TunerHostInfo{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Url")
  String url;
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "DeviceId")
  String deviceId;
  @JsonKey(name: "FriendlyName")
  String friendlyName;
  @JsonKey(name: "ImportFavoritesOnly")
  bool importFavoritesOnly;
  @JsonKey(name: "AllowHWTranscoding")
  bool allowHWTranscoding;
  @JsonKey(name: "EnableStreamLooping")
  bool enableStreamLooping;
  @JsonKey(name: "Source")
  String source;
  @JsonKey(name: "TunerCount")
  int tunerCount;
  @JsonKey(name: "UserAgent")
  String userAgent;

  LiveTv_TunerHostInfo({this.id, this.url, this.type, this.deviceId, this.friendlyName, this.importFavoritesOnly, this.allowHWTranscoding, this.enableStreamLooping, this.source, this.tunerCount, this.userAgent});

  factory LiveTv_TunerHostInfo.fromJson(Map<String, dynamic> json) => _$LiveTv_TunerHostInfoFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_TunerHostInfoToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_LiveTvInfo{
  @JsonKey(name: "Services")
  List<LiveTv_LiveTvServiceInfo> services;
  @JsonKey(name: "IsEnabled")
  bool isEnabled;
  @JsonKey(name: "EnabledUsers")
  List<String> enabledUsers;

  LiveTv_LiveTvInfo({this.services, this.isEnabled, this.enabledUsers});

  factory LiveTv_LiveTvInfo.fromJson(Map<String, dynamic> json) => _$LiveTv_LiveTvInfoFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_LiveTvInfoToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_LiveTvServiceInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "HomePageUrl")
  String homePageUrl;
  @JsonKey(name: "Status")
  eLiveTv_LiveTvServiceInfo_Status status;
  @JsonKey(name: "StatusMessage")
  String statusMessage;
  @JsonKey(name: "Version")
  String version;
  @JsonKey(name: "HasUpdateAvailable")
  bool hasUpdateAvailable;
  @JsonKey(name: "IsVisible")
  bool isVisible;
  @JsonKey(name: "Tuners")
  List<String> tuners;

  LiveTv_LiveTvServiceInfo({this.name, this.homePageUrl, this.status, this.statusMessage, this.version, this.hasUpdateAvailable, this.isVisible, this.tuners});

  factory LiveTv_LiveTvServiceInfo.fromJson(Map<String, dynamic> json) => _$LiveTv_LiveTvServiceInfoFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_LiveTvServiceInfoToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_GetPrograms{
  @JsonKey(name: "IsAiring", nullable: true)
  bool isAiring;
  @JsonKey(name: "EnableTotalRecordCount")
  bool enableTotalRecordCount;
  @JsonKey(name: "SeriesTimerId")
  String seriesTimerId;
  @JsonKey(name: "LibrarySeriesId")
  String librarySeriesId;

  LiveTv_GetPrograms({this.isAiring, this.enableTotalRecordCount, this.seriesTimerId, this.librarySeriesId});

  factory LiveTv_GetPrograms.fromJson(Map<String, dynamic> json) => _$LiveTv_GetProgramsFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_GetProgramsToJson(this);
}

@JsonSerializable(nullable: false)
class QueryResult_LiveTv_TimerInfoDto{
  @JsonKey(name: "Items")
  List<LiveTv_TimerInfoDto> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  QueryResult_LiveTv_TimerInfoDto({this.items, this.totalRecordCount});

  factory QueryResult_LiveTv_TimerInfoDto.fromJson(Map<String, dynamic> json) => _$QueryResult_LiveTv_TimerInfoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResult_LiveTv_TimerInfoDtoToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_TimerInfoDto{
  @JsonKey(name: "Status")
  eLiveTv_TimerInfoDto_Status status;
  @JsonKey(name: "SeriesTimerId")
  String seriesTimerId;
  @JsonKey(name: "ExternalSeriesTimerId")
  String externalSeriesTimerId;
  @JsonKey(name: "RunTimeTicks", nullable: true)
  int runTimeTicks;
  @JsonKey(name: "ProgramInfo")
  BaseItemDto programInfo;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "ServerId")
  String serverId;
  @JsonKey(name: "ExternalId")
  String externalId;
  @JsonKey(name: "ChannelId")
  String channelId;
  @JsonKey(name: "ExternalChannelId")
  String externalChannelId;
  @JsonKey(name: "ChannelName")
  String channelName;
  @JsonKey(name: "ChannelPrimaryImageTag")
  String channelPrimaryImageTag;
  @JsonKey(name: "ProgramId")
  String programId;
  @JsonKey(name: "ExternalProgramId")
  String externalProgramId;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Overview")
  String overview;
  @JsonKey(name: "StartDate", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime startDate;
  @JsonKey(name: "EndDate", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime endDate;
  @JsonKey(name: "ServiceName")
  String serviceName;
  @JsonKey(name: "Priority")
  int priority;
  @JsonKey(name: "PrePaddingSeconds")
  int prePaddingSeconds;
  @JsonKey(name: "PostPaddingSeconds")
  int postPaddingSeconds;
  @JsonKey(name: "IsPrePaddingRequired")
  bool isPrePaddingRequired;
  @JsonKey(name: "ParentBackdropItemId")
  String parentBackdropItemId;
  @JsonKey(name: "ParentBackdropImageTags")
  List<String> parentBackdropImageTags;
  @JsonKey(name: "IsPostPaddingRequired")
  bool isPostPaddingRequired;
  @JsonKey(name: "KeepUntil")
  eKeepUntil keepUntil;

  LiveTv_TimerInfoDto({this.status, this.seriesTimerId, this.externalSeriesTimerId, this.runTimeTicks, this.programInfo, this.id, this.type, this.serverId, this.externalId, this.channelId, this.externalChannelId, this.channelName, this.channelPrimaryImageTag, this.programId, this.externalProgramId, this.name, this.overview, this.startDate, this.endDate, this.serviceName, this.priority, this.prePaddingSeconds, this.postPaddingSeconds, this.isPrePaddingRequired, this.parentBackdropItemId, this.parentBackdropImageTags, this.isPostPaddingRequired, this.keepUntil});

  factory LiveTv_TimerInfoDto.fromJson(Map<String, dynamic> json) => _$LiveTv_TimerInfoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_TimerInfoDtoToJson(this);
}

@JsonSerializable(nullable: false)
class QueryResult_LiveTv_SeriesTimerInfoDto{
  @JsonKey(name: "Items")
  List<LiveTv_SeriesTimerInfoDto> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  QueryResult_LiveTv_SeriesTimerInfoDto({this.items, this.totalRecordCount});

  factory QueryResult_LiveTv_SeriesTimerInfoDto.fromJson(Map<String, dynamic> json) => _$QueryResult_LiveTv_SeriesTimerInfoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResult_LiveTv_SeriesTimerInfoDtoToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_SeriesTimerInfoDto{
  @JsonKey(name: "RecordAnyTime")
  bool recordAnyTime;
  @JsonKey(name: "SkipEpisodesInLibrary")
  bool skipEpisodesInLibrary;
  @JsonKey(name: "RecordAnyChannel")
  bool recordAnyChannel;
  @JsonKey(name: "KeepUpTo")
  int keepUpTo;
  @JsonKey(name: "RecordNewOnly")
  bool recordNewOnly;
  @JsonKey(name: "Days")
  List<eAirDays> days;
  @JsonKey(name: "DayPattern")
  eDayPattern dayPattern;
  @JsonKey(name: "ImageTags")
  Map<String,String> imageTags;
  @JsonKey(name: "ParentThumbItemId")
  String parentThumbItemId;
  @JsonKey(name: "ParentThumbImageTag")
  String parentThumbImageTag;
  @JsonKey(name: "ParentPrimaryImageItemId")
  String parentPrimaryImageItemId;
  @JsonKey(name: "ParentPrimaryImageTag")
  String parentPrimaryImageTag;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "ServerId")
  String serverId;
  @JsonKey(name: "ExternalId")
  String externalId;
  @JsonKey(name: "ChannelId")
  String channelId;
  @JsonKey(name: "ExternalChannelId")
  String externalChannelId;
  @JsonKey(name: "ChannelName")
  String channelName;
  @JsonKey(name: "ChannelPrimaryImageTag")
  String channelPrimaryImageTag;
  @JsonKey(name: "ProgramId")
  String programId;
  @JsonKey(name: "ExternalProgramId")
  String externalProgramId;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Overview")
  String overview;
  @JsonKey(name: "StartDate", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime startDate;
  @JsonKey(name: "EndDate", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime endDate;
  @JsonKey(name: "ServiceName")
  String serviceName;
  @JsonKey(name: "Priority")
  int priority;
  @JsonKey(name: "PrePaddingSeconds")
  int prePaddingSeconds;
  @JsonKey(name: "PostPaddingSeconds")
  int postPaddingSeconds;
  @JsonKey(name: "IsPrePaddingRequired")
  bool isPrePaddingRequired;
  @JsonKey(name: "ParentBackdropItemId")
  String parentBackdropItemId;
  @JsonKey(name: "ParentBackdropImageTags")
  List<String> parentBackdropImageTags;
  @JsonKey(name: "IsPostPaddingRequired")
  bool isPostPaddingRequired;
  @JsonKey(name: "KeepUntil")
  eKeepUntil keepUntil;

  LiveTv_SeriesTimerInfoDto({this.recordAnyTime, this.skipEpisodesInLibrary, this.recordAnyChannel, this.keepUpTo, this.recordNewOnly, this.days, this.dayPattern, this.imageTags, this.parentThumbItemId, this.parentThumbImageTag, this.parentPrimaryImageItemId, this.parentPrimaryImageTag, this.id, this.type, this.serverId, this.externalId, this.channelId, this.externalChannelId, this.channelName, this.channelPrimaryImageTag, this.programId, this.externalProgramId, this.name, this.overview, this.startDate, this.endDate, this.serviceName, this.priority, this.prePaddingSeconds, this.postPaddingSeconds, this.isPrePaddingRequired, this.parentBackdropItemId, this.parentBackdropImageTags, this.isPostPaddingRequired, this.keepUntil});

  factory LiveTv_SeriesTimerInfoDto.fromJson(Map<String, dynamic> json) => _$LiveTv_SeriesTimerInfoDtoFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_SeriesTimerInfoDtoToJson(this);
}

@JsonSerializable(nullable: false)
class LiveTv_GuideInfo{
  @JsonKey(name: "StartDate", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime startDate;
  @JsonKey(name: "EndDate", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime endDate;

  LiveTv_GuideInfo({this.startDate, this.endDate});

  factory LiveTv_GuideInfo.fromJson(Map<String, dynamic> json) => _$LiveTv_GuideInfoFromJson(json);
  Map<String, dynamic> toJson() => _$LiveTv_GuideInfoToJson(this);
}

@JsonSerializable(nullable: false)
class ParentalRating{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Value")
  int value;

  ParentalRating({this.name, this.value});

  factory ParentalRating.fromJson(Map<String, dynamic> json) => _$ParentalRatingFromJson(json);
  Map<String, dynamic> toJson() => _$ParentalRatingToJson(this);
}

@JsonSerializable(nullable: false)
class Globalization_LocalizatonOption{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Value")
  String value;

  Globalization_LocalizatonOption({this.name, this.value});

  factory Globalization_LocalizatonOption.fromJson(Map<String, dynamic> json) => _$Globalization_LocalizatonOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Globalization_LocalizatonOptionToJson(this);
}

@JsonSerializable(nullable: false)
class Globalization_CountryInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "DisplayName")
  String displayName;
  @JsonKey(name: "TwoLetterISORegionName")
  String twoLetterISORegionName;
  @JsonKey(name: "ThreeLetterISORegionName")
  String threeLetterISORegionName;

  Globalization_CountryInfo({this.name, this.displayName, this.twoLetterISORegionName, this.threeLetterISORegionName});

  factory Globalization_CountryInfo.fromJson(Map<String, dynamic> json) => _$Globalization_CountryInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Globalization_CountryInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Globalization_CultureDto{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "DisplayName")
  String displayName;
  @JsonKey(name: "TwoLetterISOLanguageName")
  String twoLetterISOLanguageName;
  @JsonKey(name: "ThreeLetterISOLanguageName")
  String threeLetterISOLanguageName;
  @JsonKey(name: "ThreeLetterISOLanguageNames")
  List<String> threeLetterISOLanguageNames;

  Globalization_CultureDto({this.name, this.displayName, this.twoLetterISOLanguageName, this.threeLetterISOLanguageName, this.threeLetterISOLanguageNames});

  factory Globalization_CultureDto.fromJson(Map<String, dynamic> json) => _$Globalization_CultureDtoFromJson(json);
  Map<String, dynamic> toJson() => _$Globalization_CultureDtoToJson(this);
}

@JsonSerializable(nullable: false)
class RecommendationDto{
  @JsonKey(name: "Items")
  List<BaseItemDto> items;
  @JsonKey(name: "RecommendationType")
  eRecommendationType recommendationType;
  @JsonKey(name: "BaselineItemName")
  String baselineItemName;
  @JsonKey(name: "CategoryId")
  String categoryId;

  RecommendationDto({this.items, this.recommendationType, this.baselineItemName, this.categoryId});

  factory RecommendationDto.fromJson(Map<String, dynamic> json) => _$RecommendationDtoFromJson(json);
  Map<String, dynamic> toJson() => _$RecommendationDtoToJson(this);
}

@JsonSerializable(nullable: false)
class QueryResult_News_NewsItem{
  @JsonKey(name: "Items")
  List<News_NewsItem> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  QueryResult_News_NewsItem({this.items, this.totalRecordCount});

  factory QueryResult_News_NewsItem.fromJson(Map<String, dynamic> json) => _$QueryResult_News_NewsItemFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResult_News_NewsItemToJson(this);
}

@JsonSerializable(nullable: false)
class News_NewsItem{
  @JsonKey(name: "Title")
  String title;
  @JsonKey(name: "Link")
  String link;
  @JsonKey(name: "Description")
  String description;
  @JsonKey(name: "DescriptionHtml")
  String descriptionHtml;
  @JsonKey(name: "Guid")
  String guid;
  @JsonKey(name: "Date", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime date;

  News_NewsItem({this.title, this.link, this.description, this.descriptionHtml, this.guid, this.date});

  factory News_NewsItem.fromJson(Map<String, dynamic> json) => _$News_NewsItemFromJson(json);
  Map<String, dynamic> toJson() => _$News_NewsItemToJson(this);
}

@JsonSerializable(nullable: false)
class Notifications_NotificationTypeInfo{
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Enabled")
  bool enabled;
  @JsonKey(name: "Category")
  String category;
  @JsonKey(name: "IsBasedOnUserEvent")
  bool isBasedOnUserEvent;

  Notifications_NotificationTypeInfo({this.type, this.name, this.enabled, this.category, this.isBasedOnUserEvent});

  factory Notifications_NotificationTypeInfo.fromJson(Map<String, dynamic> json) => _$Notifications_NotificationTypeInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Notifications_NotificationTypeInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Emby_Notifications_Api_NotificationResult{
  @JsonKey(name: "Notifications")
  List<Emby_Notifications_Api_Notification> notifications;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  Emby_Notifications_Api_NotificationResult({this.notifications, this.totalRecordCount});

  factory Emby_Notifications_Api_NotificationResult.fromJson(Map<String, dynamic> json) => _$Emby_Notifications_Api_NotificationResultFromJson(json);
  Map<String, dynamic> toJson() => _$Emby_Notifications_Api_NotificationResultToJson(this);
}

@JsonSerializable(nullable: false)
class Emby_Notifications_Api_Notification{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "Date", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime date;
  @JsonKey(name: "IsRead")
  bool isRead;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Description")
  String description;
  @JsonKey(name: "Url")
  String url;
  @JsonKey(name: "Level")
  eLevel level;

  Emby_Notifications_Api_Notification({this.id, this.userId, this.date, this.isRead, this.name, this.description, this.url, this.level});

  factory Emby_Notifications_Api_Notification.fromJson(Map<String, dynamic> json) => _$Emby_Notifications_Api_NotificationFromJson(json);
  Map<String, dynamic> toJson() => _$Emby_Notifications_Api_NotificationToJson(this);
}

@JsonSerializable(nullable: false)
class Search_SearchHintResult{
  @JsonKey(name: "SearchHints")
  List<Search_SearchHint> searchHints;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  Search_SearchHintResult({this.searchHints, this.totalRecordCount});

  factory Search_SearchHintResult.fromJson(Map<String, dynamic> json) => _$Search_SearchHintResultFromJson(json);
  Map<String, dynamic> toJson() => _$Search_SearchHintResultToJson(this);
}

@JsonSerializable(nullable: false)
class Search_SearchHint{
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MatchedTerm")
  String matchedTerm;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ProductionYear", nullable: true)
  int productionYear;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PrimaryImageTag")
  String primaryImageTag;
  @JsonKey(name: "ThumbImageTag")
  String thumbImageTag;
  @JsonKey(name: "ThumbImageItemId")
  String thumbImageItemId;
  @JsonKey(name: "BackdropImageTag")
  String backdropImageTag;
  @JsonKey(name: "BackdropImageItemId")
  String backdropImageItemId;
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "IsFolder", nullable: true)
  bool isFolder;
  @JsonKey(name: "RunTimeTicks", nullable: true)
  int runTimeTicks;
  @JsonKey(name: "MediaType")
  String mediaType;
  @JsonKey(name: "StartDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime startDate;
  @JsonKey(name: "EndDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime endDate;
  @JsonKey(name: "Series")
  String series;
  @JsonKey(name: "Status")
  String status;
  @JsonKey(name: "Album")
  String album;
  @JsonKey(name: "AlbumId")
  String albumId;
  @JsonKey(name: "AlbumArtist")
  String albumArtist;
  @JsonKey(name: "Artists")
  List<String> artists;
  @JsonKey(name: "SongCount", nullable: true)
  int songCount;
  @JsonKey(name: "EpisodeCount", nullable: true)
  int episodeCount;
  @JsonKey(name: "ChannelId")
  String channelId;
  @JsonKey(name: "ChannelName")
  String channelName;
  @JsonKey(name: "PrimaryImageAspectRatio", nullable: true)
  double primaryImageAspectRatio;

  Search_SearchHint({this.itemId, this.id, this.name, this.matchedTerm, this.indexNumber, this.productionYear, this.parentIndexNumber, this.primaryImageTag, this.thumbImageTag, this.thumbImageItemId, this.backdropImageTag, this.backdropImageItemId, this.type, this.isFolder, this.runTimeTicks, this.mediaType, this.startDate, this.endDate, this.series, this.status, this.album, this.albumId, this.albumArtist, this.artists, this.songCount, this.episodeCount, this.channelId, this.channelName, this.primaryImageAspectRatio});

  factory Search_SearchHint.fromJson(Map<String, dynamic> json) => _$Search_SearchHintFromJson(json);
  Map<String, dynamic> toJson() => _$Search_SearchHintToJson(this);
}

@JsonSerializable(nullable: false)
class PlaybackStartInfo{
  @JsonKey(name: "CanSeek")
  bool canSeek;
  @JsonKey(name: "Item")
  BaseItemDto item;
  @JsonKey(name: "NowPlayingQueue")
  List<QueueItem> nowPlayingQueue;
  @JsonKey(name: "PlaylistItemId")
  String playlistItemId;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SessionId")
  String sessionId;
  @JsonKey(name: "MediaSourceId")
  String mediaSourceId;
  @JsonKey(name: "AudioStreamIndex", nullable: true)
  int audioStreamIndex;
  @JsonKey(name: "SubtitleStreamIndex", nullable: true)
  int subtitleStreamIndex;
  @JsonKey(name: "IsPaused")
  bool isPaused;
  @JsonKey(name: "IsMuted")
  bool isMuted;
  @JsonKey(name: "PositionTicks", nullable: true)
  int positionTicks;
  @JsonKey(name: "PlaybackStartTimeTicks", nullable: true)
  int playbackStartTimeTicks;
  @JsonKey(name: "VolumeLevel", nullable: true)
  int volumeLevel;
  @JsonKey(name: "Brightness", nullable: true)
  int brightness;
  @JsonKey(name: "AspectRatio")
  String aspectRatio;
  @JsonKey(name: "PlayMethod")
  ePlayMethod playMethod;
  @JsonKey(name: "LiveStreamId")
  String liveStreamId;
  @JsonKey(name: "PlaySessionId")
  String playSessionId;
  @JsonKey(name: "RepeatMode")
  eRepeatMode repeatMode;

  PlaybackStartInfo({this.canSeek, this.item, this.nowPlayingQueue, this.playlistItemId, this.itemId, this.sessionId, this.mediaSourceId, this.audioStreamIndex, this.subtitleStreamIndex, this.isPaused, this.isMuted, this.positionTicks, this.playbackStartTimeTicks, this.volumeLevel, this.brightness, this.aspectRatio, this.playMethod, this.liveStreamId, this.playSessionId, this.repeatMode});

  factory PlaybackStartInfo.fromJson(Map<String, dynamic> json) => _$PlaybackStartInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PlaybackStartInfoToJson(this);
}

@JsonSerializable(nullable: false)
class QueueItem{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "PlaylistItemId")
  String playlistItemId;

  QueueItem({this.id, this.playlistItemId});

  factory QueueItem.fromJson(Map<String, dynamic> json) => _$QueueItemFromJson(json);
  Map<String, dynamic> toJson() => _$QueueItemToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_SyncTarget{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Id")
  String id;

  Sync_SyncTarget({this.name, this.id});

  factory Sync_SyncTarget.fromJson(Map<String, dynamic> json) => _$Sync_SyncTargetFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_SyncTargetToJson(this);
}

@JsonSerializable(nullable: false)
class QueryResult_Sync_SyncJob{
  @JsonKey(name: "Items")
  List<Sync_SyncJob> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  QueryResult_Sync_SyncJob({this.items, this.totalRecordCount});

  factory QueryResult_Sync_SyncJob.fromJson(Map<String, dynamic> json) => _$QueryResult_Sync_SyncJobFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResult_Sync_SyncJobToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_SyncJob{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "TargetId")
  String targetId;
  @JsonKey(name: "TargetName")
  String targetName;
  @JsonKey(name: "Quality")
  String quality;
  @JsonKey(name: "Bitrate", nullable: true)
  int bitrate;
  @JsonKey(name: "Profile")
  String profile;
  @JsonKey(name: "Category")
  eCategory category;
  @JsonKey(name: "ParentId")
  String parentId;
  @JsonKey(name: "Progress")
  double progress;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Status")
  eSync_SyncJob_Status status;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "UnwatchedOnly")
  bool unwatchedOnly;
  @JsonKey(name: "SyncNewContent")
  bool syncNewContent;
  @JsonKey(name: "ItemLimit", nullable: true)
  int itemLimit;
  @JsonKey(name: "RequestedItemIds")
  List<String> requestedItemIds;
  @JsonKey(name: "DateCreated", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateCreated;
  @JsonKey(name: "DateLastModified", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateLastModified;
  @JsonKey(name: "ItemCount")
  int itemCount;
  @JsonKey(name: "ParentName")
  String parentName;
  @JsonKey(name: "PrimaryImageItemId")
  String primaryImageItemId;
  @JsonKey(name: "PrimaryImageTag")
  String primaryImageTag;

  Sync_SyncJob({this.id, this.targetId, this.targetName, this.quality, this.bitrate, this.profile, this.category, this.parentId, this.progress, this.name, this.status, this.userId, this.unwatchedOnly, this.syncNewContent, this.itemLimit, this.requestedItemIds, this.dateCreated, this.dateLastModified, this.itemCount, this.parentName, this.primaryImageItemId, this.primaryImageTag});

  factory Sync_SyncJob.fromJson(Map<String, dynamic> json) => _$Sync_SyncJobFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_SyncJobToJson(this);
}

@JsonSerializable(nullable: false)
class QueryResult_Sync_Model_SyncJobItem{
  @JsonKey(name: "Items")
  List<Sync_Model_SyncJobItem> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  QueryResult_Sync_Model_SyncJobItem({this.items, this.totalRecordCount});

  factory QueryResult_Sync_Model_SyncJobItem.fromJson(Map<String, dynamic> json) => _$QueryResult_Sync_Model_SyncJobItemFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResult_Sync_Model_SyncJobItemToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncJobItem{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "JobId")
  String jobId;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "ItemName")
  String itemName;
  @JsonKey(name: "MediaSourceId")
  String mediaSourceId;
  @JsonKey(name: "MediaSource")
  MediaSourceInfo mediaSource;
  @JsonKey(name: "TargetId")
  String targetId;
  @JsonKey(name: "OutputPath")
  String outputPath;
  @JsonKey(name: "Status")
  eSync_Model_SyncJobItem_Status status;
  @JsonKey(name: "Progress", nullable: true)
  double progress;
  @JsonKey(name: "DateCreated", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateCreated;
  @JsonKey(name: "PrimaryImageItemId")
  String primaryImageItemId;
  @JsonKey(name: "PrimaryImageTag")
  String primaryImageTag;
  @JsonKey(name: "TemporaryPath")
  String temporaryPath;
  @JsonKey(name: "AdditionalFiles")
  List<Sync_Model_ItemFileInfo> additionalFiles;
  @JsonKey(name: "ItemDateModifiedTicks")
  int itemDateModifiedTicks;

  Sync_Model_SyncJobItem({this.id, this.jobId, this.itemId, this.itemName, this.mediaSourceId, this.mediaSource, this.targetId, this.outputPath, this.status, this.progress, this.dateCreated, this.primaryImageItemId, this.primaryImageTag, this.temporaryPath, this.additionalFiles, this.itemDateModifiedTicks});

  factory Sync_Model_SyncJobItem.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncJobItemFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncJobItemToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_ItemFileInfo{
  @JsonKey(name: "Type")
  eSync_Model_ItemFileInfo_Type type;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "ImageType")
  eSupportedImageTypes imageType;
  @JsonKey(name: "Index")
  int index;

  Sync_Model_ItemFileInfo({this.type, this.name, this.path, this.imageType, this.index});

  factory Sync_Model_ItemFileInfo.fromJson(Map<String, dynamic> json) => _$Sync_Model_ItemFileInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_ItemFileInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncJobRequest{
  @JsonKey(name: "TargetId")
  String targetId;
  @JsonKey(name: "ItemIds")
  List<String> itemIds;
  @JsonKey(name: "Category")
  eCategory category;
  @JsonKey(name: "ParentId")
  String parentId;
  @JsonKey(name: "Quality")
  String quality;
  @JsonKey(name: "Profile")
  String profile;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "UnwatchedOnly")
  bool unwatchedOnly;
  @JsonKey(name: "SyncNewContent")
  bool syncNewContent;
  @JsonKey(name: "ItemLimit", nullable: true)
  int itemLimit;
  @JsonKey(name: "Bitrate", nullable: true)
  int bitrate;

  Sync_Model_SyncJobRequest({this.targetId, this.itemIds, this.category, this.parentId, this.quality, this.profile, this.name, this.userId, this.unwatchedOnly, this.syncNewContent, this.itemLimit, this.bitrate});

  factory Sync_Model_SyncJobRequest.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncJobRequestFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncJobRequestToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncJobCreationResult{
  @JsonKey(name: "Job")
  Sync_SyncJob job;
  @JsonKey(name: "JobItems")
  List<Sync_Model_SyncJobItem> jobItems;

  Sync_Model_SyncJobCreationResult({this.job, this.jobItems});

  factory Sync_Model_SyncJobCreationResult.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncJobCreationResultFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncJobCreationResultToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncDialogOptions{
  @JsonKey(name: "Targets")
  List<Sync_SyncTarget> targets;
  @JsonKey(name: "Options")
  List<eOptions> options;
  @JsonKey(name: "QualityOptions")
  List<Sync_Model_SyncQualityOption> qualityOptions;
  @JsonKey(name: "ProfileOptions")
  List<Sync_Model_SyncProfileOption> profileOptions;

  Sync_Model_SyncDialogOptions({this.targets, this.options, this.qualityOptions, this.profileOptions});

  factory Sync_Model_SyncDialogOptions.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncDialogOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncDialogOptionsToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncQualityOption{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Description")
  String description;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "IsDefault")
  bool isDefault;
  @JsonKey(name: "IsOriginalQuality")
  bool isOriginalQuality;

  Sync_Model_SyncQualityOption({this.name, this.description, this.id, this.isDefault, this.isOriginalQuality});

  factory Sync_Model_SyncQualityOption.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncQualityOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncQualityOptionToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncProfileOption{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Description")
  String description;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "IsDefault")
  bool isDefault;
  @JsonKey(name: "EnableQualityOptions")
  bool enableQualityOptions;

  Sync_Model_SyncProfileOption({this.name, this.description, this.id, this.isDefault, this.enableQualityOptions});

  factory Sync_Model_SyncProfileOption.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncProfileOptionFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncProfileOptionToJson(this);
}

@JsonSerializable(nullable: false)
class Users_UserAction{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "ServerId")
  String serverId;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "Type")
  eUsers_UserAction_Type type;
  @JsonKey(name: "Date", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime date;
  @JsonKey(name: "PositionTicks", nullable: true)
  int positionTicks;

  Users_UserAction({this.id, this.serverId, this.userId, this.itemId, this.type, this.date, this.positionTicks});

  factory Users_UserAction.fromJson(Map<String, dynamic> json) => _$Users_UserActionFromJson(json);
  Map<String, dynamic> toJson() => _$Users_UserActionToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncDataRequest{
  @JsonKey(name: "LocalItemIds")
  List<String> localItemIds;
  @JsonKey(name: "TargetId")
  String targetId;

  Sync_Model_SyncDataRequest({this.localItemIds, this.targetId});

  factory Sync_Model_SyncDataRequest.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncDataRequestFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncDataRequestToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncDataResponse{
  @JsonKey(name: "ItemIdsToRemove")
  List<String> itemIdsToRemove;

  Sync_Model_SyncDataResponse({this.itemIdsToRemove});

  factory Sync_Model_SyncDataResponse.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncDataResponseToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_ServerConfiguration{
  @JsonKey(name: "EnableUPnP")
  bool enableUPnP;
  @JsonKey(name: "PublicPort")
  int publicPort;
  @JsonKey(name: "PublicHttpsPort")
  int publicHttpsPort;
  @JsonKey(name: "HttpServerPortNumber")
  int httpServerPortNumber;
  @JsonKey(name: "HttpsPortNumber")
  int httpsPortNumber;
  @JsonKey(name: "EnableHttps")
  bool enableHttps;
  @JsonKey(name: "EnableNormalizedItemByNameIds")
  bool enableNormalizedItemByNameIds;
  @JsonKey(name: "CertificatePath")
  String certificatePath;
  @JsonKey(name: "CertificatePassword")
  String certificatePassword;
  @JsonKey(name: "IsPortAuthorized")
  bool isPortAuthorized;
  @JsonKey(name: "AutoRunWebApp")
  bool autoRunWebApp;
  @JsonKey(name: "EnableRemoteAccess")
  bool enableRemoteAccess;
  @JsonKey(name: "CameraUploadUpgraded")
  bool cameraUploadUpgraded;
  @JsonKey(name: "CollectionsUpgraded")
  bool collectionsUpgraded;
  @JsonKey(name: "EnableCaseSensitiveItemIds")
  bool enableCaseSensitiveItemIds;
  @JsonKey(name: "DisableLiveTvChannelUserDataName")
  bool disableLiveTvChannelUserDataName;
  @JsonKey(name: "MetadataPath")
  String metadataPath;
  @JsonKey(name: "MetadataNetworkPath")
  String metadataNetworkPath;
  @JsonKey(name: "PreferredMetadataLanguage")
  String preferredMetadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "SortReplaceCharacters")
  List<String> sortReplaceCharacters;
  @JsonKey(name: "SortRemoveCharacters")
  List<String> sortRemoveCharacters;
  @JsonKey(name: "SortRemoveWords")
  List<String> sortRemoveWords;
  @JsonKey(name: "MinResumePct")
  int minResumePct;
  @JsonKey(name: "MaxResumePct")
  int maxResumePct;
  @JsonKey(name: "MinResumeDurationSeconds")
  int minResumeDurationSeconds;
  @JsonKey(name: "LibraryMonitorDelay")
  int libraryMonitorDelay;
  @JsonKey(name: "EnableDashboardResponseCaching")
  bool enableDashboardResponseCaching;
  @JsonKey(name: "DashboardSourcePath")
  String dashboardSourcePath;
  @JsonKey(name: "ImageSavingConvention")
  eImageSavingConvention imageSavingConvention;
  @JsonKey(name: "MetadataOptions")
  List<Configuration_MetadataOptions> metadataOptions;
  @JsonKey(name: "EnableAutomaticRestart")
  bool enableAutomaticRestart;
  @JsonKey(name: "SkipDeserializationForBasicTypes")
  bool skipDeserializationForBasicTypes;
  @JsonKey(name: "ServerName")
  String serverName;
  @JsonKey(name: "WanDdns")
  String wanDdns;
  @JsonKey(name: "UICulture")
  String uICulture;
  @JsonKey(name: "SaveMetadataHidden")
  bool saveMetadataHidden;
  @JsonKey(name: "ContentTypes")
  List<NameValuePair> contentTypes;
  @JsonKey(name: "RemoteClientBitrateLimit")
  int remoteClientBitrateLimit;
  @JsonKey(name: "SchemaVersion")
  int schemaVersion;
  @JsonKey(name: "EnableAnonymousUsageReporting")
  bool enableAnonymousUsageReporting;
  @JsonKey(name: "EnableFolderView")
  bool enableFolderView;
  @JsonKey(name: "EnableGroupingIntoCollections")
  bool enableGroupingIntoCollections;
  @JsonKey(name: "DisplaySpecialsWithinSeasons")
  bool displaySpecialsWithinSeasons;
  @JsonKey(name: "LocalNetworkSubnets")
  List<String> localNetworkSubnets;
  @JsonKey(name: "LocalNetworkAddresses")
  List<String> localNetworkAddresses;
  @JsonKey(name: "CodecsUsed")
  List<String> codecsUsed;
  @JsonKey(name: "EnableExternalContentInSuggestions")
  bool enableExternalContentInSuggestions;
  @JsonKey(name: "RequireHttps")
  bool requireHttps;
  @JsonKey(name: "IsBehindProxy")
  bool isBehindProxy;
  @JsonKey(name: "EnableNewOmdbSupport")
  bool enableNewOmdbSupport;
  @JsonKey(name: "RemoteIPFilter")
  List<String> remoteIPFilter;
  @JsonKey(name: "IsRemoteIPFilterBlacklist")
  bool isRemoteIPFilterBlacklist;
  @JsonKey(name: "ImageExtractionTimeoutMs")
  int imageExtractionTimeoutMs;
  @JsonKey(name: "PathSubstitutions")
  List<Configuration_PathSubstitution> pathSubstitutions;
  @JsonKey(name: "EnableSimpleArtistDetection")
  bool enableSimpleArtistDetection;
  @JsonKey(name: "UninstalledPlugins")
  List<String> uninstalledPlugins;
  @JsonKey(name: "EnableDebugLevelLogging")
  bool enableDebugLevelLogging;
  @JsonKey(name: "EnableAutoUpdate")
  bool enableAutoUpdate;
  @JsonKey(name: "LogFileRetentionDays")
  int logFileRetentionDays;
  @JsonKey(name: "RunAtStartup")
  bool runAtStartup;
  @JsonKey(name: "IsStartupWizardCompleted")
  bool isStartupWizardCompleted;
  @JsonKey(name: "CachePath")
  String cachePath;

  Configuration_ServerConfiguration({this.enableUPnP, this.publicPort, this.publicHttpsPort, this.httpServerPortNumber, this.httpsPortNumber, this.enableHttps, this.enableNormalizedItemByNameIds, this.certificatePath, this.certificatePassword, this.isPortAuthorized, this.autoRunWebApp, this.enableRemoteAccess, this.cameraUploadUpgraded, this.collectionsUpgraded, this.enableCaseSensitiveItemIds, this.disableLiveTvChannelUserDataName, this.metadataPath, this.metadataNetworkPath, this.preferredMetadataLanguage, this.metadataCountryCode, this.sortReplaceCharacters, this.sortRemoveCharacters, this.sortRemoveWords, this.minResumePct, this.maxResumePct, this.minResumeDurationSeconds, this.libraryMonitorDelay, this.enableDashboardResponseCaching, this.dashboardSourcePath, this.imageSavingConvention, this.metadataOptions, this.enableAutomaticRestart, this.skipDeserializationForBasicTypes, this.serverName, this.wanDdns, this.uICulture, this.saveMetadataHidden, this.contentTypes, this.remoteClientBitrateLimit, this.schemaVersion, this.enableAnonymousUsageReporting, this.enableFolderView, this.enableGroupingIntoCollections, this.displaySpecialsWithinSeasons, this.localNetworkSubnets, this.localNetworkAddresses, this.codecsUsed, this.enableExternalContentInSuggestions, this.requireHttps, this.isBehindProxy, this.enableNewOmdbSupport, this.remoteIPFilter, this.isRemoteIPFilterBlacklist, this.imageExtractionTimeoutMs, this.pathSubstitutions, this.enableSimpleArtistDetection, this.uninstalledPlugins, this.enableDebugLevelLogging, this.enableAutoUpdate, this.logFileRetentionDays, this.runAtStartup, this.isStartupWizardCompleted, this.cachePath});

  factory Configuration_ServerConfiguration.fromJson(Map<String, dynamic> json) => _$Configuration_ServerConfigurationFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_ServerConfigurationToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_MetadataOptions{
  @JsonKey(name: "ItemType")
  String itemType;
  @JsonKey(name: "DisabledMetadataSavers")
  List<String> disabledMetadataSavers;
  @JsonKey(name: "LocalMetadataReaderOrder")
  List<String> localMetadataReaderOrder;
  @JsonKey(name: "DisabledMetadataFetchers")
  List<String> disabledMetadataFetchers;
  @JsonKey(name: "MetadataFetcherOrder")
  List<String> metadataFetcherOrder;
  @JsonKey(name: "DisabledImageFetchers")
  List<String> disabledImageFetchers;
  @JsonKey(name: "ImageFetcherOrder")
  List<String> imageFetcherOrder;

  Configuration_MetadataOptions({this.itemType, this.disabledMetadataSavers, this.localMetadataReaderOrder, this.disabledMetadataFetchers, this.metadataFetcherOrder, this.disabledImageFetchers, this.imageFetcherOrder});

  factory Configuration_MetadataOptions.fromJson(Map<String, dynamic> json) => _$Configuration_MetadataOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_MetadataOptionsToJson(this);
}

@JsonSerializable(nullable: false)
class Configuration_PathSubstitution{
  @JsonKey(name: "From")
  String from;
  @JsonKey(name: "To")
  String to;

  Configuration_PathSubstitution({this.from, this.to});

  factory Configuration_PathSubstitution.fromJson(Map<String, dynamic> json) => _$Configuration_PathSubstitutionFromJson(json);
  Map<String, dynamic> toJson() => _$Configuration_PathSubstitutionToJson(this);
}

@JsonSerializable(nullable: false)
class WakeOnLanInfo{
  @JsonKey(name: "MacAddress")
  String macAddress;
  @JsonKey(name: "Port")
  int port;

  WakeOnLanInfo({this.macAddress, this.port});

  factory WakeOnLanInfo.fromJson(Map<String, dynamic> json) => _$WakeOnLanInfoFromJson(json);
  Map<String, dynamic> toJson() => _$WakeOnLanInfoToJson(this);
}

@JsonSerializable(nullable: false)
class LogFile{
  @JsonKey(name: "DateCreated", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateCreated;
  @JsonKey(name: "DateModified", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateModified;
  @JsonKey(name: "Size")
  int size;
  @JsonKey(name: "Name")
  String name;

  LogFile({this.dateCreated, this.dateModified, this.size, this.name});

  factory LogFile.fromJson(Map<String, dynamic> json) => _$LogFileFromJson(json);
  Map<String, dynamic> toJson() => _$LogFileToJson(this);
}

@JsonSerializable(nullable: false)
class SystemInfo{
  @JsonKey(name: "SystemUpdateLevel")
  eClassification systemUpdateLevel;
  @JsonKey(name: "OperatingSystemDisplayName")
  String operatingSystemDisplayName;
  @JsonKey(name: "PackageName")
  String packageName;
  @JsonKey(name: "HasPendingRestart")
  bool hasPendingRestart;
  @JsonKey(name: "IsShuttingDown")
  bool isShuttingDown;
  @JsonKey(name: "SupportsLibraryMonitor")
  bool supportsLibraryMonitor;
  @JsonKey(name: "WebSocketPortNumber")
  int webSocketPortNumber;
  @JsonKey(name: "CompletedInstallations")
  List<Updates_InstallationInfo> completedInstallations;
  @JsonKey(name: "CanSelfRestart")
  bool canSelfRestart;
  @JsonKey(name: "CanSelfUpdate")
  bool canSelfUpdate;
  @JsonKey(name: "CanLaunchWebBrowser")
  bool canLaunchWebBrowser;
  @JsonKey(name: "ProgramDataPath")
  String programDataPath;
  @JsonKey(name: "ItemsByNamePath")
  String itemsByNamePath;
  @JsonKey(name: "CachePath")
  String cachePath;
  @JsonKey(name: "LogPath")
  String logPath;
  @JsonKey(name: "InternalMetadataPath")
  String internalMetadataPath;
  @JsonKey(name: "TranscodingTempPath")
  String transcodingTempPath;
  @JsonKey(name: "HttpServerPortNumber")
  int httpServerPortNumber;
  @JsonKey(name: "SupportsHttps")
  bool supportsHttps;
  @JsonKey(name: "HttpsPortNumber")
  int httpsPortNumber;
  @JsonKey(name: "HasUpdateAvailable")
  bool hasUpdateAvailable;
  @JsonKey(name: "SupportsAutoRunAtStartup")
  bool supportsAutoRunAtStartup;
  @JsonKey(name: "EncoderLocationType")
  String encoderLocationType;
  @JsonKey(name: "SystemArchitecture")
  eSystemArchitecture systemArchitecture;
  @JsonKey(name: "LocalAddress")
  String localAddress;
  @JsonKey(name: "WanAddress")
  String wanAddress;
  @JsonKey(name: "ServerName")
  String serverName;
  @JsonKey(name: "Version")
  String version;
  @JsonKey(name: "OperatingSystem")
  String operatingSystem;
  @JsonKey(name: "Id")
  String id;

  SystemInfo({this.systemUpdateLevel, this.operatingSystemDisplayName, this.packageName, this.hasPendingRestart, this.isShuttingDown, this.supportsLibraryMonitor, this.webSocketPortNumber, this.completedInstallations, this.canSelfRestart, this.canSelfUpdate, this.canLaunchWebBrowser, this.programDataPath, this.itemsByNamePath, this.cachePath, this.logPath, this.internalMetadataPath, this.transcodingTempPath, this.httpServerPortNumber, this.supportsHttps, this.httpsPortNumber, this.hasUpdateAvailable, this.supportsAutoRunAtStartup, this.encoderLocationType, this.systemArchitecture, this.localAddress, this.wanAddress, this.serverName, this.version, this.operatingSystem, this.id});

  factory SystemInfo.fromJson(Map<String, dynamic> json) => _$SystemInfoFromJson(json);
  Map<String, dynamic> toJson() => _$SystemInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Updates_InstallationInfo{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "AssemblyGuid")
  String assemblyGuid;
  @JsonKey(name: "Version")
  String version;
  @JsonKey(name: "UpdateClass")
  eClassification updateClass;
  @JsonKey(name: "PercentComplete", nullable: true)
  double percentComplete;

  Updates_InstallationInfo({this.id, this.name, this.assemblyGuid, this.version, this.updateClass, this.percentComplete});

  factory Updates_InstallationInfo.fromJson(Map<String, dynamic> json) => _$Updates_InstallationInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Updates_InstallationInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Net_EndPointInfo{
  @JsonKey(name: "IsLocal")
  bool isLocal;
  @JsonKey(name: "IsInNetwork")
  bool isInNetwork;

  Net_EndPointInfo({this.isLocal, this.isInNetwork});

  factory Net_EndPointInfo.fromJson(Map<String, dynamic> json) => _$Net_EndPointInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Net_EndPointInfoToJson(this);
}

@JsonSerializable(nullable: false)
class AuthenticateUserByName{
  @JsonKey(name: "Username")
  String username;
  @JsonKey(name: "Password")
  String password;
  @JsonKey(name: "Pw")
  String pw;

  AuthenticateUserByName({this.username, this.password, this.pw});

  factory AuthenticateUserByName.fromJson(Map<String, dynamic> json) => _$AuthenticateUserByNameFromJson(json);
  Map<String, dynamic> toJson() => _$AuthenticateUserByNameToJson(this);
}

@JsonSerializable(nullable: false)
class Authentication_AuthenticationResult{
  @JsonKey(name: "User")
  UserDto user;
  @JsonKey(name: "SessionInfo")
  Session_SessionInfo sessionInfo;
  @JsonKey(name: "AccessToken")
  String accessToken;
  @JsonKey(name: "ServerId")
  String serverId;

  Authentication_AuthenticationResult({this.user, this.sessionInfo, this.accessToken, this.serverId});

  factory Authentication_AuthenticationResult.fromJson(Map<String, dynamic> json) => _$Authentication_AuthenticationResultFromJson(json);
  Map<String, dynamic> toJson() => _$Authentication_AuthenticationResultToJson(this);
}

@JsonSerializable(nullable: false)
class CreateUserByName{
  @JsonKey(name: "Name")
  String name;

  CreateUserByName({this.name});

  factory CreateUserByName.fromJson(Map<String, dynamic> json) => _$CreateUserByNameFromJson(json);
  Map<String, dynamic> toJson() => _$CreateUserByNameToJson(this);
}

@JsonSerializable(nullable: false)
class ForgotPassword{
  @JsonKey(name: "EnteredUsername")
  String enteredUsername;

  ForgotPassword({this.enteredUsername});

  factory ForgotPassword.fromJson(Map<String, dynamic> json) => _$ForgotPasswordFromJson(json);
  Map<String, dynamic> toJson() => _$ForgotPasswordToJson(this);
}

@JsonSerializable(nullable: false)
class Users_ForgotPasswordResult{
  @JsonKey(name: "Action")
  eAction action;
  @JsonKey(name: "PinFile")
  String pinFile;
  @JsonKey(name: "PinExpirationDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime pinExpirationDate;

  Users_ForgotPasswordResult({this.action, this.pinFile, this.pinExpirationDate});

  factory Users_ForgotPasswordResult.fromJson(Map<String, dynamic> json) => _$Users_ForgotPasswordResultFromJson(json);
  Map<String, dynamic> toJson() => _$Users_ForgotPasswordResultToJson(this);
}

@JsonSerializable(nullable: false)
class WebDashboard_Api_ConfigurationPageInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "EnableInMainMenu")
  bool enableInMainMenu;
  @JsonKey(name: "MenuSection")
  String menuSection;
  @JsonKey(name: "MenuIcon")
  String menuIcon;
  @JsonKey(name: "DisplayName")
  String displayName;
  @JsonKey(name: "ConfigurationPageType")
  eConfigurationPageType configurationPageType;
  @JsonKey(name: "PluginId")
  String pluginId;

  WebDashboard_Api_ConfigurationPageInfo({this.name, this.enableInMainMenu, this.menuSection, this.menuIcon, this.displayName, this.configurationPageType, this.pluginId});

  factory WebDashboard_Api_ConfigurationPageInfo.fromJson(Map<String, dynamic> json) => _$WebDashboard_Api_ConfigurationPageInfoFromJson(json);
  Map<String, dynamic> toJson() => _$WebDashboard_Api_ConfigurationPageInfoToJson(this);
}

@JsonSerializable(nullable: false)
class ExternalIdInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Key")
  String key;
  @JsonKey(name: "UrlFormatString")
  String urlFormatString;

  ExternalIdInfo({this.name, this.key, this.urlFormatString});

  factory ExternalIdInfo.fromJson(Map<String, dynamic> json) => _$ExternalIdInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ExternalIdInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_TrailerInfo{
  @JsonKey(name: "SearchInfo")
  Providers_TrailerInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_TrailerInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_TrailerInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_TrailerInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_TrailerInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_TrailerInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_TrailerInfo({this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_TrailerInfo.fromJson(Map<String, dynamic> json) => _$Providers_TrailerInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_TrailerInfoToJson(this);
}

@JsonSerializable(nullable: false)
class RemoteSearchResult{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "ProductionYear", nullable: true)
  int productionYear;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "IndexNumberEnd", nullable: true)
  int indexNumberEnd;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "ImageUrl")
  String imageUrl;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "GameSystem")
  String gameSystem;
  @JsonKey(name: "Overview")
  String overview;
  @JsonKey(name: "AlbumArtist")
  RemoteSearchResult albumArtist;
  @JsonKey(name: "Artists")
  List<RemoteSearchResult> artists;

  RemoteSearchResult({this.name, this.providerIds, this.productionYear, this.indexNumber, this.indexNumberEnd, this.parentIndexNumber, this.premiereDate, this.imageUrl, this.searchProviderName, this.gameSystem, this.overview, this.albumArtist, this.artists});

  factory RemoteSearchResult.fromJson(Map<String, dynamic> json) => _$RemoteSearchResultFromJson(json);
  Map<String, dynamic> toJson() => _$RemoteSearchResultToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_BookInfo{
  @JsonKey(name: "SearchInfo")
  Providers_BookInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_BookInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_BookInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_BookInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_BookInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_BookInfo{
  @JsonKey(name: "SeriesName")
  String seriesName;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_BookInfo({this.seriesName, this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_BookInfo.fromJson(Map<String, dynamic> json) => _$Providers_BookInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_BookInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_MovieInfo{
  @JsonKey(name: "SearchInfo")
  Providers_MovieInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_MovieInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_MovieInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_MovieInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_MovieInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_MovieInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_MovieInfo({this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_MovieInfo.fromJson(Map<String, dynamic> json) => _$Providers_MovieInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_MovieInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_SeriesInfo{
  @JsonKey(name: "SearchInfo")
  Providers_SeriesInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_SeriesInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_SeriesInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_SeriesInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_SeriesInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_SeriesInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_SeriesInfo({this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_SeriesInfo.fromJson(Map<String, dynamic> json) => _$Providers_SeriesInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_SeriesInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_GameInfo{
  @JsonKey(name: "SearchInfo")
  Providers_GameInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_GameInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_GameInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_GameInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_GameInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_GameInfo{
  @JsonKey(name: "GameSystem")
  String gameSystem;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_GameInfo({this.gameSystem, this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_GameInfo.fromJson(Map<String, dynamic> json) => _$Providers_GameInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_GameInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_BoxSetInfo{
  @JsonKey(name: "SearchInfo")
  Providers_BoxSetInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_BoxSetInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_BoxSetInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_BoxSetInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_BoxSetInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_BoxSetInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_BoxSetInfo({this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_BoxSetInfo.fromJson(Map<String, dynamic> json) => _$Providers_BoxSetInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_BoxSetInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_MusicVideoInfo{
  @JsonKey(name: "SearchInfo")
  Providers_MusicVideoInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_MusicVideoInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_MusicVideoInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_MusicVideoInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_MusicVideoInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_MusicVideoInfo{
  @JsonKey(name: "Artists")
  List<String> artists;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_MusicVideoInfo({this.artists, this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_MusicVideoInfo.fromJson(Map<String, dynamic> json) => _$Providers_MusicVideoInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_MusicVideoInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_PersonLookupInfo{
  @JsonKey(name: "SearchInfo")
  Providers_PersonLookupInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_PersonLookupInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_PersonLookupInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_PersonLookupInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_PersonLookupInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_PersonLookupInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_PersonLookupInfo({this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_PersonLookupInfo.fromJson(Map<String, dynamic> json) => _$Providers_PersonLookupInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_PersonLookupInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_AlbumInfo{
  @JsonKey(name: "SearchInfo")
  Providers_AlbumInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_AlbumInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_AlbumInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_AlbumInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_AlbumInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_AlbumInfo{
  @JsonKey(name: "AlbumArtists")
  List<String> albumArtists;
  @JsonKey(name: "ArtistProviderIds")
  Map<String,String> artistProviderIds;
  @JsonKey(name: "SongInfos")
  List<Providers_SongInfo> songInfos;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_AlbumInfo({this.albumArtists, this.artistProviderIds, this.songInfos, this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_AlbumInfo.fromJson(Map<String, dynamic> json) => _$Providers_AlbumInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_AlbumInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_SongInfo{
  @JsonKey(name: "AlbumArtists")
  List<String> albumArtists;
  @JsonKey(name: "Album")
  String album;
  @JsonKey(name: "Artists")
  List<String> artists;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_SongInfo({this.albumArtists, this.album, this.artists, this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_SongInfo.fromJson(Map<String, dynamic> json) => _$Providers_SongInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_SongInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_RemoteSearchQuery_Providers_ArtistInfo{
  @JsonKey(name: "SearchInfo")
  Providers_ArtistInfo searchInfo;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SearchProviderName")
  String searchProviderName;
  @JsonKey(name: "IncludeDisabledProviders")
  bool includeDisabledProviders;

  Providers_RemoteSearchQuery_Providers_ArtistInfo({this.searchInfo, this.itemId, this.searchProviderName, this.includeDisabledProviders});

  factory Providers_RemoteSearchQuery_Providers_ArtistInfo.fromJson(Map<String, dynamic> json) => _$Providers_RemoteSearchQuery_Providers_ArtistInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_RemoteSearchQuery_Providers_ArtistInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Providers_ArtistInfo{
  @JsonKey(name: "SongInfos")
  List<Providers_SongInfo> songInfos;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "MetadataLanguage")
  String metadataLanguage;
  @JsonKey(name: "MetadataCountryCode")
  String metadataCountryCode;
  @JsonKey(name: "ProviderIds")
  Map<String,String> providerIds;
  @JsonKey(name: "Year", nullable: true)
  int year;
  @JsonKey(name: "IndexNumber", nullable: true)
  int indexNumber;
  @JsonKey(name: "ParentIndexNumber", nullable: true)
  int parentIndexNumber;
  @JsonKey(name: "PremiereDate", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime premiereDate;
  @JsonKey(name: "IsAutomated")
  bool isAutomated;

  Providers_ArtistInfo({this.songInfos, this.name, this.metadataLanguage, this.metadataCountryCode, this.providerIds, this.year, this.indexNumber, this.parentIndexNumber, this.premiereDate, this.isAutomated});

  factory Providers_ArtistInfo.fromJson(Map<String, dynamic> json) => _$Providers_ArtistInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Providers_ArtistInfoToJson(this);
}

@JsonSerializable(nullable: false)
class MetadataEditorInfo{
  @JsonKey(name: "ParentalRatingOptions")
  List<ParentalRating> parentalRatingOptions;
  @JsonKey(name: "Countries")
  List<Globalization_CountryInfo> countries;
  @JsonKey(name: "Cultures")
  List<Globalization_CultureDto> cultures;
  @JsonKey(name: "ExternalIdInfos")
  List<ExternalIdInfo> externalIdInfos;
  @JsonKey(name: "ContentType")
  String contentType;
  @JsonKey(name: "ContentTypeOptions")
  List<NameValuePair> contentTypeOptions;

  MetadataEditorInfo({this.parentalRatingOptions, this.countries, this.cultures, this.externalIdInfos, this.contentType, this.contentTypeOptions});

  factory MetadataEditorInfo.fromJson(Map<String, dynamic> json) => _$MetadataEditorInfoFromJson(json);
  Map<String, dynamic> toJson() => _$MetadataEditorInfoToJson(this);
}

@JsonSerializable(nullable: false)
class AllThemeMediaResult{
  @JsonKey(name: "ThemeVideosResult")
  ThemeMediaResult themeVideosResult;
  @JsonKey(name: "ThemeSongsResult")
  ThemeMediaResult themeSongsResult;
  @JsonKey(name: "SoundtrackSongsResult")
  ThemeMediaResult soundtrackSongsResult;

  AllThemeMediaResult({this.themeVideosResult, this.themeSongsResult, this.soundtrackSongsResult});

  factory AllThemeMediaResult.fromJson(Map<String, dynamic> json) => _$AllThemeMediaResultFromJson(json);
  Map<String, dynamic> toJson() => _$AllThemeMediaResultToJson(this);
}

@JsonSerializable(nullable: false)
class ThemeMediaResult{
  @JsonKey(name: "OwnerId")
  String ownerId;
  @JsonKey(name: "Items")
  List<BaseItemDto> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  ThemeMediaResult({this.ownerId, this.items, this.totalRecordCount});

  factory ThemeMediaResult.fromJson(Map<String, dynamic> json) => _$ThemeMediaResultFromJson(json);
  Map<String, dynamic> toJson() => _$ThemeMediaResultToJson(this);
}

@JsonSerializable(nullable: false)
class ImageInfo{
  @JsonKey(name: "ImageType")
  eSupportedImageTypes imageType;
  @JsonKey(name: "ImageIndex", nullable: true)
  int imageIndex;
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "Height", nullable: true)
  int height;
  @JsonKey(name: "Width", nullable: true)
  int width;
  @JsonKey(name: "Size")
  int size;

  ImageInfo({this.imageType, this.imageIndex, this.path, this.height, this.width, this.size});

  factory ImageInfo.fromJson(Map<String, dynamic> json) => _$ImageInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ImageInfoToJson(this);
}

@JsonSerializable(nullable: false)
class RemoteImageResult{
  @JsonKey(name: "Images")
  List<RemoteImageInfo> images;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;
  @JsonKey(name: "Providers")
  List<String> providers;

  RemoteImageResult({this.images, this.totalRecordCount, this.providers});

  factory RemoteImageResult.fromJson(Map<String, dynamic> json) => _$RemoteImageResultFromJson(json);
  Map<String, dynamic> toJson() => _$RemoteImageResultToJson(this);
}

@JsonSerializable(nullable: false)
class RemoteImageInfo{
  @JsonKey(name: "ProviderName")
  String providerName;
  @JsonKey(name: "Url")
  String url;
  @JsonKey(name: "ThumbnailUrl")
  String thumbnailUrl;
  @JsonKey(name: "Height", nullable: true)
  int height;
  @JsonKey(name: "Width", nullable: true)
  int width;
  @JsonKey(name: "CommunityRating", nullable: true)
  double communityRating;
  @JsonKey(name: "VoteCount", nullable: true)
  int voteCount;
  @JsonKey(name: "Language")
  String language;
  @JsonKey(name: "Type")
  eSupportedImageTypes type;
  @JsonKey(name: "RatingType")
  eRatingType ratingType;

  RemoteImageInfo({this.providerName, this.url, this.thumbnailUrl, this.height, this.width, this.communityRating, this.voteCount, this.language, this.type, this.ratingType});

  factory RemoteImageInfo.fromJson(Map<String, dynamic> json) => _$RemoteImageInfoFromJson(json);
  Map<String, dynamic> toJson() => _$RemoteImageInfoToJson(this);
}

@JsonSerializable(nullable: false)
class MediaInfo_PlaybackInfoResponse{
  @JsonKey(name: "MediaSources")
  List<MediaSourceInfo> mediaSources;
  @JsonKey(name: "PlaySessionId")
  String playSessionId;
  @JsonKey(name: "ErrorCode")
  eErrorCode errorCode;

  MediaInfo_PlaybackInfoResponse({this.mediaSources, this.playSessionId, this.errorCode});

  factory MediaInfo_PlaybackInfoResponse.fromJson(Map<String, dynamic> json) => _$MediaInfo_PlaybackInfoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MediaInfo_PlaybackInfoResponseToJson(this);
}

@JsonSerializable(nullable: false)
class MediaInfo_PlaybackInfoRequest{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "MaxStreamingBitrate", nullable: true)
  int maxStreamingBitrate;
  @JsonKey(name: "StartTimeTicks", nullable: true)
  int startTimeTicks;
  @JsonKey(name: "AudioStreamIndex", nullable: true)
  int audioStreamIndex;
  @JsonKey(name: "SubtitleStreamIndex", nullable: true)
  int subtitleStreamIndex;
  @JsonKey(name: "MaxAudioChannels", nullable: true)
  int maxAudioChannels;
  @JsonKey(name: "MediaSourceId")
  String mediaSourceId;
  @JsonKey(name: "LiveStreamId")
  String liveStreamId;
  @JsonKey(name: "DeviceProfile")
  Dlna_DeviceProfile deviceProfile;
  @JsonKey(name: "EnableDirectPlay")
  bool enableDirectPlay;
  @JsonKey(name: "EnableDirectStream")
  bool enableDirectStream;
  @JsonKey(name: "EnableTranscoding")
  bool enableTranscoding;
  @JsonKey(name: "AllowVideoStreamCopy")
  bool allowVideoStreamCopy;
  @JsonKey(name: "AllowAudioStreamCopy")
  bool allowAudioStreamCopy;
  @JsonKey(name: "IsPlayback")
  bool isPlayback;
  @JsonKey(name: "AutoOpenLiveStream")
  bool autoOpenLiveStream;
  @JsonKey(name: "DirectPlayProtocols")
  List<eProtocol> directPlayProtocols;

  MediaInfo_PlaybackInfoRequest({this.id, this.userId, this.maxStreamingBitrate, this.startTimeTicks, this.audioStreamIndex, this.subtitleStreamIndex, this.maxAudioChannels, this.mediaSourceId, this.liveStreamId, this.deviceProfile, this.enableDirectPlay, this.enableDirectStream, this.enableTranscoding, this.allowVideoStreamCopy, this.allowAudioStreamCopy, this.isPlayback, this.autoOpenLiveStream, this.directPlayProtocols});

  factory MediaInfo_PlaybackInfoRequest.fromJson(Map<String, dynamic> json) => _$MediaInfo_PlaybackInfoRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MediaInfo_PlaybackInfoRequestToJson(this);
}

@JsonSerializable(nullable: false)
class Library_PostUpdatedMedia{
  @JsonKey(name: "Updates")
  List<Library_MediaUpdateInfo> updates;

  Library_PostUpdatedMedia({this.updates});

  factory Library_PostUpdatedMedia.fromJson(Map<String, dynamic> json) => _$Library_PostUpdatedMediaFromJson(json);
  Map<String, dynamic> toJson() => _$Library_PostUpdatedMediaToJson(this);
}

@JsonSerializable(nullable: false)
class Library_MediaUpdateInfo{
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "UpdateType")
  String updateType;

  Library_MediaUpdateInfo({this.path, this.updateType});

  factory Library_MediaUpdateInfo.fromJson(Map<String, dynamic> json) => _$Library_MediaUpdateInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Library_MediaUpdateInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Library_UpdateLibraryOptions{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "LibraryOptions")
  Configuration_LibraryOptions libraryOptions;

  Library_UpdateLibraryOptions({this.id, this.libraryOptions});

  factory Library_UpdateLibraryOptions.fromJson(Map<String, dynamic> json) => _$Library_UpdateLibraryOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$Library_UpdateLibraryOptionsToJson(this);
}

@JsonSerializable(nullable: false)
class Library_RenameVirtualFolder{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "NewName")
  String newName;
  @JsonKey(name: "RefreshLibrary")
  bool refreshLibrary;

  Library_RenameVirtualFolder({this.name, this.newName, this.refreshLibrary});

  factory Library_RenameVirtualFolder.fromJson(Map<String, dynamic> json) => _$Library_RenameVirtualFolderFromJson(json);
  Map<String, dynamic> toJson() => _$Library_RenameVirtualFolderToJson(this);
}

@JsonSerializable(nullable: false)
class Library_AddMediaPath{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Path")
  String path;
  @JsonKey(name: "PathInfo")
  Configuration_MediaPathInfo pathInfo;
  @JsonKey(name: "RefreshLibrary")
  bool refreshLibrary;

  Library_AddMediaPath({this.name, this.path, this.pathInfo, this.refreshLibrary});

  factory Library_AddMediaPath.fromJson(Map<String, dynamic> json) => _$Library_AddMediaPathFromJson(json);
  Map<String, dynamic> toJson() => _$Library_AddMediaPathToJson(this);
}

@JsonSerializable(nullable: false)
class MBBackup_Api_ProfileBackupRequest{
  @JsonKey(name: "Settings")
  MBBackup_Configuration_BackupProfile settings;

  MBBackup_Api_ProfileBackupRequest({this.settings});

  factory MBBackup_Api_ProfileBackupRequest.fromJson(Map<String, dynamic> json) => _$MBBackup_Api_ProfileBackupRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MBBackup_Api_ProfileBackupRequestToJson(this);
}

@JsonSerializable(nullable: false)
class MBBackup_Configuration_BackupProfile{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "BackupSystemConfig")
  bool backupSystemConfig;
  @JsonKey(name: "BackupNotificationSettings")
  bool backupNotificationSettings;
  @JsonKey(name: "BackupAutoOrganizeSettings")
  bool backupAutoOrganizeSettings;
  @JsonKey(name: "BackupLiveTvSettings")
  bool backupLiveTvSettings;
  @JsonKey(name: "BackupPlugins")
  bool backupPlugins;
  @JsonKey(name: "BackupTaskSchedules")
  bool backupTaskSchedules;
  @JsonKey(name: "BackupChannelDlSettings")
  bool backupChannelDlSettings;
  @JsonKey(name: "BackupDlnaSettings")
  bool backupDlnaSettings;
  @JsonKey(name: "BackupSubtitleSettings")
  bool backupSubtitleSettings;
  @JsonKey(name: "BackupLibrary")
  bool backupLibrary;
  @JsonKey(name: "BackupPlaylists")
  bool backupPlaylists;
  @JsonKey(name: "BackupCollections")
  bool backupCollections;
  @JsonKey(name: "BackupUsers")
  bool backupUsers;
  @JsonKey(name: "BackupUserData")
  bool backupUserData;

  MBBackup_Configuration_BackupProfile({this.name, this.backupSystemConfig, this.backupNotificationSettings, this.backupAutoOrganizeSettings, this.backupLiveTvSettings, this.backupPlugins, this.backupTaskSchedules, this.backupChannelDlSettings, this.backupDlnaSettings, this.backupSubtitleSettings, this.backupLibrary, this.backupPlaylists, this.backupCollections, this.backupUsers, this.backupUserData});

  factory MBBackup_Configuration_BackupProfile.fromJson(Map<String, dynamic> json) => _$MBBackup_Configuration_BackupProfileFromJson(json);
  Map<String, dynamic> toJson() => _$MBBackup_Configuration_BackupProfileToJson(this);
}

@JsonSerializable(nullable: false)
class MBBackup_Api_ProfileRestoreRequest{
  @JsonKey(name: "Settings")
  MBBackup_Configuration_BackupInfo settings;

  MBBackup_Api_ProfileRestoreRequest({this.settings});

  factory MBBackup_Api_ProfileRestoreRequest.fromJson(Map<String, dynamic> json) => _$MBBackup_Api_ProfileRestoreRequestFromJson(json);
  Map<String, dynamic> toJson() => _$MBBackup_Api_ProfileRestoreRequestToJson(this);
}

@JsonSerializable(nullable: false)
class MBBackup_Configuration_BackupInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "FullPath")
  String fullPath;
  @JsonKey(name: "Date", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime date;
  @JsonKey(name: "Profile")
  String profile;
  @JsonKey(name: "IsAuto")
  bool isAuto;
  @JsonKey(name: "BackedupSystemConfig")
  bool backedupSystemConfig;
  @JsonKey(name: "BackedupNotificationSettings")
  bool backedupNotificationSettings;
  @JsonKey(name: "BackedupAutoOrganizeSettings")
  bool backedupAutoOrganizeSettings;
  @JsonKey(name: "BackedupLiveTvSettings")
  bool backedupLiveTvSettings;
  @JsonKey(name: "BackedupPlugins")
  bool backedupPlugins;
  @JsonKey(name: "BackedupTaskSchedules")
  bool backedupTaskSchedules;
  @JsonKey(name: "BackedupChannelDlSettings")
  bool backedupChannelDlSettings;
  @JsonKey(name: "BackedupDlnaSettings")
  bool backedupDlnaSettings;
  @JsonKey(name: "BackedupSubtitleSettings")
  bool backedupSubtitleSettings;
  @JsonKey(name: "BackedupLibrary")
  bool backedupLibrary;
  @JsonKey(name: "BackedupPlaylists")
  bool backedupPlaylists;
  @JsonKey(name: "BackedupCollections")
  bool backedupCollections;
  @JsonKey(name: "BackedupUsers")
  List<String> backedupUsers;
  @JsonKey(name: "AvailableUsers")
  List<String> availableUsers;
  @JsonKey(name: "ExistingUsers")
  List<String> existingUsers;
  @JsonKey(name: "BackedupUserData")
  List<Tuple_String_String> backedupUserData;
  @JsonKey(name: "PackageRuntime")
  String packageRuntime;

  MBBackup_Configuration_BackupInfo({this.name, this.fullPath, this.date, this.profile, this.isAuto, this.backedupSystemConfig, this.backedupNotificationSettings, this.backedupAutoOrganizeSettings, this.backedupLiveTvSettings, this.backedupPlugins, this.backedupTaskSchedules, this.backedupChannelDlSettings, this.backedupDlnaSettings, this.backedupSubtitleSettings, this.backedupLibrary, this.backedupPlaylists, this.backedupCollections, this.backedupUsers, this.availableUsers, this.existingUsers, this.backedupUserData, this.packageRuntime});

  factory MBBackup_Configuration_BackupInfo.fromJson(Map<String, dynamic> json) => _$MBBackup_Configuration_BackupInfoFromJson(json);
  Map<String, dynamic> toJson() => _$MBBackup_Configuration_BackupInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Tuple_String_String{
  @JsonKey(name: "Item1")
  String item1;
  @JsonKey(name: "Item2")
  String item2;

  Tuple_String_String({this.item1, this.item2});

  factory Tuple_String_String.fromJson(Map<String, dynamic> json) => _$Tuple_String_StringFromJson(json);
  Map<String, dynamic> toJson() => _$Tuple_String_StringToJson(this);
}

@JsonSerializable(nullable: false)
class Emby_Notifications_Api_NotificationsSummary{
  @JsonKey(name: "UnreadCount")
  int unreadCount;
  @JsonKey(name: "MaxUnreadNotificationLevel")
  eLevel maxUnreadNotificationLevel;

  Emby_Notifications_Api_NotificationsSummary({this.unreadCount, this.maxUnreadNotificationLevel});

  factory Emby_Notifications_Api_NotificationsSummary.fromJson(Map<String, dynamic> json) => _$Emby_Notifications_Api_NotificationsSummaryFromJson(json);
  Map<String, dynamic> toJson() => _$Emby_Notifications_Api_NotificationsSummaryToJson(this);
}

@JsonSerializable(nullable: false)
class PlayRequest{
  @JsonKey(name: "ControllingUserId")
  String controllingUserId;
  @JsonKey(name: "SubtitleStreamIndex", nullable: true)
  int subtitleStreamIndex;
  @JsonKey(name: "AudioStreamIndex", nullable: true)
  int audioStreamIndex;
  @JsonKey(name: "MediaSourceId")
  String mediaSourceId;
  @JsonKey(name: "StartIndex", nullable: true)
  int startIndex;

  PlayRequest({this.controllingUserId, this.subtitleStreamIndex, this.audioStreamIndex, this.mediaSourceId, this.startIndex});

  factory PlayRequest.fromJson(Map<String, dynamic> json) => _$PlayRequestFromJson(json);
  Map<String, dynamic> toJson() => _$PlayRequestToJson(this);
}

@JsonSerializable(nullable: false)
class GeneralCommand{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "ControllingUserId")
  String controllingUserId;
  @JsonKey(name: "Arguments")
  Map<String,String> arguments;

  GeneralCommand({this.name, this.controllingUserId, this.arguments});

  factory GeneralCommand.fromJson(Map<String, dynamic> json) => _$GeneralCommandFromJson(json);
  Map<String, dynamic> toJson() => _$GeneralCommandToJson(this);
}

@JsonSerializable(nullable: false)
class PlaybackProgressInfo{
  @JsonKey(name: "CanSeek")
  bool canSeek;
  @JsonKey(name: "Item")
  BaseItemDto item;
  @JsonKey(name: "NowPlayingQueue")
  List<QueueItem> nowPlayingQueue;
  @JsonKey(name: "PlaylistItemId")
  String playlistItemId;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SessionId")
  String sessionId;
  @JsonKey(name: "MediaSourceId")
  String mediaSourceId;
  @JsonKey(name: "AudioStreamIndex", nullable: true)
  int audioStreamIndex;
  @JsonKey(name: "SubtitleStreamIndex", nullable: true)
  int subtitleStreamIndex;
  @JsonKey(name: "IsPaused")
  bool isPaused;
  @JsonKey(name: "IsMuted")
  bool isMuted;
  @JsonKey(name: "PositionTicks", nullable: true)
  int positionTicks;
  @JsonKey(name: "PlaybackStartTimeTicks", nullable: true)
  int playbackStartTimeTicks;
  @JsonKey(name: "VolumeLevel", nullable: true)
  int volumeLevel;
  @JsonKey(name: "Brightness", nullable: true)
  int brightness;
  @JsonKey(name: "AspectRatio")
  String aspectRatio;
  @JsonKey(name: "PlayMethod")
  ePlayMethod playMethod;
  @JsonKey(name: "LiveStreamId")
  String liveStreamId;
  @JsonKey(name: "PlaySessionId")
  String playSessionId;
  @JsonKey(name: "RepeatMode")
  eRepeatMode repeatMode;

  PlaybackProgressInfo({this.canSeek, this.item, this.nowPlayingQueue, this.playlistItemId, this.itemId, this.sessionId, this.mediaSourceId, this.audioStreamIndex, this.subtitleStreamIndex, this.isPaused, this.isMuted, this.positionTicks, this.playbackStartTimeTicks, this.volumeLevel, this.brightness, this.aspectRatio, this.playMethod, this.liveStreamId, this.playSessionId, this.repeatMode});

  factory PlaybackProgressInfo.fromJson(Map<String, dynamic> json) => _$PlaybackProgressInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PlaybackProgressInfoToJson(this);
}

@JsonSerializable(nullable: false)
class PlaybackStopInfo{
  @JsonKey(name: "NowPlayingQueue")
  List<QueueItem> nowPlayingQueue;
  @JsonKey(name: "PlaylistItemId")
  String playlistItemId;
  @JsonKey(name: "Item")
  BaseItemDto item;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "SessionId")
  String sessionId;
  @JsonKey(name: "MediaSourceId")
  String mediaSourceId;
  @JsonKey(name: "PositionTicks", nullable: true)
  int positionTicks;
  @JsonKey(name: "LiveStreamId")
  String liveStreamId;
  @JsonKey(name: "PlaySessionId")
  String playSessionId;
  @JsonKey(name: "Failed")
  bool failed;
  @JsonKey(name: "NextMediaType")
  String nextMediaType;

  PlaybackStopInfo({this.nowPlayingQueue, this.playlistItemId, this.item, this.itemId, this.sessionId, this.mediaSourceId, this.positionTicks, this.liveStreamId, this.playSessionId, this.failed, this.nextMediaType});

  factory PlaybackStopInfo.fromJson(Map<String, dynamic> json) => _$PlaybackStopInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PlaybackStopInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncedItemProgress{
  @JsonKey(name: "Progress", nullable: true)
  double progress;
  @JsonKey(name: "Status")
  eSync_Model_SyncJobItem_Status status;

  Sync_Model_SyncedItemProgress({this.progress, this.status});

  factory Sync_Model_SyncedItemProgress.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncedItemProgressFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncedItemProgressToJson(this);
}

@JsonSerializable(nullable: false)
class Sync_Model_SyncedItem{
  @JsonKey(name: "ServerId")
  String serverId;
  @JsonKey(name: "SyncJobId")
  String syncJobId;
  @JsonKey(name: "SyncJobName")
  String syncJobName;
  @JsonKey(name: "SyncJobDateCreated", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime syncJobDateCreated;
  @JsonKey(name: "SyncJobItemId")
  String syncJobItemId;
  @JsonKey(name: "OriginalFileName")
  String originalFileName;
  @JsonKey(name: "Item")
  BaseItemDto item;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "AdditionalFiles")
  List<Sync_Model_ItemFileInfo> additionalFiles;

  Sync_Model_SyncedItem({this.serverId, this.syncJobId, this.syncJobName, this.syncJobDateCreated, this.syncJobItemId, this.originalFileName, this.item, this.userId, this.additionalFiles});

  factory Sync_Model_SyncedItem.fromJson(Map<String, dynamic> json) => _$Sync_Model_SyncedItemFromJson(json);
  Map<String, dynamic> toJson() => _$Sync_Model_SyncedItemToJson(this);
}

@JsonSerializable(nullable: false)
class QueryResult_ActivityLogEntry{
  @JsonKey(name: "Items")
  List<ActivityLogEntry> items;
  @JsonKey(name: "TotalRecordCount")
  int totalRecordCount;

  QueryResult_ActivityLogEntry({this.items, this.totalRecordCount});

  factory QueryResult_ActivityLogEntry.fromJson(Map<String, dynamic> json) => _$QueryResult_ActivityLogEntryFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResult_ActivityLogEntryToJson(this);
}

@JsonSerializable(nullable: false)
class ActivityLogEntry{
  @JsonKey(name: "Id")
  int id;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Overview")
  String overview;
  @JsonKey(name: "ShortOverview")
  String shortOverview;
  @JsonKey(name: "Type")
  String type;
  @JsonKey(name: "ItemId")
  String itemId;
  @JsonKey(name: "Date", fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime date;
  @JsonKey(name: "UserId")
  String userId;
  @JsonKey(name: "UserPrimaryImageTag")
  String userPrimaryImageTag;
  @JsonKey(name: "Severity")
  eSeverity severity;

  ActivityLogEntry({this.id, this.name, this.overview, this.shortOverview, this.type, this.itemId, this.date, this.userId, this.userPrimaryImageTag, this.severity});

  factory ActivityLogEntry.fromJson(Map<String, dynamic> json) => _$ActivityLogEntryFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityLogEntryToJson(this);
}

@JsonSerializable(nullable: false)
class PublicSystemInfo{
  @JsonKey(name: "LocalAddress")
  String localAddress;
  @JsonKey(name: "WanAddress")
  String wanAddress;
  @JsonKey(name: "ServerName")
  String serverName;
  @JsonKey(name: "Version")
  String version;
  @JsonKey(name: "OperatingSystem")
  String operatingSystem;
  @JsonKey(name: "Id")
  String id;

  PublicSystemInfo({this.localAddress, this.wanAddress, this.serverName, this.version, this.operatingSystem, this.id});

  factory PublicSystemInfo.fromJson(Map<String, dynamic> json) => _$PublicSystemInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PublicSystemInfoToJson(this);
}

@JsonSerializable(nullable: false)
class AuthenticateUser{
  @JsonKey(name: "Pw")
  String pw;
  @JsonKey(name: "Password")
  String password;

  AuthenticateUser({this.pw, this.password});

  factory AuthenticateUser.fromJson(Map<String, dynamic> json) => _$AuthenticateUserFromJson(json);
  Map<String, dynamic> toJson() => _$AuthenticateUserToJson(this);
}

@JsonSerializable(nullable: false)
class UpdateUserPassword{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "CurrentPassword")
  String currentPassword;
  @JsonKey(name: "CurrentPw")
  String currentPw;
  @JsonKey(name: "NewPw")
  String newPw;
  @JsonKey(name: "ResetPassword")
  bool resetPassword;

  UpdateUserPassword({this.id, this.currentPassword, this.currentPw, this.newPw, this.resetPassword});

  factory UpdateUserPassword.fromJson(Map<String, dynamic> json) => _$UpdateUserPasswordFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateUserPasswordToJson(this);
}

@JsonSerializable(nullable: false)
class UpdateUserEasyPassword{
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "NewPassword")
  String newPassword;
  @JsonKey(name: "NewPw")
  String newPw;
  @JsonKey(name: "ResetPassword")
  bool resetPassword;

  UpdateUserEasyPassword({this.id, this.newPassword, this.newPw, this.resetPassword});

  factory UpdateUserEasyPassword.fromJson(Map<String, dynamic> json) => _$UpdateUserEasyPasswordFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateUserEasyPasswordToJson(this);
}

@JsonSerializable(nullable: false)
class ForgotPasswordPin{
  @JsonKey(name: "Pin")
  String pin;

  ForgotPasswordPin({this.pin});

  factory ForgotPasswordPin.fromJson(Map<String, dynamic> json) => _$ForgotPasswordPinFromJson(json);
  Map<String, dynamic> toJson() => _$ForgotPasswordPinToJson(this);
}

@JsonSerializable(nullable: false)
class Users_PinRedeemResult{
  @JsonKey(name: "Success")
  bool success;
  @JsonKey(name: "UsersReset")
  List<String> usersReset;

  Users_PinRedeemResult({this.success, this.usersReset});

  factory Users_PinRedeemResult.fromJson(Map<String, dynamic> json) => _$Users_PinRedeemResultFromJson(json);
  Map<String, dynamic> toJson() => _$Users_PinRedeemResultToJson(this);
}

@JsonSerializable(nullable: false)
class UserLibrary_SpecialViewOption{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Id")
  String id;

  UserLibrary_SpecialViewOption({this.name, this.id});

  factory UserLibrary_SpecialViewOption.fromJson(Map<String, dynamic> json) => _$UserLibrary_SpecialViewOptionFromJson(json);
  Map<String, dynamic> toJson() => _$UserLibrary_SpecialViewOptionToJson(this);
}

@JsonSerializable(nullable: false)
class ImageProviderInfo{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "SupportedImages")
  List<eSupportedImageTypes> supportedImages;

  ImageProviderInfo({this.name, this.supportedImages});

  factory ImageProviderInfo.fromJson(Map<String, dynamic> json) => _$ImageProviderInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ImageProviderInfoToJson(this);
}

@JsonSerializable(nullable: false)
class Library_UpdateMediaPath{
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "PathInfo")
  Configuration_MediaPathInfo pathInfo;

  Library_UpdateMediaPath({this.name, this.pathInfo});

  factory Library_UpdateMediaPath.fromJson(Map<String, dynamic> json) => _$Library_UpdateMediaPathFromJson(json);
  Map<String, dynamic> toJson() => _$Library_UpdateMediaPathToJson(this);
}

@JsonSerializable(nullable: false)
class PlaystateRequest{
  @JsonKey(name: "Command")
  eCommand command;
  @JsonKey(name: "SeekPositionTicks", nullable: true)
  int seekPositionTicks;
  @JsonKey(name: "ControllingUserId")
  String controllingUserId;

  PlaystateRequest({this.command, this.seekPositionTicks, this.controllingUserId});

  factory PlaystateRequest.fromJson(Map<String, dynamic> json) => _$PlaystateRequestFromJson(json);
  Map<String, dynamic> toJson() => _$PlaystateRequestToJson(this);
}

@JsonSerializable(nullable: false)
class RemoteSubtitleInfo{
  @JsonKey(name: "ThreeLetterISOLanguageName")
  String threeLetterISOLanguageName;
  @JsonKey(name: "Id")
  String id;
  @JsonKey(name: "ProviderName")
  String providerName;
  @JsonKey(name: "Name")
  String name;
  @JsonKey(name: "Format")
  String format;
  @JsonKey(name: "Author")
  String author;
  @JsonKey(name: "Comment")
  String comment;
  @JsonKey(name: "DateCreated", nullable: true, fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime dateCreated;
  @JsonKey(name: "CommunityRating", nullable: true)
  double communityRating;
  @JsonKey(name: "DownloadCount", nullable: true)
  int downloadCount;
  @JsonKey(name: "IsHashMatch", nullable: true)
  bool isHashMatch;

  RemoteSubtitleInfo({this.threeLetterISOLanguageName, this.id, this.providerName, this.name, this.format, this.author, this.comment, this.dateCreated, this.communityRating, this.downloadCount, this.isHashMatch});

  factory RemoteSubtitleInfo.fromJson(Map<String, dynamic> json) => _$RemoteSubtitleInfoFromJson(json);
  Map<String, dynamic> toJson() => _$RemoteSubtitleInfoToJson(this);
}

enum eVideo3DFormat {
  HalfSideBySide, FullSideBySide, FullTopAndBottom, HalfTopAndBottom, MVC
}

enum ePlayAccess {
  Full, None
}

enum eAirDays {
  Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
}

enum eVideoType {
  VideoFile, Iso, Dvd, BluRay
}

enum eLocationType {
  FileSystem, Remote, Virtual, Offline
}

enum eIsoType {
  Dvd, BluRay
}

enum eLockedFields {
  Cast, Genres, ProductionLocations, Studios, Tags, Name, Overview, Runtime, OfficialRating
}

enum eImageOrientation {
  TopLeft, TopRight, BottomRight, BottomLeft, LeftTop, RightTop, RightBottom, LeftBottom
}

enum eChannelType {
  TV, Radio
}

enum eAudio {
  Mono, Stereo, Dolby, DolbyDigital, Thx, Atmos
}

enum eProtocol {
  File, Http, Rtmp, Rtsp, Udp, Rtp, Ftp
}

enum eType {
  Default, Grouping, Placeholder
}

enum eTimestamp {
  None, Zero, Valid
}

enum eMediaStream_Type {
  Audio, Video, Subtitle, EmbeddedImage
}

enum eDeliveryMethod {
  Encode, Embed, External, Hls
}

enum eTargetSystem {
  Server, MBTheater, MBClassic
}

enum eClassification {
  Release, Beta, Dev
}

enum eState {
  Idle, Cancelling, Running
}

enum eStatus {
  Completed, Failed, Cancelled, Aborted
}

enum eSystemEvent {
  WakeFromSleep
}

enum ePlayMethod {
  Transcode, DirectStream, DirectPlay
}

enum eRepeatMode {
  RepeatNone, RepeatAll, RepeatOne
}

enum eMatch {
  Equals, Regex, Substring
}

enum eDlna_DirectPlayProfile_Type {
  Audio, Video, Photo
}

enum eTranscodeSeekInfo {
  Auto, Bytes
}

enum eContext {
  Streaming, Static
}

enum eCondition {
  Equals, NotEquals, LessThanEqual, GreaterThanEqual, EqualsAny
}

enum eProperty {
  AudioChannels, AudioBitrate, AudioProfile, Width, Height, Has64BitOffsets, PacketLength, VideoBitDepth, VideoBitrate, VideoFramerate, VideoLevel, VideoProfile, VideoTimestamp, IsAnamorphic, RefFrames, NumAudioStreams, NumVideoStreams, IsSecondaryAudio, VideoCodecTag, IsAvc, IsInterlaced, AudioSampleRate, AudioBitDepth
}

enum eDlna_CodecProfile_Type {
  Video, VideoAudio, Audio
}

enum eTranscodeReasons {
  ContainerNotSupported, VideoCodecNotSupported, AudioCodecNotSupported, ContainerBitrateExceedsLimit, AudioBitrateNotSupported, AudioChannelsNotSupported, VideoResolutionNotSupported, UnknownVideoStreamInfo, UnknownAudioStreamInfo, AudioProfileNotSupported, AudioSampleRateNotSupported, AnamorphicVideoNotSupported, InterlacedVideoNotSupported, SecondaryAudioNotSupported, RefFramesNotSupported, VideoBitDepthNotSupported, VideoBitrateNotSupported, VideoFramerateNotSupported, VideoLevelNotSupported, VideoProfileNotSupported, AudioBitDepthNotSupported, SubtitleCodecNotSupported, DirectPlayError
}

enum eConnectLinkType {
  LinkedUser, Guest
}

enum eSubtitleMode {
  Default, Always, OnlyForced, None, Smart
}

enum eBlockUnratedItems {
  Movie, Trailer, Series, Music, Game, Book, LiveTvChannel, LiveTvProgram, ChannelContent, Other
}

enum eDayOfWeek {
  Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Everyday, Weekday, Weekend
}

enum eContentTypes {
  Clip, Podcast, Trailer, Movie, Episode, Song, MovieExtra, TvExtra, GameExtra
}

enum eDefaultSortFields {
  Name, CommunityRating, PremiereDate, DateCreated, Runtime, PlayCount, CommunityPlayCount
}

enum eScrollDirection {
  Horizontal, Vertical
}

enum eSortOrder {
  Ascending, Descending
}

enum eDlna_DeviceProfileInfo_Type {
  System, User
}

enum eIO_FileSystemEntryInfo_Type {
  File, Directory, NetworkComputer, NetworkShare
}

enum eSupportedImageTypes {
  Primary, Art, Backdrop, Banner, Logo, Thumb, Disc, Box, Screenshot, Menu, Chapter, BoxRear
}

enum eLiveTv_LiveTvServiceInfo_Status {
  Ok, Unavailable
}

enum eLiveTv_TimerInfoDto_Status {
  New, InProgress, Completed, Cancelled, ConflictedOk, ConflictedNotOk, Error
}

enum eKeepUntil {
  UntilDeleted, UntilSpaceNeeded, UntilWatched, UntilDate
}

enum eDayPattern {
  Daily, Weekdays, Weekends
}

enum eRecommendationType {
  SimilarToRecentlyPlayed, SimilarToLikedItem, HasDirectorFromRecentlyPlayed, HasActorFromRecentlyPlayed, HasLikedDirector, HasLikedActor
}

enum eLevel {
  Normal, Warning, Error
}

enum eCategory {
  Latest, NextUp, Resume
}

enum eSync_SyncJob_Status {
  Queued, Converting, ReadyToTransfer, Transferring, Completed, CompletedWithError, Failed
}

enum eSync_Model_SyncJobItem_Status {
  Queued, Converting, ReadyToTransfer, Transferring, Synced, Failed
}

enum eSync_Model_ItemFileInfo_Type {
  Media, Image, Subtitles
}

enum eOptions {
  Name, Quality, UnwatchedOnly, SyncNewContent, ItemLimit, Profile
}

enum eUsers_UserAction_Type {
  PlayedItem
}

enum eImageSavingConvention {
  Legacy, Compatible
}

enum eSystemArchitecture {
  X86, X64, Arm, Arm64
}

enum eAction {
  ContactAdmin, PinCode, InNetworkRequired
}

enum eConfigurationPageType {
  PluginConfiguration, None
}

enum eRatingType {
  Score, Likes
}

enum eErrorCode {
  NotAllowed, NoCompatibleStream, RateLimitExceeded
}

enum eSeverity {
  Info, Debug, Warn, Error, Fatal
}

enum eCommand {
  Stop, Pause, Unpause, NextTrack, PreviousTrack, Seek, Rewind, FastForward, PlayPause
}
