.class public Lsk/mimac/slideshow/http/page/PlaylistsPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# instance fields
.field private final user:Lsk/mimac/slideshow/database/entity/AccessUser;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/database/entity/AccessUser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-direct {p0, v0, p2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    return-void
.end method

.method private isPlaylistEmpty(Ljava/lang/Long;)Z
    .locals 5

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/ContentDao;->getAllItems(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/Item;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->IMAGE:Lsk/mimac/slideshow/enums/ItemType;

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    new-instance v2, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v4}, Lsk/mimac/slideshow/utils/FileFilterUtils;->getFileNamesForFilter(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_3
    return v1
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "playlists"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "activate"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Ljava/lang/Long;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get data from DB"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 11

    .line 1
    const-string v0, "</div>"

    .line 2
    .line 3
    const-string v1, "</td><td>"

    .line 4
    .line 5
    const-string v2, "<i>"

    .line 6
    .line 7
    const-string v3, "playlists_help"

    .line 8
    .line 9
    const-string v4, "</i><br><br>"

    .line 10
    .line 11
    invoke-static {p1, v2, v3, v4}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 15
    .line 16
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, "</a>"

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string v2, "<a class=\'button\' href=\'/playlists/edit\'>"

    .line 25
    .line 26
    const-string v4, "playlist_add_new"

    .line 27
    .line 28
    const-string v5, "</a><a class=\'button\' href=\'/playlists/audio/schedule\'>"

    .line 29
    .line 30
    const-string v6, "audio_playlist_schedule"

    .line 31
    .line 32
    invoke-static {p1, v2, v4, v5, v6}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getAll()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_c

    .line 51
    .line 52
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    instance-of v5, v4, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-interface {v4}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getId()Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_1
    move-object v4, v6

    .line 78
    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    instance-of v7, v5, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 91
    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    invoke-interface {v5}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getId()Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :cond_2
    const-string v5, "<table class=\'styledTable\'><thead><tr><th>"

    .line 99
    .line 100
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v5, "name2"

    .line 104
    .line 105
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v5, "</th><th>"

    .line 113
    .line 114
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v5, "number"

    .line 118
    .line 119
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v5, "</th>"

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v5, "<th>"

    .line 132
    .line 133
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, "sound"

    .line 137
    .line 138
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v5, "</th><th></th>"

    .line 146
    .line 147
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v5, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 151
    .line 152
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 153
    .line 154
    .line 155
    move-result v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const-string v7, ""

    .line 157
    .line 158
    if-eqz v5, :cond_3

    .line 159
    .line 160
    :try_start_1
    const-string v5, "<th></th><th></th>"

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move-object v5, v7

    .line 164
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v5, "</thead>"

    .line 168
    .line 169
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_b

    .line 181
    .line 182
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Lsk/mimac/slideshow/database/entity/Playlist;

    .line 187
    .line 188
    const-string v8, "<tr><td>"

    .line 189
    .line 190
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-static {v8}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    if-eqz v8, :cond_4

    .line 212
    .line 213
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    goto :goto_3

    .line 218
    :cond_4
    move-object v8, v7

    .line 219
    :goto_3
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-virtual {v8}, Lsk/mimac/slideshow/enums/MusicType;->getDesc()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    invoke-virtual {v8, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v8
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    const-string v9, "\'>"

    .line 252
    .line 253
    if-nez v8, :cond_8

    .line 254
    .line 255
    :try_start_2
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v8, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-eqz v8, :cond_5

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_5
    iget-object v8, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 267
    .line 268
    invoke-virtual {v8}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_9

    .line 273
    .line 274
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-direct {p0, v8}, Lsk/mimac/slideshow/http/page/PlaylistsPage;->isPlaylistEmpty(Ljava/lang/Long;)Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_6

    .line 283
    .line 284
    const-string v8, "playlist_empty"

    .line 285
    .line 286
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    :goto_4
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_6
    const-string v8, "<a class=\'link\' href=\'/playlists?activate="

    .line 295
    .line 296
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    sget-object v10, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    .line 314
    .line 315
    if-ne v8, v10, :cond_7

    .line 316
    .line 317
    const-string v8, "playlist_audio_switch_to"

    .line 318
    .line 319
    :goto_5
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    goto :goto_6

    .line 324
    :cond_7
    const-string v8, "playlist_switch_to"

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :goto_6
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_8
    :goto_7
    const-string v8, "active"

    .line 335
    .line 336
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    goto :goto_4

    .line 341
    :cond_9
    :goto_8
    iget-object v8, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 342
    .line 343
    invoke-virtual {v8}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    if-eqz v8, :cond_a

    .line 348
    .line 349
    const-string v8, "</td><td><a class=\'link\' href=\'/playlists/edit?playlist="

    .line 350
    .line 351
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v8, "edit_playlist"

    .line 365
    .line 366
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v8, "</a></td><td>"

    .line 374
    .line 375
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    if-nez v8, :cond_a

    .line 383
    .line 384
    const-string v8, "<a class=\'link\' href=\'/playlist?id="

    .line 385
    .line 386
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v5, "edit_items"

    .line 400
    .line 401
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    :cond_a
    const-string v5, "</td></tr>"

    .line 412
    .line 413
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :cond_b
    const-string v1, "</table>"

    .line 419
    .line 420
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    goto :goto_a

    .line 424
    :cond_c
    const-string v1, "<div>"

    .line 425
    .line 426
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v1, "playlist_no_created"

    .line 430
    .line 431
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    .line 440
    .line 441
    goto :goto_a

    .line 442
    :goto_9
    sget-object v2, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    .line 443
    .line 444
    const-string v3, "Can\'t show playlists page"

    .line 445
    .line 446
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    const-string v1, "<div class=\'errorBubble\'>"

    .line 450
    .line 451
    const-string v2, "database_error"

    .line 452
    .line 453
    invoke-static {p1, v1, v2, v0}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    :goto_a
    return-void
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
