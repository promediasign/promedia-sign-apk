.class public abstract Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaTypeLoader;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final USER_AGENT:Ljava/lang/String;

.field private static final _pathCompiler:Ljava/lang/reflect/Method;

.field private static final _queryCompiler:Ljava/lang/reflect/Method;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderBase:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderBase:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.apache.xmlbeans.impl.schema.SchemaTypeLoaderBase"

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderBase:Ljava/lang/Class;

    :cond_0
    sput-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->$assertionsDisabled:Z

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "XMLBeans/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->USER_AGENT:Ljava/lang/String;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$java$lang$String:Ljava/lang/Class;

    const-string v4, "java.lang.String"

    if-nez v3, :cond_1

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$java$lang$String:Ljava/lang/Class;

    :cond_1
    sget-object v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

    const-string v6, "org.apache.xmlbeans.XmlOptions"

    if-nez v5, :cond_2

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

    :cond_2
    new-array v7, v1, [Ljava/lang/Class;

    aput-object v3, v7, v0

    aput-object v5, v7, v2

    const-string v3, "org.apache.xmlbeans.impl.store.Path"

    const-string v5, "compilePath"

    invoke-static {v3, v5, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->_pathCompiler:Ljava/lang/reflect/Method;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$java$lang$String:Ljava/lang/Class;

    if-nez v3, :cond_3

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$java$lang$String:Ljava/lang/Class;

    :cond_3
    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

    if-nez v4, :cond_4

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

    :cond_4
    new-array v1, v1, [Ljava/lang/Class;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    const-string v0, "org.apache.xmlbeans.impl.store.Query"

    const-string v2, "compileQuery"

    invoke-static {v0, v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->_queryCompiler:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private static doCompilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->_pathCompiler:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static doCompileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->_queryCompiler:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "Cannot find "

    .line 13
    .line 14
    const-string v1, "."

    .line 15
    .line 16
    const-string v2, ".  verify that xmlstore (from xbean.jar) is on classpath"

    .line 17
    .line 18
    invoke-static {v0, p0, v1, p1, v2}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p2
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
.end method

.method private static invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public compilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->doCompilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compileQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->doCompileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;->get()Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public findAttributeGroup(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public findAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public findDocumentType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public findElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;->get()Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object p1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public findModelGroup(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public newDomImplementation(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->newDomImplementation(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/DOMImplementation;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->getHook()Lorg/apache/xmlbeans/XmlFactoryHook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/xmlbeans/XmlFactoryHook;->newInstance(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->newInstance(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public newValidatingXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream;

    invoke-direct {v0, p1, p0, p2, p3}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLInputStream;-><init>(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    return-object v0
.end method

.method public newXmlSaxHandler(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlSaxHandler;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->getHook()Lorg/apache/xmlbeans/XmlFactoryHook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/xmlbeans/XmlFactoryHook;->newXmlSaxHandler(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlSaxHandler;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->newSaxHandler(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlSaxHandler;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 1
    const-string v0, "DOCUMENT_SOURCE_NAME"

    if-nez p3, :cond_0

    new-instance p3, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1, p3}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p3, v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 3

    .line 2
    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->getHook()Lorg/apache/xmlbeans/XmlFactoryHook;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "LOAD_MESSAGE_DIGEST"

    invoke-virtual {p3, v1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "SHA"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, p1, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object p1, v2

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlFactoryHook;->parse(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p2

    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p3

    invoke-virtual {p3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setMessageDigest([B)V

    :cond_2
    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 3
    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->getHook()Lorg/apache/xmlbeans/XmlFactoryHook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlFactoryHook;->parse(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 4
    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->getHook()Lorg/apache/xmlbeans/XmlFactoryHook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlFactoryHook;->parse(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/net/URL;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 7

    .line 5
    const-string v0, "DOCUMENT_SOURCE_NAME"

    if-nez p3, :cond_0

    new-instance p3, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1, p3}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p3, v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    const-string v5, "User-Agent"

    sget-object v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept"

    const-string v6, "application/xml, text/xml, */*"

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_8

    move-object v2, v4

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_4

    const/16 v6, 0x12e

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_5

    const/4 v6, 0x5

    if-le v1, v6, :cond_5

    const/4 v5, 0x0

    :cond_5
    if-eqz v5, :cond_7

    const-string v6, "Location"

    invoke-virtual {v2, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_7
    move v2, v5

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_8
    :goto_3
    if-nez v2, :cond_2

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    return-object p1

    :goto_4
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_a
    throw p1
.end method

.method public parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 6
    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->getHook()Lorg/apache/xmlbeans/XmlFactoryHook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlFactoryHook;->parse(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 7
    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->getHook()Lorg/apache/xmlbeans/XmlFactoryHook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlFactoryHook;->parse(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 8
    invoke-static {}, Lorg/apache/xmlbeans/XmlFactoryHook$ThreadContext;->getHook()Lorg/apache/xmlbeans/XmlFactoryHook;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/XmlFactoryHook;->parse(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    return-object p1
.end method

.method public typeForSignature(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_6

    const/16 v6, 0x3a

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v7, 0x7c

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v6, :cond_1

    goto :goto_2

    :cond_1
    if-gez v7, :cond_2

    goto :goto_3

    :cond_2
    if-ge v6, v7, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v7

    :goto_3
    if-ltz v6, :cond_4

    if-le v6, v0, :cond_5

    :cond_4
    move v6, v0

    :cond_5
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    const/4 v0, 0x0

    move-object v4, v0

    :goto_4
    if-ltz p1, :cond_25

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v5, :cond_24

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_7

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x3d

    if-ne v7, v9, :cond_7

    const/4 v7, 0x2

    goto :goto_5

    :cond_7
    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x49

    const/4 v11, 0x3

    if-eq v9, v10, :cond_1f

    const/16 v10, 0x4d

    if-eq v9, v10, :cond_1b

    const/16 v8, 0x51

    if-eq v9, v8, :cond_16

    const/16 v8, 0x52

    if-eq v9, v8, :cond_14

    const/16 v8, 0x54

    if-eq v9, v8, :cond_12

    const/16 v8, 0x55

    if-eq v9, v8, :cond_c

    packed-switch v9, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    if-nez v4, :cond_8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->findDocumentType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    if-nez v4, :cond_22

    return-object v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    if-eqz v4, :cond_b

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v6

    if-eq v6, v5, :cond_9

    return-object v0

    :cond_9
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    array-length v6, v4

    if-eq v6, v5, :cond_a

    return-object v0

    :cond_a
    aget-object v4, v4, v3

    goto/16 :goto_8

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_c
    :pswitch_2
    if-eqz v4, :cond_10

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v8

    if-ge v8, v11, :cond_d

    return-object v0

    :cond_d
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_6
    array-length v8, v4

    if-ge v7, v8, :cond_f

    aget-object v8, v4, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    aget-object v4, v4, v7

    goto/16 :goto_8

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_f
    return-object v0

    :cond_10
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->findElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v4

    if-nez v4, :cond_11

    return-object v0

    :cond_11
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    goto/16 :goto_8

    :cond_12
    if-nez v4, :cond_13

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    if-nez v4, :cond_22

    return-object v0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_14
    :pswitch_3
    if-nez v4, :cond_15

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->findAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    if-nez v4, :cond_22

    return-object v0

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_16
    :pswitch_4
    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v8

    if-eqz v8, :cond_17

    return-object v0

    :cond_17
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_7
    array-length v8, v4

    if-ge v7, v8, :cond_19

    aget-object v8, v4, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v8}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    aget-object v4, v4, v7

    goto :goto_8

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_19
    return-object v0

    :cond_1a
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;->findAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v4

    if-nez v4, :cond_11

    return-object v0

    :cond_1b
    if-eqz v4, :cond_1e

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v7

    if-eq v7, v8, :cond_1c

    return-object v0

    :cond_1c
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    array-length v7, v4

    if-gt v7, v6, :cond_1d

    return-object v0

    :cond_1d
    aget-object v4, v4, v6

    goto :goto_8

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1f
    if-eqz v4, :cond_23

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v6

    if-eq v6, v11, :cond_20

    return-object v0

    :cond_20
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    array-length v6, v4

    if-eq v6, v5, :cond_21

    return-object v0

    :cond_21
    aget-object v4, v4, v3

    :cond_22
    :goto_8
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_4

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_25
    return-object v4

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
