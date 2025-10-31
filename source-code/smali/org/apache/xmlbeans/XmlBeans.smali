.class public final Lorg/apache/xmlbeans/XmlBeans;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static NO_TYPE:Lorg/apache/xmlbeans/SchemaType; = null

.field private static XMLBEANS_TITLE:Ljava/lang/String; = "org.apache.xmlbeans"

.field private static XMLBEANS_VENDOR:Ljava/lang/String; = "Apache Software Foundation"

.field private static XMLBEANS_VERSION:Ljava/lang/String; = "2.6.0"

.field private static final _compilationMethod:Ljava/lang/reflect/Method;

.field private static final _getBuiltinSchemaTypeSystemMethod:Ljava/lang/reflect/Method;

.field private static final _getContextTypeLoaderMethod:Ljava/lang/reflect/Method;

.field private static final _getNoTypeMethod:Ljava/lang/reflect/Method;

.field private static final _nodeToCursorMethod:Ljava/lang/reflect/Method;

.field private static final _nodeToXmlObjectMethod:Ljava/lang/reflect/Method;

.field private static final _nodeToXmlStreamMethod:Ljava/lang/reflect/Method;

.field private static final _pathResourceLoaderConstructor:Ljava/lang/reflect/Constructor;

.field private static final _streamToNodeMethod:Ljava/lang/reflect/Method;

.field private static final _threadLocalLoaderQNameCache:Ljava/lang/ThreadLocal;

.field private static final _typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

.field static synthetic array$Ljava$io$File:Ljava/lang/Class;

.field static synthetic array$Lorg$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

.field static synthetic array$Lorg$apache$xmlbeans$XmlObject:Ljava/lang/Class;

.field static synthetic class$java$lang$ClassLoader:Ljava/lang/Class;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$javax$xml$stream$XMLStreamReader:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$BindingConfig:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$Filer:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$ResourceLoader:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$XmlObject:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

.field static synthetic class$org$w3c$dom$Node:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.XmlBeans"

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_TITLE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_VERSION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVendor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_VENDOR:Ljava/lang/String;

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/XmlBeans$1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlBeans$1;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_threadLocalLoaderQNameCache:Ljava/lang/ThreadLocal;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildGetContextTypeLoaderMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getContextTypeLoaderMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildGetBuiltinSchemaTypeSystemMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getBuiltinSchemaTypeSystemMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildGetNoTypeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getNoTypeMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildTypeLoaderBuilderMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildCompilationMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_compilationMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeToCursorMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToCursorMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeToXmlObjectMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToXmlObjectMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeToXmlStreamMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToXmlStreamMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildStreamToNodeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_streamToNodeMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildPathResourceLoaderConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_pathResourceLoaderConstructor:Ljava/lang/reflect/Constructor;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getNoType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->NO_TYPE:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method

.method private static final buildCompilationMethod()Ljava/lang/reflect/Method;
    .locals 9

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$java$lang$String:Ljava/lang/Class;

    :cond_0
    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.xmlbeans.SchemaTypeSystem"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_1
    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->array$Lorg$apache$xmlbeans$XmlObject:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "[Lorg.apache.xmlbeans.XmlObject;"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->array$Lorg$apache$xmlbeans$XmlObject:Ljava/lang/Class;

    :cond_2
    sget-object v3, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$BindingConfig:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string v3, "org.apache.xmlbeans.BindingConfig"

    invoke-static {v3}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$BindingConfig:Ljava/lang/Class;

    :cond_3
    sget-object v4, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

    if-nez v4, :cond_4

    const-string v4, "org.apache.xmlbeans.SchemaTypeLoader"

    invoke-static {v4}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

    :cond_4
    sget-object v5, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$Filer:Ljava/lang/Class;

    if-nez v5, :cond_5

    const-string v5, "org.apache.xmlbeans.Filer"

    invoke-static {v5}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$Filer:Ljava/lang/Class;

    :cond_5
    sget-object v6, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

    if-nez v6, :cond_6

    const-string v6, "org.apache.xmlbeans.XmlOptions"

    invoke-static {v6}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

    :cond_6
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemCompiler"

    const-string v1, "compile"

    invoke-static {v0, v1, v7}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.XmlBeans"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "Cannot load constructor for "

    .line 33
    .line 34
    const-string v2, ": verify that xbean.jar is on the classpath"

    .line 35
    .line 36
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p1}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    throw p0
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
.end method

.method private static final buildGetBuiltinSchemaTypeSystemMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.schema.BuiltinSchemaTypeSystem"

    const-string v1, "get"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNoArgMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static buildGetContextTypeLoaderMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeLoaderImpl"

    const-string v1, "getContextTypeLoader"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNoArgMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildGetNoTypeMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.schema.BuiltinSchemaTypeSystem"

    const-string v1, "getNoType"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNoArgMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.XmlBeans"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Cannot load "

    .line 33
    .line 34
    const-string v1, ": verify that xbean.jar is on the classpath"

    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    throw p0
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
.end method

.method private static final buildNoArgMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static final buildNodeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$w3c$dom$Node:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.w3c.dom.Node"

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$w3c$dom$Node:Ljava/lang/Class;

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static final buildNodeToCursorMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    const-string v1, "nodeToCursor"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildNodeToXmlObjectMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    const-string v1, "nodeToXmlObject"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildNodeToXmlStreamMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    const-string v1, "nodeToXmlStream"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildPathResourceLoaderConstructor()Ljava/lang/reflect/Constructor;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->array$Ljava$io$File:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "[Ljava.io.File;"

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->array$Ljava$io$File:Ljava/lang/Class;

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "org.apache.xmlbeans.impl.schema.PathResourceLoader"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private static final buildStreamToNodeMethod()Ljava/lang/reflect/Method;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$javax$xml$stream$XMLStreamReader:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.poi.javax.xml.stream.XMLStreamReader"

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$javax$xml$stream$XMLStreamReader:Ljava/lang/Class;

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    const-string v2, "streamToNode"

    invoke-static {v0, v2, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildTypeLoaderBuilderMethod()Ljava/lang/reflect/Method;
    .locals 5

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->array$Lorg$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "[Lorg.apache.xmlbeans.SchemaTypeLoader;"

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->array$Lorg$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

    :cond_0
    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$ResourceLoader:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.xmlbeans.ResourceLoader"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$ResourceLoader:Ljava/lang/Class;

    :cond_1
    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$java$lang$ClassLoader:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.ClassLoader"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$java$lang$ClassLoader:Ljava/lang/Class;

    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeLoaderImpl"

    const-string v1, "build"

    invoke-static {v0, v1, v3}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object p0
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
.end method

.method public static compilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/XmlBeans;->compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compileQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/XmlBeans;->compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compileXmlBeans(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_compilationMethod:Ljava/lang/reflect/Method;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p4

    :goto_0
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeSystem;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlBeans;->wrappedException(Ljava/lang/Throwable;)Lorg/apache/xmlbeans/XmlException;

    move-result-object p0

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No access to SchemaTypeLoaderImpl.forSchemaXml(): verify that version of xbean.jar is correct"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compileXsd(Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 7

    .line 1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/XmlBeans;->compileXmlBeans(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p0

    return-object p0
.end method

.method public static compileXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 7

    .line 2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/XmlBeans;->compileXmlBeans(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p0

    return-object p0
.end method

.method public static getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getBuiltinSchemaTypeSystemMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaTypeSystem;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No access to BuiltinSchemaTypeSystem.get(): verify that version of xbean.jar is correct"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getContextTypeLoaderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaTypeLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No access to SchemaTypeLoaderImpl.getContextTypeLoader(): verify that version of xbean.jar is correct"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static getNoType()Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getNoTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No access to SchemaTypeLoaderImpl.getContextTypeLoader(): verify that version of xbean.jar is correct"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getQName(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getQNameCache()Lorg/apache/xmlbeans/QNameCache;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public static getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getQNameCache()Lorg/apache/xmlbeans/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public static getQNameCache()Lorg/apache/xmlbeans/QNameCache;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_threadLocalLoaderQNameCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/QNameCache;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/QNameCache;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/QNameCache;-><init>(I)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static final getTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_TITLE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getVendor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_VENDOR:Ljava/lang/String;

    return-object v0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static loadXsd([Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/XmlBeans;->loadXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    return-object p0
.end method

.method public static loadXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 7

    .line 2
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lorg/apache/xmlbeans/XmlBeans;->_compilationMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v5

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v3, v6, v1

    aput-object p0, v6, v0

    const/4 p0, 0x3

    aput-object v3, v6, p0

    const/4 p0, 0x4

    aput-object v5, v6, p0

    const/4 p0, 0x5

    aput-object v3, v6, p0

    const/4 p0, 0x6

    aput-object p1, v6, p0

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeSystem;

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p1

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderUnion([Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlBeans;->wrappedException(Ljava/lang/Throwable;)Lorg/apache/xmlbeans/XmlException;

    move-result-object p0

    throw p0

    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No access to SchemaTypeLoaderImpl.forSchemaXml(): verify that version of xbean.jar is correct"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static nodeToCursor(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToCursorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to nodeToCursor verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static nodeToXmlObject(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToXmlObjectMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to nodeToXmlObject verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static nodeToXmlStreamReader(Lorg/w3c/dom/Node;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToXmlStreamMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to nodeToXmlStreamReader verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static resourceLoaderForPath([Ljava/io/File;)Lorg/apache/xmlbeans/ResourceLoader;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_pathResourceLoaderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/ResourceLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to SchemaTypeLoaderImpl: verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static streamToNode(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/w3c/dom/Node;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_streamToNodeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to streamToNode verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeForClass(Ljava/lang/Class;)Lorg/apache/xmlbeans/SchemaType;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlObject:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.XmlObject"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlObject:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static typeLoaderForClassLoader(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to SchemaTypeLoaderImpl: verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeLoaderForResource(Lorg/apache/xmlbeans/ResourceLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object v1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to SchemaTypeLoaderImpl: verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeLoaderUnion([Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    array-length v2, p0

    if-ne v2, v1, :cond_0

    aget-object p0, p0, v0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->_typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    aput-object v3, v4, v1

    const/4 p0, 0x2

    aput-object v3, v4, p0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to SchemaTypeLoaderImpl: verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 4

    .line 1
    const-string v0, ".TypeSystemHolder. Please verify the version of xbean.jar is correct."

    .line 2
    .line 3
    const-string v1, "SchemaTypeSystem is null for field typeSystem on class with name "

    .line 4
    .line 5
    const-string v2, ".TypeSystemHolder"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v2, "typeSystem"

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeSystem;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuffer;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :catch_2
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    const-string v1, "Field typeSystem on class "

    .line 72
    .line 73
    const-string v2, ".TypeSystemHolderis not accessible. Please verify the version of xbean.jar is correct."

    .line 74
    .line 75
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    throw p0

    .line 87
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    const-string v2, "Cannot find field typeSystem on class "

    .line 90
    .line 91
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    throw p0

    .line 103
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    const-string v1, "Cannot load SchemaTypeSystem. Unable to load class with name "

    .line 106
    .line 107
    const-string v2, ".TypeSystemHolder. Make sure the generated binary files are on the classpath."

    .line 108
    .line 109
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    throw p0
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
.end method

.method private static wrappedException(Ljava/lang/Throwable;)Lorg/apache/xmlbeans/XmlException;
    .locals 2

    instance-of v0, p0, Lorg/apache/xmlbeans/XmlException;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/XmlException;

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
