.class public Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static MAX_SNIFFED_BYTES:I

.field private static NOTNAME:[C

.field private static WHITESPACE:[C

.field static synthetic class$org$apache$xmlbeans$impl$common$SniffedXmlInputStream:Ljava/lang/Class;

.field private static dummy1:Ljava/nio/charset/Charset;

.field private static dummy2:Ljava/nio/charset/Charset;

.field private static dummy3:Ljava/nio/charset/Charset;

.field private static dummy4:Ljava/nio/charset/Charset;

.field private static dummy5:Ljava/nio/charset/Charset;

.field private static dummy6:Ljava/nio/charset/Charset;

.field private static dummy7:Ljava/nio/charset/Charset;


# instance fields
.field private _encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    sget-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->class$org$apache$xmlbeans$impl$common$SniffedXmlInputStream:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.impl.common.SniffedXmlInputStream"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->class$org$apache$xmlbeans$impl$common$SniffedXmlInputStream:Ljava/lang/Class;

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->$assertionsDisabled:Z

    const/16 v1, 0xc0

    sput v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->MAX_SNIFFED_BYTES:I

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->dummy1:Ljava/nio/charset/Charset;

    const-string v1, "UTF-16"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->dummy2:Ljava/nio/charset/Charset;

    const-string v1, "UTF-16BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->dummy3:Ljava/nio/charset/Charset;

    const-string v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->dummy4:Ljava/nio/charset/Charset;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->dummy5:Ljava/nio/charset/Charset;

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->dummy6:Ljava/nio/charset/Charset;

    const-string v1, "Cp1252"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->dummy7:Ljava/nio/charset/Charset;

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->WHITESPACE:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->NOTNAME:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0xds
        0x9s
        0xas
    .end array-data

    :array_1
    .array-data 2
        0x3ds
        0x20s
        0xds
        0x9s
        0xas
        0x3fs
        0x3es
        0x3cs
        0x27s
        0x22s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->sniffFourBytes()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->_encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "IBM037"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->_encoding:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->sniffForXmlDecl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->_encoding:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->_encoding:Ljava/lang/String;

    const-string v0, "UTF-8"

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->sniffForXmlDecl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->_encoding:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->_encoding:Ljava/lang/String;

    if-nez p1, :cond_2

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->_encoding:Ljava/lang/String;

    :cond_2
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

.method public static extractXmlDeclEncoding([CII)Ljava/lang/String;
    .locals 4

    add-int/2addr p2, p1

    const-string v0, "<?xml"

    invoke-static {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->firstIndexOf(Ljava/lang/String;[CII)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    add-int/lit8 p1, p1, 0x5

    new-instance v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;-><init>(Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$1;)V

    :cond_0
    if-ge p1, p2, :cond_2

    invoke-static {p0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->scanAttribute([CIILorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;->name:Ljava/lang/String;

    const-string v3, "encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;->value:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static firstIndexOf(Ljava/lang/String;[CII)I
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    aget-char v0, p0, v0

    array-length v1, p0

    sub-int/2addr p3, v1

    :goto_1
    if-ge p2, p3, :cond_5

    aget-char v1, p1, p2

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_3

    add-int v2, p2, v1

    aget-char v2, p1, v2

    aget-char v3, p0, v1

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return p2

    :cond_4
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method private static nextMatchingByte(C[CII)I
    .locals 1

    .line 1
    :goto_0
    if-ge p2, p3, :cond_1

    aget-char v0, p1, p2

    if-ne v0, p0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static nextMatchingByte([C[CII)I
    .locals 3

    .line 2
    :goto_0
    if-ge p2, p3, :cond_2

    aget-char v0, p1, p2

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-char v2, p0, v1

    if-ne v0, v2, :cond_0

    return p2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static nextNonmatchingByte([C[CII)I
    .locals 3

    :goto_0
    if-ge p2, p3, :cond_2

    aget-char v0, p1, p2

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-char v2, p0, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return p2

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private readAsMuchAsPossible([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private static scanAttribute([CIILorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;)I
    .locals 5

    sget-object v0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->WHITESPACE:[C

    invoke-static {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->nextNonmatchingByte([C[CII)I

    move-result p1

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->NOTNAME:[C

    invoke-static {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->nextMatchingByte([C[CII)I

    move-result v1

    if-gez v1, :cond_1

    return v0

    :cond_1
    sget-object v2, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->WHITESPACE:[C

    invoke-static {v2, p0, v1, p2}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->nextNonmatchingByte([C[CII)I

    move-result v2

    if-gez v2, :cond_2

    return v0

    :cond_2
    aget-char v3, p0, v2

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    sget-object v3, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->WHITESPACE:[C

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, p0, v2, p2}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->nextNonmatchingByte([C[CII)I

    move-result v2

    aget-char v3, p0, v2

    const/16 v4, 0x27

    if-eq v3, v4, :cond_4

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, p0, v4, p2}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->nextMatchingByte(C[CII)I

    move-result p2

    if-gez p2, :cond_5

    return v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p3, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;->name:Ljava/lang/String;

    new-instance p1, Ljava/lang/String;

    sub-int v0, p2, v2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, p0, v4, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p3, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream$ScannedAttribute;->value:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private sniffForXmlDecl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget v0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->MAX_SNIFFED_BYTES:I

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    sget v0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->MAX_SNIFFED_BYTES:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->readAsMuchAsPossible([BII)I

    move-result v0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1, v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v3, v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-array p1, v0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sub-int v4, v0, v1

    invoke-virtual {v3, p1, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {p1, v2, v1}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->extractXmlDeclEncoding([CII)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object p1

    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw p1
.end method

.method private sniffFourBytes()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->readAsMuchAsPossible([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v4

    :cond_0
    :try_start_1
    aget-byte v0, v1, v2

    shl-int/lit8 v0, v0, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/32 v2, 0xfeff

    const-string v5, "UCS-4"

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v5

    :cond_1
    const-wide/32 v2, -0x20000

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v5

    :cond_2
    const-wide/16 v5, 0x3c

    cmp-long v7, v0, v5

    if-nez v7, :cond_3

    :try_start_2
    const-string v0, "UCS-4BE"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_3
    const-wide/32 v5, 0x3c000000

    cmp-long v7, v0, v5

    if-nez v7, :cond_4

    :try_start_3
    const-string v0, "UCS-4LE"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v0

    :cond_4
    const-wide/32 v5, 0x3c003f

    cmp-long v7, v0, v5

    if-nez v7, :cond_5

    :try_start_4
    const-string v0, "UTF-16BE"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v0

    :cond_5
    const-wide/32 v5, 0x3c003f00

    cmp-long v7, v0, v5

    if-nez v7, :cond_6

    :try_start_5
    const-string v0, "UTF-16LE"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v0

    :cond_6
    const-wide/32 v5, 0x3c3f786d

    cmp-long v7, v0, v5

    if-nez v7, :cond_7

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v4

    :cond_7
    const-wide/32 v5, 0x4c6fa794

    cmp-long v7, v0, v5

    if-nez v7, :cond_8

    :try_start_6
    const-string v0, "IBM037"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v0

    :cond_8
    const-wide/32 v5, -0x10000

    and-long/2addr v5, v0

    const-wide/32 v7, -0x1010000

    const-string v9, "UTF-16"

    cmp-long v10, v5, v7

    if-nez v10, :cond_9

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v9

    :cond_9
    cmp-long v7, v5, v2

    if-nez v7, :cond_a

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v9

    :cond_a
    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    const-wide/32 v2, -0x10444100

    cmp-long v5, v0, v2

    if-nez v5, :cond_b

    :try_start_7
    const-string v0, "UTF-8"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object v4

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0
.end method


# virtual methods
.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/SniffedXmlInputStream;->_encoding:Ljava/lang/String;

    return-object v0
.end method
