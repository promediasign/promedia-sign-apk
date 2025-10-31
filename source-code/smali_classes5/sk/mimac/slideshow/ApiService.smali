.class public abstract Lsk/mimac/slideshow/ApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/ApiService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/ApiService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lsk/mimac/slideshow/ApiService;->lambda$showSentHtml$2(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V

    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/ApiService;->lambda$process$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->lambda$runAfterDelay$3(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public static clearPlaylist(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->isSetPlaylist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->clearSetPlaylist()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method public static communicationDebug()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/communication/DeviceInfo;

    invoke-virtual {v3}, Lsk/mimac/slideshow/communication/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "devices"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getVerifiedPeers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {v3}, Lsk/mimac/slideshow/communication/Peer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v2, "verifiedPeers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "myPeer"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "externalIp"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getExternalIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "publicTrackerEnabled"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->isPublicTrackerEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "upnpActive"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->isUpnpActive()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "communicationCode"

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private configurationImport(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p1, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/config/RestoreService;->importFromXml(Ljava/io/InputStream;Lsk/mimac/slideshow/enums/ConfigImportType;)Z

    return-void
.end method

.method public static synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/ApiService;->lambda$process$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lsk/mimac/slideshow/gui/ItemThread;"
        }
    .end annotation

    const-string v0, "panelId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "audio"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThread(I)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "zoneId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "panelName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThread(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "zoneName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p0}, Lsk/mimac/slideshow/PlatformDependentFactory;->getItemThread(Ljava/lang/String;)Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    return-object p0
.end method

.method private static getLayoutIdFromParams(Ljava/util/Map;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "layoutId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "layoutName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getByName(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPlaylistIdFromParams(Ljava/util/Map;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1
    const-string v0, "playlist"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string v0, "playlistId"

    .line 21
    .line 22
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "playlistNumber"

    .line 32
    .line 33
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "\' was not found"

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getByNumber(I)Lsk/mimac/slideshow/database/entity/Playlist;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_2
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    .line 63
    .line 64
    const-string v2, "Playlist with number \'"

    .line 65
    .line 66
    invoke-static {v2, v0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 71
    .line 72
    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_3
    const-string v0, "playlistName"

    .line 77
    .line 78
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz p0, :cond_5

    .line 85
    .line 86
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getByName(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/Playlist;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_4
    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    .line 102
    .line 103
    const-string v2, "Playlist with name \'"

    .line 104
    .line 105
    invoke-static {v2, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 110
    .line 111
    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_5
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    .line 116
    .line 117
    const-string v0, "Missing one of \'playlistId\', \'playlistNumber\', \'playlistName\'"

    .line 118
    .line 119
    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 120
    .line 121
    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    .line 122
    .line 123
    .line 124
    throw p0
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
.end method

.method private getZonesContent()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v5

    const-string v6, "main"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v5, "playlist"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/ItemThread;->getLastFileName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "fileName"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/ItemThread;->getFormattedPosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "zones"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method private static synthetic lambda$process$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reloadApp()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$process$1()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->reboot()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$runAfterDelay$3(Ljava/util/concurrent/Callable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lsk/mimac/slideshow/ApiService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t run action"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showSentHtml$2(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsk/mimac/slideshow/gui/ShowHelper;->showHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string p0, "HTML"

    invoke-static {p0}, Lsk/mimac/slideshow/item/ItemCounter;->addItem(Ljava/lang/String;)V

    int-to-long p0, p3

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    invoke-virtual {p2, p0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V

    return-void
.end method

.method private lastOscMessage()Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lsk/mimac/slideshow/osc/OscService;->getInstance()Lsk/mimac/slideshow/osc/OscService;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService;->getLastMessage()Lsk/mimac/slideshow/osc/OscService$LastMessage;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_1

    const-string v2, "timestamp"

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService$LastMessage;->getTimestamp()Lj$/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "address"

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService$LastMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService$LastMessage;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "arguments"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v1
.end method

.method public static next(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private panelSchedule(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "from"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object v0

    const-string v1, "to"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object v1

    const-string v2, "panelId"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v3

    invoke-virtual {v3, p1}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getAllForPanel(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lsk/mimac/slideshow/schedule/ScheduleResolver;->resolveSchedule(Ljava/util/List;Lj$/time/LocalDate;Lj$/time/LocalDate;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "schedules"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2
.end method

.method private parseLength(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static pause(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->pause()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method public static previous(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interruptAndBackward()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private processHardwareGet()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverService;->getCurrentStatus()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "status"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private processHardwareSet(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "value"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/driver/HardwareDriverService;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;->processHardwareGet()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Name is required"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private processShell(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "command"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Shell$Response;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "result"

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Shell$Response;->getResult()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "stdout"

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Shell$Response;->getStdout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stderr"

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Shell$Response;->getStderr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lsk/mimac/slideshow/exception/ApiException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t process command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {v0, p1, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw v0

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Command is required"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method public static resume(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->resume()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private runAfterDelay(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LB/c;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, LB/c;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private scheduleLayout(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lsk/mimac/slideshow/ApiService;->getLayoutIdFromParams(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->setScreenLayoutId(J)V

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    const/16 p1, 0x17

    const/16 v1, 0x3b

    invoke-static {p1, v1}, Lj$/time/LocalTime;->of(II)Lj$/time/LocalTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->deleteAllWithPriority(I)V

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    return-void

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Either layoutId or layoutName has to be entered"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private screenLayoutSchedule(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "from"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object v0

    const-string v1, "to"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lsk/mimac/slideshow/schedule/ScheduleResolver;->resolveSchedule(Ljava/util/List;Lj$/time/LocalDate;Lj$/time/LocalDate;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "schedules"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method private setLayout(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lsk/mimac/slideshow/ApiService;->getLayoutIdFromParams(Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "length"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/ApiService;->parseLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayout(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayout(I)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Either layoutId or layoutName has to be entered"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method private setPlaylist(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lsk/mimac/slideshow/ApiService;->getPlaylistIdFromParams(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "length"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/ApiService;->parseLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Ljava/lang/Long;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Ljava/lang/Long;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p1

    if-eqz v1, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1
.end method

.method public static showFile(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v0

    const-string v1, "length"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->MANUAL_PLAYLIST_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const-string v2, "file"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v4, Lsk/mimac/slideshow/enums/ItemType;->IMAGE:Lsk/mimac/slideshow/enums/ItemType;

    invoke-direct {v2, v3, p0, v4, p0}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v2, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v4, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    invoke-direct {v2, v3, p0, v4, p0}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    :goto_2
    new-instance p0, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-direct {p0, v2, v1, v3}, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Item;Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;)V

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V

    return-void

    :cond_3
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Missing file name"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :cond_4
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested panel was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private static showSentHtml(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string p1, "length"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "html"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v1, p0

    check-cast v1, Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/DisplayItemThread;->getShowHelper()Lsk/mimac/slideshow/gui/ShowHelper;

    move-result-object v1

    new-instance v2, Le1/b;

    invoke-direct {v2, v1, v0, p0, p1}, Le1/b;-><init>(Lsk/mimac/slideshow/gui/ShowHelper;Ljava/lang/String;Lsk/mimac/slideshow/gui/ItemThread;I)V

    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/gui/ItemThread;->addToRun(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string p1, "Requested zone was not found"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :cond_1
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string p1, "Missing HTML"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :cond_2
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string p1, "Only admin can call showSentHtml"

    sget-object v0, Lsk/mimac/slideshow/exception/ApiException$Type;->FORBIDDEN:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method

.method private static showStream(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "duration"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const-string v1, "address"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "description"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0}, Lsk/mimac/slideshow/ApiService;->getItemThreadForPanel(Ljava/util/Map;)Lsk/mimac/slideshow/gui/ItemThread;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p0

    new-instance v3, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v4, Lsk/mimac/slideshow/enums/ItemType;->STREAM:Lsk/mimac/slideshow/enums/ItemType;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "Stream"

    :goto_1
    const/4 v5, 0x0

    invoke-direct {v3, v5, v1, v4, v2}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/Long;Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v1, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-direct {v1, v3, v0, v2}, Lsk/mimac/slideshow/playlist/SingleItemPlaylistWrapper;-><init>(Lsk/mimac/slideshow/database/entity/Item;Ljava/lang/Integer;Lsk/mimac/slideshow/enums/MusicType;)V

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Lsk/mimac/slideshow/playlist/PlaylistWrapper;)V

    return-void

    :cond_2
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Requested zone was not found"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0

    :cond_3
    new-instance p0, Lsk/mimac/slideshow/exception/ApiException;

    const-string v0, "Missing address"

    sget-object v1, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "osc/last"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :catch_0
    move-exception p2

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "schedule/layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "configuration/import"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "showstream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "hardware/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "hardware/get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "audio/next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "layout/clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "lastuseractivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "playlist/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "communication/debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "showsenthtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "layout/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "shell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "zone/content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_11
    const-string v1, "showfile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_12
    const-string v1, "schedule/panel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_13
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_14
    const-string v1, "reload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_15
    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_16
    const-string v1, "previous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_17
    const-string v1, "schedule/layout/set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_18
    const-string v1, "playlist/clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_19
    const-string v1, "schedule/screenlayout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lsk/mimac/slideshow/ApiService;->processInternal(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;->getZonesContent()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->processShell(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;->processHardwareGet()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->processHardwareSet(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->configurationImport(Ljava/util/Map;)V

    return-object v1

    :pswitch_5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "secondsSinceLastActivity"

    invoke-static {}, Lsk/mimac/slideshow/UserActivityHolder;->getSecondsSinceLastActivity()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {}, Lsk/mimac/slideshow/ApiService;->communicationDebug()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-direct {p0}, Lsk/mimac/slideshow/ApiService;->lastOscMessage()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->panelSchedule(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->scheduleLayout(Ljava/util/Map;)V

    return-object v1

    :pswitch_a
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->screenLayoutSchedule(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_b
    new-instance p2, Le1/a;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Le1/a;-><init>(I)V

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->runAfterDelay(Ljava/util/concurrent/Callable;)V

    return-object v1

    :pswitch_c
    new-instance p2, Le1/a;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Le1/a;-><init>(I)V

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->runAfterDelay(Ljava/util/concurrent/Callable;)V

    return-object v1

    :pswitch_d
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->clearSetScreenLayout()V

    return-object v1

    :pswitch_e
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->setLayout(Ljava/util/Map;)V

    return-object v1

    :pswitch_f
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->clearPlaylist(Ljava/util/Map;)V

    return-object v1

    :pswitch_10
    invoke-direct {p0, p2}, Lsk/mimac/slideshow/ApiService;->setPlaylist(Ljava/util/Map;)V

    return-object v1

    :pswitch_11
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object p2

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    return-object v1

    :pswitch_12
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->resume(Ljava/util/Map;)V

    return-object v1

    :pswitch_13
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->pause(Ljava/util/Map;)V

    return-object v1

    :pswitch_14
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->showStream(Ljava/util/Map;)V

    return-object v1

    :pswitch_15
    invoke-static {p2, p3}, Lsk/mimac/slideshow/ApiService;->showSentHtml(Ljava/util/Map;Z)V

    return-object v1

    :pswitch_16
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->showFile(Ljava/util/Map;)V

    return-object v1

    :pswitch_17
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->previous(Ljava/util/Map;)V

    return-object v1

    :pswitch_18
    invoke-static {p2}, Lsk/mimac/slideshow/ApiService;->next(Ljava/util/Map;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    sget-object p3, Lsk/mimac/slideshow/ApiService;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while executing API command \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lsk/mimac/slideshow/exception/ApiException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-direct {p1, p2, p3}, Lsk/mimac/slideshow/exception/ApiException;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V

    throw p1

    :goto_3
    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7a3778f2 -> :sswitch_19
        -0x6de82830 -> :sswitch_18
        -0x6dc4058b -> :sswitch_17
        -0x4bec4509 -> :sswitch_16
        -0x37ba085b -> :sswitch_15
        -0x37b57e67 -> :sswitch_14
        -0x37b237d3 -> :sswitch_13
        -0x35f62b74 -> :sswitch_12
        -0x1429f607 -> :sswitch_11
        -0x490d6ea -> :sswitch_10
        0x338af3 -> :sswitch_f
        0x65825f6 -> :sswitch_e
        0x6855e30 -> :sswitch_d
        0x144c6ffd -> :sswitch_c
        0x14a2d940 -> :sswitch_b
        0x1b0d72da -> :sswitch_a
        0x228462a5 -> :sswitch_9
        0x2b594570 -> :sswitch_8
        0x3211ef28 -> :sswitch_7
        0x59b2358c -> :sswitch_6
        0x5b599eaf -> :sswitch_5
        0x5b59cbbb -> :sswitch_4
        0x654838bd -> :sswitch_3
        0x67c97ede -> :sswitch_2
        0x706281a2 -> :sswitch_1
        0x79c7bba6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract processInternal(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method
