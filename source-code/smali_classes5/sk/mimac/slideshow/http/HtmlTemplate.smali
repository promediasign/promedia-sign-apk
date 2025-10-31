.class public Lsk/mimac/slideshow/http/HtmlTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RESOURCE_QUERY_TAG:Ljava/lang/String;


# instance fields
.field private final isLocalhost:Z

.field private final tunneled:Z

.field private final user:Lsk/mimac/slideshow/database/entity/AccessUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->BUILD_DATE:Ljava/lang/String;

    sput-object v0, Lsk/mimac/slideshow/http/HtmlTemplate;->RESOURCE_QUERY_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    iput-boolean p2, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->isLocalhost:Z

    iput-boolean p3, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->tunneled:Z

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\'content-type\' content=\'text/html; charset=UTF-8\'/>\n<title>"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    .line 9
    .line 10
    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " | Promedia Digital Signage</title>\n"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->isLocalhost:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v2, "<style>body {margin-bottom: 90px !important;}</style>\n"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string v2, "<link rel=\'stylesheet\' href=\'/web/style.min.css?t="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v2, Lsk/mimac/slideshow/http/HtmlTemplate;->RESOURCE_QUERY_TAG:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "\' type=\'text/css\'/>\n<link rel=\'stylesheet\' href=\'/web/toastui-calendar.min.css?t="

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, "\' type=\'text/css\'/>\n<script type=\'text/javascript\'>\nvar choosen_language = \'"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lsk/mimac/slideshow/localization/Language;->getCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, "\';</script>\n<script src=\'/web/jquery.js?t=1\' type=\'text/javascript\'></script><script src=\'/web/jquery-ui.js?t=1\' type=\'text/javascript\'></script><script src=\'/web/script.min.js?t="

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, "\' type=\'text/javascript\'></script>\n<meta name=\'viewport\' content=\'width=device-width\'>\n</head>\n<body>\n<div class=\'header\'> <h1>Promedia Digital Signage management</h1><h2>"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-boolean v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->tunneled:Z

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    const-string v1, " <i>(tunneled)</i>"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_1
    const-string v1, "</h2>"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->isLocalhost:Z

    .line 100
    .line 101
    if-nez v1, :cond_2

    .line 102
    .line 103
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    const-string v1, "<div class=\'user-box\'><div>"

    .line 108
    .line 109
    const-string v2, "user"

    .line 110
    .line 111
    const-string v3, ": <b>"

    .line 112
    .line 113
    invoke-static {v0, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 117
    .line 118
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v1, "</b><br>\n<a href=\'/logout\' class=\'logout\'>"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, "logout"

    .line 131
    .line 132
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, "</a></div></div>\n"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_2
    const-string v1, "</div><div class=\'dropdownmenu\'>\n<span class=\'dropdownmenu-button\'>Menu</span>\n<ul id=\'menu\'>\n"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 150
    .line 151
    if-eqz v1, :cond_9

    .line 152
    .line 153
    const-string v1, "<li class=\'mainMenu\'><a href=\'/\'>"

    .line 154
    .line 155
    const-string v2, "home"

    .line 156
    .line 157
    const-string v3, "</a>\n</li>\n"

    .line 158
    .line 159
    invoke-static {v0, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 163
    .line 164
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    const-string v1, "<li class=\'mainMenu\'>\n<a href=\'/screen_layout\'>"

    .line 171
    .line 172
    const-string v2, "screen_layouts"

    .line 173
    .line 174
    invoke-static {v0, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 178
    .line 179
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_4

    .line 184
    .line 185
    const-string v1, "<li class=\'mainMenu\'>\n<a href=\'/playlists\'>"

    .line 186
    .line 187
    const-string v2, "playlists"

    .line 188
    .line 189
    const-string v4, "</a>\n</li>\n<li class=\'mainMenu\'>\n<a href=\'/items\'>"

    .line 190
    .line 191
    const-string v5, "item"

    .line 192
    .line 193
    invoke-static {v0, v1, v2, v4, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :cond_4
    const-string v1, "<li class=\'mainMenu\'>\n<a href=\'/file_manager\'>"

    .line 200
    .line 201
    const-string v2, "file_manager"

    .line 202
    .line 203
    const-string v4, "</a>\n</li>\n<li class=\'mainMenu\'>\n<a href=\'#\'>"

    .line 204
    .line 205
    const-string v5, "tools"

    .line 206
    .line 207
    invoke-static {v0, v1, v2, v4, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v1, "</a>\n<ul>\n<li>\n<a href=\'/template\'>"

    .line 211
    .line 212
    const-string v2, "show_message"

    .line 213
    .line 214
    const-string v4, "</a>\n</li>\n<li>\n<a href=\'/rss\'>"

    .line 215
    .line 216
    const-string v5, "rss_messages"

    .line 217
    .line 218
    invoke-static {v0, v1, v2, v4, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 225
    .line 226
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    const-string v1, "<li>\n<a href=\'/grabber\'>"

    .line 233
    .line 234
    const-string v2, "grabber"

    .line 235
    .line 236
    invoke-static {v0, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_5
    const-string v1, "<li>\n<a href=\'/upload\'>"

    .line 240
    .line 241
    const-string v2, "upload_file"

    .line 242
    .line 243
    const-string v4, "</a>\n</li>\n</ul>\n</li>\n"

    .line 244
    .line 245
    invoke-static {v0, v1, v2, v4}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 249
    .line 250
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    const-string v2, "<li class=\'mainMenu\'>\n<a href=\'#\'>"

    .line 255
    .line 256
    if-eqz v1, :cond_7

    .line 257
    .line 258
    const-string v1, "settings"

    .line 259
    .line 260
    const-string v5, "</a>\n<ul>\n"

    .line 261
    .line 262
    invoke-static {v0, v2, v1, v5}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 266
    .line 267
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_6

    .line 272
    .line 273
    const-string v1, "<li>\n<li>\n<a href=\'/settings\'>"

    .line 274
    .line 275
    const-string v5, "device_settings"

    .line 276
    .line 277
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/users\'>"

    .line 278
    .line 279
    const-string v7, "users"

    .line 280
    .line 281
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/backup\'>"

    .line 285
    .line 286
    const-string v5, "backup_title"

    .line 287
    .line 288
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/update\'>"

    .line 289
    .line 290
    const-string v7, "update_app"

    .line 291
    .line 292
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/device_owner\'>"

    .line 296
    .line 297
    const-string v5, "device_admin"

    .line 298
    .line 299
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/communication\'>"

    .line 300
    .line 301
    const-string v7, "other_devices"

    .line 302
    .line 303
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/triggers\'>"

    .line 307
    .line 308
    const-string v5, "triggers"

    .line 309
    .line 310
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/shell\'>"

    .line 311
    .line 312
    const-string v7, "shell_console"

    .line 313
    .line 314
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/database\'>"

    .line 318
    .line 319
    const-string v5, "database_connect"

    .line 320
    .line 321
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/fonts\'>"

    .line 322
    .line 323
    const-string v7, "fonts"

    .line 324
    .line 325
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/key_mapping\'>"

    .line 329
    .line 330
    const-string v5, "key_mapping"

    .line 331
    .line 332
    invoke-static {v0, v1, v5, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_6
    const-string v1, "<li>\n<a href=\'/password\'>"

    .line 336
    .line 337
    const-string v3, "password_change"

    .line 338
    .line 339
    const-string v5, "</a>\n</li>\n<li>\n<a href=\'/reboot\'>"

    .line 340
    .line 341
    const-string v6, "reboot_reload"

    .line 342
    .line 343
    invoke-static {v0, v1, v3, v5, v6}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    :cond_7
    const-string v1, "information"

    .line 350
    .line 351
    const-string v3, "</a>\n<ul>\n<li>\n<a href=\'/statistic\'>"

    .line 352
    .line 353
    const-string v5, "statistics"

    .line 354
    .line 355
    invoke-static {v0, v2, v1, v3, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/screenshot\'>Screenshot</a>\n</li>\n"

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 364
    .line 365
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_8

    .line 370
    .line 371
    const-string v1, "<li>\n<a href=\'/log\'>Log</a>\n</li>\n<li>\n<a href=\'/logcat\'>Logcat</a>\n</li>\n<li>\n<a href=\'/reporter\'>"

    .line 372
    .line 373
    const-string v2, "reporter"

    .line 374
    .line 375
    const-string v3, "</a>\n</li>\n<li>\n<a href=\'/benchmark\'>Benchmark</a>\n</li>\n<li>\n<a href=\'/face_detection\'>"

    .line 376
    .line 377
    const-string v5, "face_detection"

    .line 378
    .line 379
    invoke-static {v0, v1, v2, v3, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/osc/status\'>Open Sound Control</a>\n</li>\n"

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    :cond_8
    const-string v1, "<li>\n<a href=\'/about_hardware\'>"

    .line 388
    .line 389
    const-string v2, "about_device"

    .line 390
    .line 391
    const-string v3, "</a>\n</li>\n<li>\n<a href=\'/about_software\'>"

    .line 392
    .line 393
    const-string v5, "about_software"

    .line 394
    .line 395
    invoke-static {v0, v1, v2, v3, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    :cond_9
    const-string v1, "</ul>\n</div>\n<div id=\'main\' class=\'main\'>\n"

    .line 402
    .line 403
    const-string v2, "\n</div>\n<div id=\'ajaxLoading\'><img src=\'/web/ajax-loader.gif?t=1\'/></div>\n<div id=\'dialog\'></div>\n</body>\n</html>"

    .line 404
    .line 405
    invoke-static {v0, v1, p1, v2}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    return-object p1
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
