.class public Lorg/apache/xmlbeans/impl/common/QNameHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MAX_NAME_LENGTH:I = 0x40

.field public static final URI_SHA1_PREFIX:Ljava/lang/String; = "URI_SHA_1_"

.field private static final WELL_KNOWN_PREFIXES:Ljava/util/Map;

.field static synthetic class$org$apache$xmlbeans$impl$common$QNameHelper:Ljava/lang/Class;

.field private static final hexdigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->class$org$apache$xmlbeans$impl$common$QNameHelper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.common.QNameHelper"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->class$org$apache$xmlbeans$impl$common$QNameHelper:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->$assertionsDisabled:Z

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->buildWKP()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->WELL_KNOWN_PREFIXES:Ljava/util/Map;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexdigits:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildWKP()Ljava/util/Map;
    .locals 4

    .line 1
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    .line 2
    .line 3
    const-string v1, "xml"

    .line 4
    .line 5
    const-string v2, "http://www.w3.org/2001/XMLSchema"

    .line 6
    .line 7
    const-string v3, "xs"

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    .line 14
    .line 15
    const-string v2, "xsi"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "http://schemas.xmlsoap.org/wsdl/"

    .line 21
    .line 22
    const-string v2, "wsdl"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v1, "http://schemas.xmlsoap.org/soap/encoding/"

    .line 28
    .line 29
    const-string v2, "soapenc"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    .line 35
    .line 36
    const-string v2, "soapenv"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
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

.method public static forLN(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forPretty(Ljava/lang/String;I)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getXMLName(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/xml/stream/XMLName;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/common/XMLNameHelper;->forLNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object p0

    return-object p0
.end method

.method public static hexsafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "UTF-8"

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->isSafe(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    const/16 v5, 0x5f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexdigits:[C

    aget-byte v6, v3, v4

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v6, v3, v4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    const-string v3, "_BAD_UTF8_CHAR"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x40

    if-gt v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :try_start_1
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    :try_start_3
    new-array p0, v1, [B

    :goto_3
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    array-length v0, p0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_4

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "URI_SHA_1_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_6

    sget-object v2, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexdigits:[C

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Using in a JDK without an SHA implementation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexsafedir(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "_nons/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSafe(I)Z
    .locals 2

    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static isVowel(C)Z
    .locals 1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    const/16 v0, 0x45

    if-eq p0, v0, :cond_0

    const/16 v0, 0x49

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-eq p0, v0, :cond_0

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/16 v0, 0x69

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x75

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static namespace(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readable(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->WELL_KNOWN_PREFIXES:Ljava/util/Map;

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readable(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, ":"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " in namespace "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->WELL_KNOWN_PREFIXES:Ljava/util/Map;

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 9
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "attribute type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "document type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isNoType()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getOuterType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "type of attribute "

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "type of element "

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->isAttribute()Z

    move-result p0

    const-string v2, "type of "

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " attribute in "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " element in "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-ne v1, p0, :cond_8

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v1, "base type of "

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v1, "item type of "

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "member type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousUnionMemberOrdinal()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, " of "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/StringBuffer;

    const-string v1, "inner type in "

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_b
    :goto_0
    const-string p0, "invalid type"

    return-object p0
.end method

.method private static startsWithXml(Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x58

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x4d

    if-eq v1, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x6c

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static suggestPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lorg/apache/xmlbeans/impl/common/QNameHelper;->WELL_KNOWN_PREFIXES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    move v6, v2

    move v2, v0

    move v0, v6

    :cond_1
    add-int/lit8 v1, v2, 0x1

    const-string v3, "www."

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v2, 0x5

    :cond_2
    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isNCNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v2, v1, 0x1

    :goto_2
    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isNCName(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move v0, v2

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x3

    const-string v4, "ns"

    const/4 v5, 0x4

    if-lt v2, v3, :cond_9

    invoke-static {p0, v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->startsWithXml(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v5

    if-lt v0, v1, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v4

    :cond_9
    sub-int v2, v0, v1

    if-le v2, v5, :cond_b

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, v1, 0x4

    goto :goto_4

    :cond_a
    move v0, v3

    :cond_b
    :goto_4
    sub-int v2, v0, v1

    if-nez v2, :cond_c

    return-object v4

    :cond_c
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
