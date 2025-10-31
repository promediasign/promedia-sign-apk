.class public Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;
    }
.end annotation


# static fields
.field static synthetic class$org$apache$xmlbeans$impl$richParser$XMLStreamReaderExtImpl:Ljava/lang/Class;


# instance fields
.field private final _charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

.field private _defaultValue:Ljava/lang/String;

.field private final _xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    new-instance p1, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;-><init>(Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_defaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_defaultValue:Ljava/lang/String;

    return-object p1
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


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->close()V

    return-void
.end method

.method public getAttributeBase64Value(I)Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/Base64;->decode([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    const-string v1, "invalid base64Binary value"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p1
.end method

.method public getAttributeBase64Value(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/Base64;->decode([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p2

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object p2

    const-string v0, "invalid base64Binary value"

    invoke-direct {p1, v0, p2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p1
.end method

.method public getAttributeBigDecimalValue(I)Ljava/math/BigDecimal;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeBigDecimalValue(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeBigIntegerValue(I)Ljava/math/BigInteger;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeBigIntegerValue(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeBooleanValue(I)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexBoolean(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexBoolean(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeByteValue(I)B
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexByte(Ljava/lang/CharSequence;)B

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeByteValue(Ljava/lang/String;Ljava/lang/String;)B
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexByte(Ljava/lang/CharSequence;)B

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeCalendarValue(I)Lorg/apache/xmlbeans/XmlCalendar;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeCalendarValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCalendar;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/GDateBuilder;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeDateValue(I)Ljava/util/Date;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->getDate()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeDateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/GDateBuilder;->getDate()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeDoubleValue(I)D
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexDouble(Ljava/lang/CharSequence;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeDoubleValue(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexDouble(Ljava/lang/CharSequence;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeFloatValue(I)F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexFloat(Ljava/lang/CharSequence;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexFloat(Ljava/lang/CharSequence;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeGDateValue(I)Lorg/apache/xmlbeans/GDate;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/GDate;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDate;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeGDateValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/GDate;
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/GDate;

    invoke-direct {p2, p1}, Lorg/apache/xmlbeans/GDate;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeGDurationValue(I)Lorg/apache/xmlbeans/GDuration;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/GDuration;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDuration;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeGDurationValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/GDuration;
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/GDuration;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/GDuration;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeHexBinaryValue(I)Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/HexBin;->decode([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    const-string v1, "invalid hexBinary value"

    invoke-direct {p1, v1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p1
.end method

.method public getAttributeHexBinaryValue(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/HexBin;->decode([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p2

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object p2

    const-string v0, "invalid hexBinary value"

    invoke-direct {p1, v0, p2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p1
.end method

.method public getAttributeIntValue(I)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInt(Ljava/lang/CharSequence;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInt(Ljava/lang/CharSequence;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeLongValue(I)J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexLong(Ljava/lang/CharSequence;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeLongValue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexLong(Ljava/lang/CharSequence;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeName(I)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeName(I)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeQNameValue(I)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexQName(Ljava/lang/CharSequence;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeQNameValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexQName(Ljava/lang/CharSequence;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeShortValue(I)S
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexShort(Ljava/lang/CharSequence;)S

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getAttributeShortValue(Ljava/lang/String;Ljava/lang/String;)S
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexShort(Ljava/lang/CharSequence;)S

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw p2
.end method

.method public getAttributeStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeStringValue(II)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->collapse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reloadAtt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeStringValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->collapse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBase64Value()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/Base64;->decode([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    const-string v2, "invalid base64Binary value"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getBooleanValue()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexBoolean(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getByteValue()B
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexByte(Ljava/lang/CharSequence;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getCalendarValue()Lorg/apache/xmlbeans/XmlCalendar;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getDoubleValue()D
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexDouble(Ljava/lang/CharSequence;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    return v0
.end method

.method public getFloatValue()F
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexFloat(Ljava/lang/CharSequence;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getGDateValue()Lorg/apache/xmlbeans/GDate;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexGDate(Ljava/lang/CharSequence;)Lorg/apache/xmlbeans/GDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getGDurationValue()Lorg/apache/xmlbeans/GDuration;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/GDuration;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/GDuration;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getHexBinaryValue()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/HexBin;->decode([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v1

    const-string v2, "invalid hexBinary value"

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v0
.end method

.method public getIntValue()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInt(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLongValue()J
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexLong(Ljava/lang/CharSequence;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexQName(Ljava/lang/CharSequence;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getShortValue()S
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexShort(Ljava/lang/CharSequence;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/InvalidLexicalValueException;-><init>(Ljava/lang/Throwable;Lorg/apache/poi/javax/xml/stream/Location;)V

    throw v1
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->reload(I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_charSeq:Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl$CharSeqTrimWS;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->collapse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result p1

    return p1
.end method

.method public getTextCharacters()[C
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v0

    return v0
.end method

.method public getUnderlyingXmlStream()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v0

    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result p1

    return p1
.end method

.method public isCharacters()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result v0

    return v0
.end method

.method public isEndElement()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_defaultValue:Ljava/lang/String;

    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExtImpl;->_xmlStream:Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v0

    return v0
.end method
