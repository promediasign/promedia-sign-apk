.class public Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;
    }
.end annotation


# static fields
.field private static final MAP_COMPATIBILITY_CONFIG_URIS:Ljava/util/Map;

.field static synthetic class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$xb$xsdschema$SchemaDocument:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->MAP_COMPATIBILITY_CONFIG_URIS:Ljava/util/Map;

    const-string v1, "http://www.bea.com/2002/09/xbean/config"

    const-string v2, "http://xml.apache.org/xmlbeans/2004/02/xbean/config"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSchema(Ljava/lang/String;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;ZLjava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Loading schema file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addInfo(Ljava/util/Collection;Ljava/lang/String;)V

    new-instance p0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateTreatLaxAsSkip()Lorg/apache/xmlbeans/XmlOptions;

    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static addWsdlSchemas(Ljava/lang/String;Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;ZLjava/util/List;)V
    .locals 10

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->wsdlContainsEncoded(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v0

    const/16 v1, 0x3c

    const-string v2, "The WSDL "

    if-eqz v0, :cond_0

    const-string v0, " uses SOAP encoding. SOAP encoding is not compatible with literal XML Schema."

    .line 1
    invoke-static {v2, p0, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p2, v0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addWarning(Ljava/util/Collection;Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "Loading wsdl file "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addInfo(Ljava/util/Collection;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateTreatLaxAsSkip()Lorg/apache/xmlbeans/XmlOptions;

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;->getDefinitions()Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions;->getTypesArray()[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, p3

    if-ge v4, v6, :cond_5

    aget-object v6, p3, v4

    const-string v7, "declare namespace xs=\"http://www.w3.org/2001/XMLSchema\" xs:schema"

    invoke-interface {v6, v7}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6

    array-length v7, v6

    if-nez v7, :cond_2

    const-string v6, " did not have any schema documents in namespace \'http://www.w3.org/2001/XMLSchema\'"

    .line 3
    invoke-static {v2, p0, v6}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {p2, v6, v1, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->addWarning(Ljava/util/Collection;Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    aget-object v8, v6, v7

    instance-of v9, v8, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    if-eqz v9, :cond_3

    invoke-interface {v8, v0}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    aget-object v8, v6, v7

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    const-string p3, "Processing "

    invoke-direct {p1, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, " schema(s) in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addInfo(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
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

.method public static compile(Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;)Z
    .locals 47

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getXsdFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getWsdlFiles()[Ljava/io/File;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getUrlFiles()[Ljava/net/URL;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getJavaFiles()[Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getConfigFiles()[Ljava/io/File;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getClasspath()[Ljava/io/File;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getOutputJar()Ljava/io/File;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getSrcDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getClassesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getCompiler()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getJavaSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getMemoryInitialSize()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getMemoryMaximumSize()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isNojavac()Z

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isDebug()Z

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isVerbose()Z

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isQuiet()Z

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isDownload()Z

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isNoUpa()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isNoPvr()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isNoAnn()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isNoVDoc()Z

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isNoExt()Z

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isIncrementalSrcGen()Z

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getErrorListener()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getRepackage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    sget-object v17, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    sput-object v17, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    sget-object v17, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    if-nez v17, :cond_0

    const-string v17, "org.apache.xmlbeans.SchemaTypeSystem"

    invoke-static/range {v17 .. v17}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    sput-object v17, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v17

    move-object/from16 v21, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v31, v14

    new-instance v14, Lrepackage/Repackager;

    invoke-direct {v14, v7}, Lrepackage/Repackager;-><init>(Ljava/lang/String;)V

    move-object/from16 v32, v7

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Lrepackage/Repackager;->repackage(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x2e

    move/from16 v33, v10

    const/16 v10, 0x5f

    invoke-virtual {v7, v14, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "\n\n\n"

    const-string v14, ".SchemaCompiler  Metadata LOAD:"

    .line 1
    invoke-static {v10, v11, v14}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 2
    sget-object v11, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, " GEN:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v11, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v32, v7

    move/from16 v33, v10

    move-object/from16 v21, v11

    move-object/from16 v31, v14

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getSchemaCodePrinter()Lorg/apache/xmlbeans/SchemaCodePrinter;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getExtensions()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getMdefNamespaces()Ljava/util/Set;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getCatalogFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->resolverForCatalog(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;

    move-result-object v7

    :goto_1
    move-object/from16 v35, v7

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v7

    goto :goto_1

    :goto_2
    if-eqz v13, :cond_12

    if-eqz v12, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v7, "user.dir"

    invoke-static {v7}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    const/16 v39, 0x0

    if-eqz v15, :cond_4

    new-instance v7, Lorg/apache/xmlbeans/impl/schema/PathResourceLoader;

    invoke-direct {v7, v15}, Lorg/apache/xmlbeans/impl/schema/PathResourceLoader;-><init>([Ljava/io/File;)V

    move-object/from16 v40, v7

    goto :goto_3

    :cond_4
    move-object/from16 v40, v39

    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v10, "schema"

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v10, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "/src"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    new-instance v10, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;

    move-object/from16 v17, v10

    invoke-direct {v10, v6}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;-><init>(Ljava/util/Collection;)V

    move-object/from16 v6, v22

    move-object/from16 v41, v32

    move-object/from16 v7, v40

    move-object/from16 v32, v10

    move/from16 v10, v33

    move-object/from16 v42, v11

    move-object/from16 v33, v21

    move/from16 v11, v16

    move-object/from16 v43, v12

    move/from16 v12, v19

    move-object/from16 v44, v13

    move/from16 v13, v20

    move-object/from16 v46, v14

    move-object/from16 v45, v31

    move-object/from16 v14, v34

    move-object/from16 v31, v15

    move-object v15, v0

    move-object/from16 v16, v38

    move-object/from16 v19, v35

    move-object/from16 v20, v31

    invoke-static/range {v1 .. v21}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->loadTypeSystem(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;[Ljava/net/URL;[Ljava/io/File;[Ljava/io/File;Lorg/apache/xmlbeans/ResourceLoader;ZZZZZZLjava/util/Set;Ljava/io/File;Ljava/util/Map;Ljava/util/Collection;Ljava/io/File;Lorg/xml/sax/EntityResolver;[Ljava/io/File;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-virtual/range {v32 .. v32}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->hasError()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, " seconds"

    const-wide v16, 0x408f400000000000L    # 1000.0

    if-nez v29, :cond_5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Time to build schema type system: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long v2, v2, v36

    long-to-double v2, v2

    div-double v2, v2, v16

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v5, v41

    if-nez v5, :cond_6

    move-object/from16 v9, v39

    goto :goto_4

    :cond_6
    new-instance v6, Lrepackage/Repackager;

    invoke-direct {v6, v5}, Lrepackage/Repackager;-><init>(Ljava/lang/String;)V

    move-object v9, v6

    :goto_4
    new-instance v5, Lorg/apache/xmlbeans/impl/util/FilerImpl;

    move-object v6, v5

    move-object/from16 v7, v43

    move-object/from16 v8, v44

    move/from16 v10, v28

    move/from16 v11, v30

    invoke-direct/range {v6 .. v11}, Lorg/apache/xmlbeans/impl/util/FilerImpl;-><init>(Ljava/io/File;Ljava/io/File;Lrepackage/Repackager;ZZ)V

    new-instance v6, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v6}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    move-object/from16 v7, v46

    if-eqz v7, :cond_7

    invoke-virtual {v6, v7}, Lorg/apache/xmlbeans/XmlOptions;->setSchemaCodePrinter(Lorg/apache/xmlbeans/SchemaCodePrinter;)Lorg/apache/xmlbeans/XmlOptions;

    :cond_7
    move-object/from16 v11, v33

    if-eqz v11, :cond_8

    invoke-virtual {v6, v11}, Lorg/apache/xmlbeans/XmlOptions;->setGenerateJavaVersion(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    :cond_8
    invoke-interface {v1, v5}, Lorg/apache/xmlbeans/SchemaTypeSystem;->save(Lorg/apache/xmlbeans/Filer;)V

    invoke-static {v1, v5, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler;->generateTypes(Lorg/apache/xmlbeans/SchemaTypeSystem;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v6

    and-int/2addr v0, v6

    if-eqz v30, :cond_9

    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/util/FilerImpl;->getSourceFiles()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v7, v44

    invoke-static {v7, v7, v6}, Lorg/apache/xmlbeans/impl/tool/SchemaCodeGenerator;->deleteObsoleteFiles(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V

    :cond_9
    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-nez v29, :cond_a

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Time to generate code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long/2addr v6, v2

    long-to-double v2, v6

    div-double v2, v2, v16

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    if-eqz v0, :cond_e

    if-nez v26, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/util/FilerImpl;->getSourceFiles()Ljava/util/List;

    move-result-object v6

    if-eqz v22, :cond_b

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    move-object/from16 v7, v43

    move-object/from16 v8, v31

    move/from16 v9, v27

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move/from16 v14, v29

    move/from16 v15, v28

    invoke-static/range {v6 .. v15}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->externalCompile(Ljava/util/List;Ljava/io/File;[Ljava/io/File;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_c

    const/4 v0, 0x0

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isQuiet()Z

    move-result v5

    if-nez v5, :cond_d

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Time to compile code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long/2addr v7, v2

    long-to-double v2, v7

    div-double v2, v2, v16

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    if-eqz v0, :cond_e

    move-object/from16 v2, v45

    if-eqz v2, :cond_e

    :try_start_0
    new-instance v3, Lorg/apache/xmlbeans/impl/common/JarHelper;

    invoke-direct {v3}, Lorg/apache/xmlbeans/impl/common/JarHelper;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, v43

    :try_start_1
    invoke-virtual {v3, v4, v2}, Lorg/apache/xmlbeans/impl/common/JarHelper;->jarDir(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v4, v43

    :goto_5
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "IO Error "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->isQuiet()Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Compiled types to: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object/from16 v4, v43

    :cond_f
    :goto_7
    if-nez v0, :cond_10

    if-nez v29, :cond_10

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "BUILD FAILED"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    move-object/from16 v2, v42

    invoke-static {v2, v1, v4}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->runExtensions(Ljava/util/List;Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/io/File;)V

    :goto_8
    if-eqz v40, :cond_11

    invoke-interface/range {v40 .. v40}, Lorg/apache/xmlbeans/ResourceLoader;->close()V

    :cond_11
    return v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src and class gen directories may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadTypeSystem(Ljava/lang/String;[Ljava/io/File;[Ljava/io/File;[Ljava/net/URL;[Ljava/io/File;[Ljava/io/File;Lorg/apache/xmlbeans/ResourceLoader;ZZZZZZLjava/util/Set;Ljava/io/File;Ljava/util/Map;Ljava/util/Collection;Ljava/io/File;Lorg/xml/sax/EntityResolver;[Ljava/io/File;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p11

    move-object/from16 v6, p13

    move-object/from16 v7, p18

    move-object/from16 v8, p20

    const-string v13, "xsd config"

    const-string v14, "wsdl"

    new-instance v15, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;

    move-object/from16 v0, p16

    invoke-direct {v15, v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->start()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0, v15}, Lorg/apache/xmlbeans/impl/schema/StscState;->setErrorListener(Ljava/util/Collection;)V

    sget-object v0, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->class$org$apache$xmlbeans$impl$xb$xsdschema$SchemaDocument:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.SchemaDocument"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->class$org$apache$xmlbeans$impl$xb$xsdschema$SchemaDocument:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderForClassLoader(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "cannot.load.file"

    const-string v10, "invalid.document.type"

    if-eqz v1, :cond_2

    const/4 v8, 0x0

    :goto_0
    array-length v0, v1

    if-ge v8, v0, :cond_2

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/XmlOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)Lorg/apache/xmlbeans/XmlOptions;

    aget-object v6, v1, v8
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v13

    const/4 v13, 0x0

    :try_start_1
    invoke-interface {v9, v6, v13, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v6, v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    if-nez v6, :cond_1

    aget-object v6, v1, v8

    const/4 v13, 0x2

    new-array v4, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v4, v13

    const-string v6, "schema"

    const/4 v13, 0x1

    aput-object v6, v4, v13

    invoke-static {v15, v10, v4, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    const/4 v6, 0x1

    goto :goto_4

    :cond_1
    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-static {v4, v0, v15, v5, v12}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->addSchema(Ljava/lang/String;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;ZLjava/util/List;)V
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v6, 0x1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v17, v13

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v17, v13

    goto :goto_1

    :goto_3
    aget-object v4, v1, v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    new-array v13, v6, [Ljava/lang/Object;

    const-string v6, "xsd"

    const/16 v16, 0x0

    aput-object v6, v13, v16

    const/4 v6, 0x1

    aput-object v4, v13, v6

    const/4 v4, 0x2

    aput-object v0, v13, v4

    aget-object v0, v1, v8

    invoke-static {v15, v11, v13, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Ljava/io/File;)V

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getError()Lorg/apache/xmlbeans/XmlError;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v8, v6

    move-object/from16 v4, p4

    move-object/from16 v6, p13

    move-object/from16 v13, v17

    goto :goto_0

    :cond_2
    move-object/from16 v17, v13

    const-string v1, "http://www.apache.org/internal/xmlbeans/wsdlsubst"

    const-string v4, "http://schemas.xmlsoap.org/wsdl/"

    if-eqz v2, :cond_4

    const/4 v6, 0x0

    :goto_6
    array-length v0, v2

    if-ge v6, v0, :cond_4

    :try_start_2
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v4, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/xmlbeans/XmlOptions;->setLoadSubstituteNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/XmlOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)Lorg/apache/xmlbeans/XmlOptions;

    aget-object v8, v2, v6

    const/4 v13, 0x0

    invoke-interface {v9, v8, v13, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v8, v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;

    if-nez v8, :cond_3

    aget-object v8, v2, v6
    :try_end_2
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v18, v9

    const/4 v13, 0x2

    :try_start_3
    new-array v9, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v9, v13

    const/4 v8, 0x1

    aput-object v14, v9, v8

    invoke-static {v15, v10, v9, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    :goto_7
    const/4 v9, 0x1

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_7

    :cond_3
    move-object/from16 v18, v9

    aget-object v8, v2, v6

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;

    invoke-static {v8, v0, v15, v5, v12}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->addWsdlSchemas(Ljava/lang/String;Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;ZLjava/util/List;)V
    :try_end_3
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_8
    const/4 v9, 0x1

    goto :goto_b

    :goto_9
    aget-object v8, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v13, v9

    const/4 v9, 0x1

    aput-object v8, v13, v9

    const/4 v8, 0x2

    aput-object v0, v13, v8

    aget-object v0, v2, v6

    invoke-static {v15, v11, v13, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Ljava/io/File;)V

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getError()Lorg/apache/xmlbeans/XmlError;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr v6, v9

    move-object/from16 v9, v18

    goto :goto_6

    :cond_4
    move-object/from16 v18, v9

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    :goto_c
    array-length v0, v3

    if-ge v2, v0, :cond_7

    :try_start_4
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v4, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/xmlbeans/XmlOptions;->setLoadSubstituteNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/XmlOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)Lorg/apache/xmlbeans/XmlOptions;

    aget-object v6, v3, v2
    :try_end_4
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    move-object/from16 v8, v18

    const/4 v9, 0x0

    :try_start_5
    invoke-interface {v8, v6, v9, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v6, v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;

    if-eqz v6, :cond_5

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;

    invoke-static {v6, v0, v15, v5, v12}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->addWsdlSchemas(Ljava/lang/String;Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;ZLjava/util/List;)V

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    :goto_d
    const/4 v9, 0x1

    goto :goto_10

    :cond_5
    instance-of v6, v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    if-eqz v6, :cond_6

    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-static {v6, v0, v15, v5, v12}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->addSchema(Ljava/lang/String;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;ZLjava/util/List;)V

    goto :goto_e

    :cond_6
    aget-object v6, v3, v2

    const/4 v9, 0x2

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v13, v9

    const-string v6, "wsdl or schema"

    const/4 v9, 0x1

    aput-object v6, v13, v9

    invoke-static {v15, v10, v13, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V
    :try_end_5
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    :goto_e
    const/4 v9, 0x1

    goto :goto_11

    :catch_a
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_f

    :catch_b
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_d

    :goto_f
    aget-object v6, v3, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    new-array v13, v9, [Ljava/lang/Object;

    const-string v9, "url"

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v9, 0x1

    aput-object v6, v13, v9

    const/4 v6, 0x2

    aput-object v0, v13, v6

    aget-object v0, v3, v2

    invoke-static {v15, v11, v13, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Ljava/net/URL;)V

    goto :goto_11

    :goto_10
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getError()Lorg/apache/xmlbeans/XmlError;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->add(Ljava/lang/Object;)Z

    :goto_11
    add-int/2addr v2, v9

    move-object/from16 v18, v8

    goto/16 :goto_c

    :cond_7
    move-object/from16 v8, v18

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-object v1, v0

    check-cast v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p4

    if-eqz v3, :cond_b

    if-eqz p12, :cond_8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Pre/Post and Interface extensions will be ignored."

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    const/4 v13, 0x0

    :goto_12
    array-length v0, v3

    if-ge v13, v0, :cond_b

    :try_start_6
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    const-string v4, "LOAD_LINE_NUMBERS"

    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/XmlOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)Lorg/apache/xmlbeans/XmlOptions;

    sget-object v4, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->MAP_COMPATIBILITY_CONFIG_URIS:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/XmlOptions;->setLoadSubstituteNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    aget-object v4, v3, v13

    const/4 v5, 0x0

    invoke-interface {v8, v4, v5, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument;

    if-nez v4, :cond_9

    aget-object v4, v3, v13

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    const/4 v4, 0x1

    aput-object v17, v6, v4

    invoke-static {v15, v10, v6, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_13

    :catch_c
    move-exception v0

    goto :goto_14

    :catch_d
    move-exception v0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto :goto_15

    :cond_9
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Loading config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v3, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lorg/apache/xmlbeans/impl/schema/StscState;->addInfo(Ljava/util/Collection;Ljava/lang/String;)V

    new-instance v4, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v4}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v4, v15}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v4

    if-eqz v4, :cond_a

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument;->getConfig()Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p12, :cond_a

    const/4 v4, 0x0

    new-array v5, v4, [Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;

    invoke-interface {v0, v5}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;->setExtensionArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;)V
    :try_end_6
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    :cond_a
    :goto_13
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto :goto_16

    :goto_14
    aget-object v4, v3, v13

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v17, v6, v9

    const/4 v12, 0x1

    aput-object v4, v6, v12

    const/4 v4, 0x2

    aput-object v0, v6, v4

    aget-object v0, v3, v13

    invoke-static {v15, v11, v6, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->addError(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;Ljava/io/File;)V

    goto :goto_16

    :goto_15
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlException;->getError()Lorg/apache/xmlbeans/XmlError;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->add(Ljava/lang/Object;)Z

    :goto_16
    add-int/2addr v13, v12

    goto/16 :goto_12

    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;

    check-cast v0, [Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;

    move-object/from16 v2, p6

    const/4 v3, 0x0

    invoke-static {v3, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->build([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v2

    if-eqz p14, :cond_c

    invoke-virtual/range {p14 .. p14}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    goto :goto_17

    :cond_c
    move-object v8, v3

    :goto_17
    new-instance v3, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    if-eqz p7, :cond_d

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setCompileDownloadUrls()Lorg/apache/xmlbeans/XmlOptions;

    :cond_d
    if-eqz p8, :cond_e

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoUpaRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_e
    if-eqz p9, :cond_f

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoPvrRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_f
    if-eqz p10, :cond_10

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoAnnotations()Lorg/apache/xmlbeans/XmlOptions;

    :cond_10
    move-object/from16 v4, p13

    if-eqz v4, :cond_11

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/XmlOptions;->setCompileMdefNamespaces(Ljava/util/Set;)Lorg/apache/xmlbeans/XmlOptions;

    :cond_11
    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoValidation()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v3, v7}, Lorg/apache/xmlbeans/XmlOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)Lorg/apache/xmlbeans/XmlOptions;

    move-object/from16 v4, p20

    if-eqz v4, :cond_12

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/XmlOptions;->setGenerateJavaVersion(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    :cond_12
    new-instance v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;

    invoke-direct {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;-><init>()V

    move-object/from16 v5, p0

    invoke-virtual {v4, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setSchemas([Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;)V

    move-object/from16 v1, p5

    move-object/from16 v5, p19

    invoke-static {v0, v1, v5}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->forConfigDocuments([Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;[Ljava/io/File;[Ljava/io/File;)Lorg/apache/xmlbeans/BindingConfig;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setConfig(Lorg/apache/xmlbeans/BindingConfig;)V

    invoke-virtual {v4, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setLinkTo(Lorg/apache/xmlbeans/SchemaTypeLoader;)V

    invoke-virtual {v4, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setOptions(Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v4, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setErrorListener(Ljava/util/Collection;)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setJavaize(Z)V

    invoke-virtual {v4, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setBaseURI(Ljava/net/URI;)V

    move-object/from16 v1, p15

    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setSourcesToCopyMap(Ljava/util/Map;)V

    move-object/from16 v1, p17

    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->setSchemasDir(Ljava/io/File;)V

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler;->compile(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->printUsage()V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "help"

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "usage"

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "license"

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "quiet"

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v8, "verbose"

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v9, "version"

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "dl"

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "noupa"

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v12, "nopvr"

    invoke-virtual {v1, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v13, "noann"

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "novdoc"

    invoke-virtual {v1, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v15, "noext"

    invoke-virtual {v1, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "srconly"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v2

    const-string v2, "debug"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v18, v15

    const-string v15, "out"

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v14

    const-string v14, "name"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "src"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v14

    const-string v14, "d"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "cp"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "compiler"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "javasource"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "jar"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "ms"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "mx"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "repackage"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "schemaCodePrinter"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "extension"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v14

    const-string v14, "extensionParms"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v14

    const-string v14, "allowmdef"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "catalog"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v14, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    invoke-direct {v14, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v14, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v14, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v14, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1e

    :cond_2
    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unrecognized option: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->printUsage()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v14, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_5
    invoke-virtual {v14, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_6
    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->args()[Ljava/lang/String;

    invoke-virtual {v14, v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v14, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-eqz v2, :cond_9

    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    move v3, v0

    :goto_3
    if-eqz v2, :cond_a

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    :cond_a
    invoke-virtual {v14, v15}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "repackage"

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "schemaCodePrinter"

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xmlbeans/SchemaCodePrinter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Failed to load SchemaCodePrinter class "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "; proceeding with default printer"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    const/4 v7, 0x0

    :goto_4
    const-string v0, "name"

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v9, 0x1

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v14, v11}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v10, 0x1

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v14, v12}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    :goto_7
    invoke-virtual {v14, v13}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object/from16 v0, v19

    const/4 v12, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v0, v19

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object/from16 v0, v18

    const/4 v13, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v0, v18

    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    move-object/from16 v0, v16

    const/4 v15, 0x1

    goto :goto_a

    :cond_11
    move-object/from16 v0, v16

    const/4 v15, 0x0

    :goto_a
    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object/from16 v0, v17

    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    move-object/from16 v0, v17

    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v23, 0x1

    goto :goto_c

    :cond_13
    const/16 v23, 0x0

    :goto_c
    const-string v0, "allowmdef"

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object v1, v0

    :goto_d
    move-object/from16 v17, v7

    goto :goto_e

    :cond_14
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/XmlListImpl;->split_list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :goto_e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_15

    move-object/from16 v18, v1

    :try_start_1
    new-instance v1, Lorg/apache/xmlbeans/impl/tool/Extension;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/tool/Extension;-><init>()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v19, v5

    :try_start_2
    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v24, v15

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v21, v13

    const/4 v13, 0x0

    :try_start_4
    invoke-static {v5, v13, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/tool/Extension;->setClassName(Ljava/lang/Class;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_11

    :catch_1
    move/from16 v21, v13

    goto :goto_10

    :catch_2
    :goto_f
    move/from16 v21, v13

    move/from16 v24, v15

    goto :goto_10

    :catch_3
    move-object/from16 v19, v5

    goto :goto_f

    :catch_4
    :goto_10
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v13, "Could not find extension class: "

    invoke-direct {v5, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "  Is it on your classpath?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_11

    :cond_15
    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move/from16 v21, v13

    move/from16 v24, v15

    :goto_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/tool/Extension;

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, ";"

    invoke-direct {v1, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v13, 0x3d

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_16

    sget-object v15, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v22, v1

    const-string v1, "extensionParms should be name=value;name=value"

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_13
    const/4 v1, 0x0

    goto :goto_14

    :cond_16
    move-object/from16 v22, v1

    goto :goto_13

    :goto_14
    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/tool/Extension;->createParam()Lorg/apache/xmlbeans/impl/tool/Extension$Param;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/apache/xmlbeans/impl/tool/Extension$Param;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/tool/Extension$Param;->setValue(Ljava/lang/String;)V

    move-object/from16 v1, v22

    goto :goto_12

    :cond_17
    const-string v0, "d"

    invoke-virtual {v14, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v20

    goto :goto_15

    :cond_18
    move-object/from16 v5, v20

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v14, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_19
    const/4 v13, 0x0

    :goto_16
    if-eqz v6, :cond_1a

    if-nez v0, :cond_1a

    if-eqz v1, :cond_1a

    move-object v13, v1

    :cond_1a
    if-eqz v13, :cond_1c

    if-nez v1, :cond_1b

    goto :goto_17

    :cond_1b
    move-object/from16 v20, v7

    move/from16 v22, v12

    goto :goto_18

    :cond_1c
    :goto_17
    :try_start_5
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/SchemaCodeGenerator;->createTempDir()Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v20, v7

    move/from16 v22, v12

    goto :goto_19

    :catch_5
    move-exception v0

    move-object v15, v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v20, v7

    new-instance v7, Ljava/lang/StringBuffer;

    move/from16 v22, v12

    const-string v12, "Error creating temp dir "

    invoke-direct {v7, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    :goto_18
    const/4 v0, 0x0

    :goto_19
    if-nez v4, :cond_1d

    if-nez v1, :cond_1d

    if-nez v6, :cond_1d

    const-string v4, "xmltypes.jar"

    :cond_1d
    if-eqz v4, :cond_1e

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :cond_1e
    const/4 v7, 0x0

    :goto_1a
    if-nez v13, :cond_1f

    invoke-static {v0, v5}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    :cond_1f
    if-nez v1, :cond_20

    const-string v1, "classes"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/common/IOUtil;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :cond_20
    const-string v4, "cp"

    invoke-virtual {v14, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_1b
    array-length v15, v4

    if-ge v12, v15, :cond_21

    new-instance v15, Ljava/io/File;

    move-object/from16 v25, v0

    aget-object v0, v4, v12

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v25

    goto :goto_1b

    :cond_21
    move-object/from16 v25, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    goto :goto_1c

    :cond_22
    move-object/from16 v25, v0

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->systemClasspath()[Ljava/io/File;

    move-result-object v0

    :goto_1c
    const-string v4, "javasource"

    invoke-virtual {v14, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "compiler"

    invoke-virtual {v14, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "jar"

    invoke-virtual {v14, v12}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v2, :cond_23

    if-eqz v12, :cond_23

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "The \'jar\' option is no longer supported."

    invoke-virtual {v12, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_23
    const-string v12, "ms"

    invoke-virtual {v14, v12}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "mx"

    invoke-virtual {v14, v15}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v26, v11

    const-string v11, ".xsd"

    invoke-virtual {v14, v11}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v11

    move/from16 v27, v10

    const-string v10, ".wsdl"

    invoke-virtual {v14, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    move/from16 v28, v9

    const-string v9, ".java"

    invoke-virtual {v14, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v9

    move/from16 v29, v3

    const-string v3, ".xsdconfig"

    invoke-virtual {v14, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    move/from16 v30, v6

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getURLs()[Ljava/net/URL;

    move-result-object v6

    move-object/from16 v31, v15

    array-length v15, v11

    move-object/from16 v32, v12

    array-length v12, v10

    add-int/2addr v15, v12

    array-length v12, v6

    add-int/2addr v15, v12

    if-nez v15, :cond_24

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "Could not find any xsd or wsdl files to process."

    invoke-virtual {v12, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    :cond_24
    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBaseDir()Ljava/io/File;

    move-result-object v12

    if-nez v12, :cond_25

    move-object/from16 p0, v4

    const/4 v15, 0x0

    goto :goto_1d

    :cond_25
    invoke-virtual {v12}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v15

    move-object/from16 p0, v4

    :goto_1d
    new-instance v4, Lorg/apache/xmlbeans/impl/common/XmlErrorPrinter;

    invoke-direct {v4, v2, v15}, Lorg/apache/xmlbeans/impl/common/XmlErrorPrinter;-><init>(ZLjava/net/URI;)V

    const-string v15, "catalog"

    invoke-virtual {v14, v15}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;

    invoke-direct {v15}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;-><init>()V

    invoke-virtual {v15, v12}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setBaseDir(Ljava/io/File;)V

    invoke-virtual {v15, v11}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setXsdFiles([Ljava/io/File;)V

    invoke-virtual {v15, v10}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setWsdlFiles([Ljava/io/File;)V

    invoke-virtual {v15, v9}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setJavaFiles([Ljava/io/File;)V

    invoke-virtual {v15, v3}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setConfigFiles([Ljava/io/File;)V

    invoke-virtual {v15, v6}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setUrlFiles([Ljava/net/URL;)V

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setClasspath([Ljava/io/File;)V

    invoke-virtual {v15, v7}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setOutputJar(Ljava/io/File;)V

    invoke-virtual {v15, v8}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setName(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setSrcDir(Ljava/io/File;)V

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setClassesDir(Ljava/io/File;)V

    invoke-virtual {v15, v5}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setCompiler(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setJavaSource(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setMemoryInitialSize(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setMemoryMaximumSize(Ljava/lang/String;)V

    move/from16 v1, v30

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setNojavac(Z)V

    move/from16 v1, v29

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setQuiet(Z)V

    invoke-virtual {v15, v2}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setVerbose(Z)V

    move/from16 v1, v28

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setDownload(Z)V

    move/from16 v1, v27

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setNoUpa(Z)V

    move/from16 v1, v26

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setNoPvr(Z)V

    move/from16 v1, v22

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setNoAnn(Z)V

    move/from16 v1, v21

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setNoVDoc(Z)V

    move/from16 v1, v24

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setNoExt(Z)V

    move/from16 v1, v23

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setDebug(Z)V

    invoke-virtual {v15, v4}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setErrorListener(Ljava/util/Collection;)V

    move-object/from16 v1, v19

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setRepackage(Ljava/lang/String;)V

    move-object/from16 v1, v20

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setExtensions(Ljava/util/List;)V

    move-object/from16 v1, v18

    invoke-virtual {v15, v1}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setMdefNamespaces(Ljava/util/Set;)V

    invoke-virtual {v15, v14}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setCatalogFile(Ljava/lang/String;)V

    move-object/from16 v6, v17

    invoke-virtual {v15, v6}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;->setSchemaCodePrinter(Lorg/apache/xmlbeans/SchemaCodePrinter;)V

    invoke-static {v15}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->compile(Lorg/apache/xmlbeans/impl/tool/SchemaCompiler$Parameters;)Z

    move-result v0

    if-eqz v25, :cond_26

    invoke-static/range {v25 .. v25}, Lorg/apache/xmlbeans/impl/tool/SchemaCodeGenerator;->tryHardToDelete(Ljava/io/File;)V

    :cond_26
    if-nez v0, :cond_27

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_27
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :goto_1e
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/SchemaCompiler;->printUsage()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Compiles a schema into XML Bean classes and metadata."

    .line 4
    .line 5
    const-string v2, "Usage: scomp [opts] [dirs]* [schema.xsd]* [service.wsdl]* [config.xsdconfig]*"

    .line 6
    .line 7
    const-string v3, "Options include:"

    .line 8
    .line 9
    const-string v4, "    -cp [a;b;c] - classpath"

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "    -d [dir] - target binary directory for .class and .xsb files"

    .line 15
    .line 16
    const-string v2, "    -src [dir] - target directory for generated .java files"

    .line 17
    .line 18
    const-string v3, "    -srconly - do not compile .java files or jar the output."

    .line 19
    .line 20
    const-string v4, "    -out [xmltypes.jar] - the name of the output jar"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "    -dl - permit network downloads for imports and includes (default is off)"

    .line 26
    .line 27
    const-string v2, "    -noupa - do not enforce the unique particle attribution rule"

    .line 28
    .line 29
    const-string v3, "    -nopvr - do not enforce the particle valid (restriction) rule"

    .line 30
    .line 31
    const-string v4, "    -noann - ignore annotations"

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "    -novdoc - do not validate contents of <documentation>"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "    -noext - ignore all extension (Pre/Post and Interface) found in .xsdconfig files"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "    -compiler - path to external java compiler"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "    -javasource [version] - generate java source compatible for a Java version (1.4 or 1.5)"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuffer;

    .line 57
    .line 58
    const-string v2, "    -ms - initial memory for external java compiler (default \'"

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_MEM_START:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    const-string v2, "\')"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    .line 81
    .line 82
    const-string v3, "    -mx - maximum memory for external java compiler (default \'"

    .line 83
    .line 84
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v3, Lorg/apache/xmlbeans/impl/tool/CodeGenUtil;->DEFAULT_MEM_MAX:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "    -debug - compile with debug symbols"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "    -quiet - print fewer informational messages"

    .line 108
    .line 109
    const-string v2, "    -verbose - print more informational messages"

    .line 110
    .line 111
    const-string v3, "    -version - prints version information"

    .line 112
    .line 113
    const-string v4, "    -license - prints license information"

    .line 114
    .line 115
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v1, "    -allowmdef \"[ns] [ns] [ns]\" - ignores multiple defs in given namespaces (use ##local for no-namespace)"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "    -catalog [file] -  catalog file for org.apache.xml.resolver.tools.CatalogResolver. (Note: needs resolver.jar from http://xml.apache.org/commons/components/resolver/index.html)"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 129
    .line 130
    .line 131
    return-void
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
.end method

.method private static runExtensions(Ljava/util/List;Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/io/File;)V
    .locals 6

    const-string v0, "EXTENSION Class was not run"

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WARNING: Unable to get the path for schema jar file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/tool/Extension;

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/tool/Extension;->getClassName()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/tool/SchemaCompilerExtension;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Running Extension: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/tool/SchemaCompilerExtension;->getExtensionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/tool/Extension;->getParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/impl/tool/Extension$Param;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/Extension$Param;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/Extension$Param;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v1, "classesDir"

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Lorg/apache/xmlbeans/impl/tool/SchemaCompilerExtension;->schemaCompilerExtension(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/util/Map;)V

    goto :goto_0

    :catch_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/tool/Extension;->getClassName()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ILLEGAL ACCESS Exception when attempting to instantiate schema compiler extension: "

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/tool/Extension;->getClassName()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UNABLE to instantiate schema compiler extension:"

    goto :goto_2

    :cond_1
    :goto_3
    return-void
.end method

.method private static wsdlContainsEncoded(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 4

    const-string v0, "declare namespace soap=\'http://schemas.xmlsoap.org/wsdl/soap/\' .//soap:body/@use|.//soap:header/@use|.//soap:fault/@use"

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    check-cast v2, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SimpleValue;->getStringValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "encoded"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
