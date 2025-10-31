.class public final Lorg/apache/xmlbeans/impl/util/XsTypeConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CH_ZEROS:[C

.field private static final DECIMAL__ZERO:Ljava/math/BigDecimal;

.field private static final URI_CHARS_REPLACED_WITH:[Ljava/lang/String;

.field private static final URI_CHARS_TO_BE_REPLACED:[Ljava/lang/String;

.field static synthetic class$org$apache$xmlbeans$impl$util$XsTypeConverter:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-object v0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->class$org$apache$xmlbeans$impl$util$XsTypeConverter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.util.XsTypeConverter"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->class$org$apache$xmlbeans$impl$util$XsTypeConverter:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->$assertionsDisabled:Z

    new-instance v0, Ljava/math/BigDecimal;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sput-object v0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->DECIMAL__ZERO:Ljava/math/BigDecimal;

    const-string v10, "]"

    const-string v11, "`"

    const-string v3, " "

    const-string v4, "{"

    const-string v5, "}"

    const-string v6, "|"

    const-string v7, "\\"

    const-string v8, "^"

    const-string v9, "["

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->URI_CHARS_TO_BE_REPLACED:[Ljava/lang/String;

    const-string v8, "%5d"

    const-string v9, "%60"

    const-string v1, "%20"

    const-string v2, "%7b"

    const-string v3, "%7d"

    const-string v4, "%7c"

    const-string v5, "%5c"

    const-string v6, "%5e"

    const-string v7, "%5b"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->URI_CHARS_REPLACED_WITH:[Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->CH_ZEROS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
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

.method public static getGDateValue(Ljava/lang/CharSequence;I)Lorg/apache/xmlbeans/GDateSpecification;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setBuiltinTypeCode(I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p0

    return-object p0
.end method

.method public static getGDateValue(Ljava/util/Calendar;I)Lorg/apache/xmlbeans/GDateSpecification;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setBuiltinTypeCode(I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p0

    return-object p0
.end method

.method public static getGDateValue(Ljava/util/Date;I)Lorg/apache/xmlbeans/GDateSpecification;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setBuiltinTypeCode(I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p0

    return-object p0
.end method

.method public static getQNameString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x3a

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static lexAnyURI(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->URI_CHARS_TO_BE_REPLACED:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->URI_CHARS_TO_BE_REPLACED:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->URI_CHARS_REPLACED_WITH:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "invalid anyURI value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static lexBase64Binary(Ljava/lang/CharSequence;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/Base64;->decode([B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    const-string v0, "invalid base64Binary value"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lexBoolean(Ljava/lang/CharSequence;)Z
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/16 v3, 0x65

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v0, v6, :cond_0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_3

    const/16 v0, 0x66

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v0, v7, :cond_3

    const/16 v0, 0x61

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_3

    const/16 v0, 0x6c

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_3

    const/16 v0, 0x73

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_3

    return v1

    :cond_0
    const/16 v0, 0x74

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x72

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x75

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_3

    return v2

    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v3, v0, :cond_2

    return v1

    :cond_2
    const/16 v1, 0x31

    if-ne v1, v0, :cond_3

    return v2

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid boolean: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lexBoolean(Ljava/lang/CharSequence;Ljava/util/Collection;)Z
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexBoolean(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static lexByte(Ljava/lang/CharSequence;)B
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->parseByte(Ljava/lang/CharSequence;)B

    move-result p0

    return p0
.end method

.method public static lexByte(Ljava/lang/CharSequence;Ljava/util/Collection;)B
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexByte(Ljava/lang/CharSequence;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid byte: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static lexDateTime(Ljava/lang/CharSequence;)Lorg/apache/xmlbeans/XmlCalendar;
    .locals 1

    const/16 v0, 0xe

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->getGDateValue(Ljava/lang/CharSequence;I)Lorg/apache/xmlbeans/GDateSpecification;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/GDateSpecification;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static lexDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->trimTrailingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static lexDecimal(Ljava/lang/CharSequence;Ljava/util/Collection;)Ljava/math/BigDecimal;
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object p0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->DECIMAL__ZERO:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public static lexDouble(Ljava/lang/CharSequence;)D
    .locals 4

    .line 1
    const-string v0, "Invalid char \'"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v2, 0x64

    if-eq p0, v2, :cond_0

    const/16 v2, 0x44

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "\' in double."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :goto_1
    const-string v0, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_2
    const-string v0, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_3
    const-string v0, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_4
    throw p0
.end method

.method public static lexDouble(Ljava/lang/CharSequence;Ljava/util/Collection;)D
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexDouble(Ljava/lang/CharSequence;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid double: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static lexFloat(Ljava/lang/CharSequence;)F
    .locals 4

    .line 1
    const-string v0, "Invalid char \'"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_0

    const/16 v3, 0x46

    if-ne v2, v3, :cond_2

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v3, 0x4e

    if-ne p0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "\' in float."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    const-string v0, "INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0

    :cond_3
    const-string v0, "-INF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    return p0

    :cond_4
    const-string v0, "NaN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_5
    throw p0
.end method

.method public static lexFloat(Ljava/lang/CharSequence;Ljava/util/Collection;)F
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexFloat(Ljava/lang/CharSequence;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid float: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method public static lexGDate(Ljava/lang/CharSequence;)Lorg/apache/xmlbeans/GDate;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/GDate;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/GDate;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static lexGDate(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/xmlbeans/GDate;
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexGDate(Ljava/lang/CharSequence;)Lorg/apache/xmlbeans/GDate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance p0, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {p0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDateBuilder;->toGDate()Lorg/apache/xmlbeans/GDate;

    move-result-object p0

    return-object p0
.end method

.method public static lexHexBinary(Ljava/lang/CharSequence;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/HexBin;->decode([B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    const-string v0, "invalid hexBinary value"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lexInt(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->parseInt(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public static lexInt(Ljava/lang/CharSequence;Ljava/util/Collection;)I
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInt(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid int:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static lexInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "Illegal char sequence \'+-\'"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->trimInitialPlus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static lexInteger(Ljava/lang/CharSequence;Ljava/util/Collection;)Ljava/math/BigInteger;
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static lexLong(Ljava/lang/CharSequence;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->trimInitialPlus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static lexLong(Ljava/lang/CharSequence;Ljava/util/Collection;)J
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexLong(Ljava/lang/CharSequence;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static lexQName(Ljava/lang/CharSequence;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 5

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, ""

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p0, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid xsd:QName \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v3

    :goto_1
    invoke-interface {p1, v0}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    const-string p1, "Can\'t resolve prefix: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move-object v3, p0

    :cond_5
    :goto_2
    new-instance p0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static lexQName(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexQName(Ljava/lang/CharSequence;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    new-instance p2, Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static lexShort(Ljava/lang/CharSequence;)S
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->parseShort(Ljava/lang/CharSequence;)S

    move-result p0

    return p0
.end method

.method public static lexShort(Ljava/lang/CharSequence;Ljava/util/Collection;)S
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexShort(Ljava/lang/CharSequence;)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid short: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static lexString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lexString(Ljava/lang/CharSequence;Ljava/util/Collection;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseByte(Ljava/lang/CharSequence;)B
    .locals 2

    const/16 v0, -0x80

    const/16 v1, 0x7f

    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->parseIntXsdNumber(Ljava/lang/CharSequence;II)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method private static parseInt(Ljava/lang/CharSequence;)I
    .locals 2

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->parseIntXsdNumber(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method private static parseIntXsdNumber(Ljava/lang/CharSequence;II)I
    .locals 10

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "\""

    const-string v2, "For input string: \""

    const/4 v3, 0x1

    if-lt v0, v3, :cond_6

    const/4 v4, 0x0

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    const/16 v7, 0xa

    if-ne v5, v6, :cond_0

    div-int/lit8 p2, p1, 0xa

    rem-int/2addr p1, v7

    neg-int p1, p1

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/16 p1, 0x2b

    const/4 v6, -0x1

    if-ne v5, p1, :cond_1

    div-int/lit8 p1, p2, 0xa

    neg-int p1, p1

    rem-int/2addr p2, v7

    const/4 v3, -0x1

    const/4 v5, 0x1

    :goto_0
    move v9, p2

    move p2, p1

    move p1, v9

    goto :goto_1

    :cond_1
    div-int/lit8 p1, p2, 0xa

    neg-int p1, p1

    rem-int/2addr p2, v7

    const/4 v3, -0x1

    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    sub-int v8, v0, v5

    if-ge v4, v8, :cond_5

    add-int v8, v4, v5

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-ltz v8, :cond_4

    if-lt v6, p2, :cond_3

    if-ne v6, p2, :cond_2

    if-gt v8, p1, :cond_3

    :cond_2
    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    mul-int v3, v3, v6

    return v3

    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseShort(Ljava/lang/CharSequence;)S
    .locals 2

    const/16 v0, -0x8000

    const/16 v1, 0x7fff

    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->parseIntXsdNumber(Ljava/lang/CharSequence;II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static printAnyURI(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    return-object p0
.end method

.method public static printBase64Binary([B)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/Base64;->encode([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static printBoolean(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method public static printByte(B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->printDateTime(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 2
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->getGDateValue(Ljava/util/Date;I)Lorg/apache/xmlbeans/GDateSpecification;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->printDateTime(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printDateTime(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->getGDateValue(Ljava/util/Calendar;I)Lorg/apache/xmlbeans/GDateSpecification;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 3
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->getGDateValue(Ljava/util/Date;I)Lorg/apache/xmlbeans/GDateSpecification;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    if-gez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    if-ne p0, v3, :cond_2

    const/16 v3, 0x2d

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    if-lez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p0

    sub-int/2addr v1, v3

    if-ltz v1, :cond_4

    const-string v3, "0."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    sget-object v3, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->CH_ZEROS:[C

    array-length v5, v3

    if-le v1, v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    array-length v3, v3

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v3, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    sub-int v1, p0, v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x2e

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    sget-object p0, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->CH_ZEROS:[C

    array-length v0, p0

    neg-int v0, v0

    if-ge v1, v0, :cond_6

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    array-length p0, p0

    add-int/2addr v1, p0

    goto :goto_3

    :cond_6
    neg-int v0, v1

    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_5
    return-object v0
.end method

.method public static printDouble(D)Ljava/lang/String;
    .locals 3

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "INF"

    return-object p0

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    const-string p0, "-INF"

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "NaN"

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printFloat(F)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "INF"

    return-object p0

    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    const-string p0, "-INF"

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "NaN"

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printGDate(Lorg/apache/xmlbeans/GDate;Ljava/util/Collection;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/GDate;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printHexBinary([B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/util/HexBin;->bytesToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printInt(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printLong(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printQName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;Ljava/util/Collection;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1, v0}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string v1, "NamespaceContext does not provide prefix for namespaceURI "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->getQNameString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printShort(S)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static printTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->printDateTime(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static trimInitialPlus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static trimTrailingZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    :goto_0
    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method
