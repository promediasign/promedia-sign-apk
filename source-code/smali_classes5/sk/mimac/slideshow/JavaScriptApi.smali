.class public Lsk/mimac/slideshow/JavaScriptApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final apiService:Lsk/mimac/slideshow/ApiService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/JavaScriptApi;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/ApiServiceImpl;

    invoke-direct {v0}, Lsk/mimac/slideshow/ApiServiceImpl;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    return-void
.end method

.method private panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "panelName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Error while calling JavaScript API: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public api(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsk/mimac/slideshow/JavaScriptApi;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public clearPlaylist(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "playlist/clear"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/JavaScriptApi;->panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deviceInfo()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/ApiServiceImpl;->getDeviceDataMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "next"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/JavaScriptApi;->panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "pause"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/JavaScriptApi;->panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public resume(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "resume"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/JavaScriptApi;->panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setPlaylist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "panelName"

    .line 2
    .line 3
    const-string v1, "playlistName"

    .line 4
    .line 5
    invoke-static {v0, p1, v1, p2}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :try_start_0
    iget-object p2, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    .line 10
    .line 11
    const-string v0, "playlist/set"

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p2, v0, p1, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    sget-object p2, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    .line 20
    .line 21
    const-string v0, "Error while calling JavaScript API: {}"

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
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
.end method

.method public showFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "panelName"

    const-string v1, "file"

    .line 1
    invoke-static {v0, p1, v1, p2}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 2
    const-string p2, "length"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p2, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    const-string p3, "showFile"

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Error while calling JavaScript API: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public volume(I)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vol"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    const-string v1, "volume"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error while calling JavaScript API: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
