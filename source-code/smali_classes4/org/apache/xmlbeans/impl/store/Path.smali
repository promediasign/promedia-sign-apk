.class public abstract Lorg/apache/xmlbeans/impl/store/Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;,
        Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;,
        Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;,
        Lorg/apache/xmlbeans/impl/store/Path$PathEngine;
    }
.end annotation


# static fields
.field public static final PATH_DELEGATE_INTERFACE:Ljava/lang/String; = "PATH_DELEGATE_INTERFACE"

.field private static _delIntfName:Ljava/lang/String; = null

.field public static _forceXqrl2002ForXpathXQuery:Ljava/lang/String; = "use xqrl-2002 for xpath"

.field public static _useDelegateForXpath:Ljava/lang/String; = "use delegate for xpath"

.field public static _useXbeanForXpath:Ljava/lang/String; = "use xbean for xpath"

.field public static _useXdkForXpath:Ljava/lang/String; = "use xdk for xpath"

.field public static _useXqrlForXpath:Ljava/lang/String; = "use xqrl for xpath"

.field private static _xbeanPathCache:Ljava/util/Map;

.field private static _xdkAvailable:Z

.field private static _xdkCompilePath:Ljava/lang/reflect/Method;

.field private static _xdkPathCache:Ljava/util/Map;

.field private static _xqrl2002Available:Z

.field private static _xqrl2002CompilePath:Ljava/lang/reflect/Method;

.field private static _xqrl2002PathCache:Ljava/util/Map;

.field private static _xqrlAvailable:Z

.field private static _xqrlCompilePath:Ljava/lang/reflect/Method;

.field private static _xqrlPathCache:Ljava/util/Map;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;


# instance fields
.field protected final _pathKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xbeanPathCache:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkPathCache:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlPathCache:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002PathCache:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkAvailable:Z

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlAvailable:Z

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002Available:Z

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Path"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "META-INF/services/org.apache.xmlbeans.impl.store.PathDelegate.SelectPathInterface"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_delIntfName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_delIntfName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_delIntfName:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
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
.end method

.method public static declared-synchronized compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static createXdkCompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lorg/apache/xmlbeans/impl/store/Path;->_xdkAvailable:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    sget-object v4, Lorg/apache/xmlbeans/impl/store/Path;->_xdkCompilePath:Ljava/lang/reflect/Method;

    if-nez v4, :cond_4

    :try_start_0
    const-string v4, "org.apache.xmlbeans.impl.store.OXQXBXqrlImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "compilePath"

    sget-object v7, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "java.lang.String"

    if-nez v7, :cond_1

    :try_start_1
    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v9, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    if-nez v9, :cond_2

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_2
    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "java.lang.Boolean"

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_3
    new-array v10, v1, [Ljava/lang/Class;

    aput-object v7, v10, v3

    aput-object v9, v10, v2

    aput-object v8, v10, v0

    invoke-virtual {v4, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/store/Path;->_xdkCompilePath:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sput-boolean v3, Lorg/apache/xmlbeans/impl/store/Path;->_xdkAvailable:Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    sput-boolean v3, Lorg/apache/xmlbeans/impl/store/Path;->_xdkAvailable:Z

    return-object v5

    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v2}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    aput-object v4, v1, v0

    :try_start_2
    sget-object p0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkCompilePath:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Path;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createXqrl2002CompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002Available:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    sget-object v4, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002CompilePath:Ljava/lang/reflect/Method;

    if-nez v4, :cond_4

    :try_start_0
    const-string v4, "org.apache.xmlbeans.impl.store.Xqrl2002Impl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "compilePath"

    sget-object v7, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "java.lang.String"

    if-nez v7, :cond_1

    :try_start_1
    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v9, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    if-nez v9, :cond_2

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_2
    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "java.lang.Boolean"

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_3
    new-array v10, v1, [Ljava/lang/Class;

    aput-object v7, v10, v3

    aput-object v9, v10, v2

    aput-object v8, v10, v0

    invoke-virtual {v4, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002CompilePath:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sput-boolean v3, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002Available:Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    sput-boolean v3, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002Available:Z

    return-object v5

    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v2}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    aput-object v4, v1, v0

    :try_start_2
    sget-object p0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002CompilePath:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Path;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createXqrlCompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlAvailable:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    sget-object v4, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlCompilePath:Ljava/lang/reflect/Method;

    if-nez v4, :cond_4

    :try_start_0
    const-string v4, "org.apache.xmlbeans.impl.store.XqrlImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "compilePath"

    sget-object v7, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "java.lang.String"

    if-nez v7, :cond_1

    :try_start_1
    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v9, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    if-nez v9, :cond_2

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_2
    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "java.lang.Boolean"

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_3
    new-array v10, v1, [Ljava/lang/Class;

    aput-object v7, v10, v3

    aput-object v9, v10, v2

    aput-object v8, v10, v0

    invoke-virtual {v4, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlCompilePath:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sput-boolean v3, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlAvailable:Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    sput-boolean v3, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlAvailable:Z

    return-object v5

    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v2}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    aput-object v4, v1, v0

    :try_start_2
    sget-object p0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlCompilePath:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Path;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_4
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static declared-synchronized getCompiledPath(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 7

    .line 1
    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move-object v3, v2

    :goto_0
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    sget-object v5, Lorg/apache/xmlbeans/impl/store/Path;->_xbeanPathCache:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_2

    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_2

    sget-object v5, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlPathCache:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    :cond_2
    if-nez v5, :cond_3

    and-int/lit8 v6, p1, 0x10

    if-eqz v6, :cond_3

    sget-object v5, Lorg/apache/xmlbeans/impl/store/Path;->_xdkPathCache:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    :cond_3
    if-nez v5, :cond_4

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_4

    sget-object v5, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002PathCache:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/store/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz v2, :cond_6

    monitor-exit v0

    return-object v2

    :cond_6
    if-eqz v4, :cond_7

    :try_start_1
    invoke-static {p0, p2, v3}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathXbean(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_7
    if-nez v2, :cond_8

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_8

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathXqrl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_9

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathXdk(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_9
    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    invoke-static {p0, p2, v3, p3}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathDelegate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_a
    if-nez v2, :cond_b

    and-int/lit8 p3, p1, 0x8

    if-eqz p3, :cond_b

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathXqrl2002(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_b
    if-nez v2, :cond_11

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v4, :cond_c

    const-string p3, " Trying XBeans path engine..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    and-int/lit8 p3, p1, 0x2

    if-eqz p3, :cond_d

    const-string p3, " Trying XQRL..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    and-int/lit8 p3, p1, 0x10

    if-eqz p3, :cond_e

    const-string p3, " Trying XDK..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    if-eqz v1, :cond_f

    const-string p3, " Trying delegated path engine..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_10

    const-string p1, " Trying XQRL2002..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " FAILED on "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v0

    throw p0

    :cond_11
    monitor-exit v0

    return-object v2
.end method

.method public static getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_useDelegateForXpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_useXqrlForXpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_useXdkForXpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_useXbeanForXpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_forceXqrl2002ForXpathXQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    const/16 v0, 0x17

    :goto_0
    const-string v1, "PATH_DELEGATE_INTERFACE"

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v1, Lorg/apache/xmlbeans/impl/store/Path;->_delIntfName:Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Path;->getCurrentNodeVar(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPath(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getCompiledPathDelegate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/common/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/common/XPath;
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    const-string v1, "$xmlbeans!ns_boundary"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "$xmlbeans!ns_boundary"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    const-string v2, "$xmlbeans!ns_boundary"

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getCompiledPathXbean(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 2

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;->create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Path;->_xbeanPathCache:Ljava/util/Map;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getCompiledPathXdk(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;->createXdkCompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Path;->_xdkPathCache:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getCompiledPathXqrl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;->createXqrlCompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlPathCache:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getCompiledPathXqrl2002(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;->createXqrl2002CompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002PathCache:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static getCurrentNodeVar(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    const-string v0, "XQUERY_CURRENT_NODE_VAR"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Omit the \'$\' prefix for the current node variable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "this"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path$PathEngine;
.end method
