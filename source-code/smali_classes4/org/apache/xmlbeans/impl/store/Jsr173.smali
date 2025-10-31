.class public Lorg/apache/xmlbeans/impl/store/Jsr173;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Jsr173$UnsyncedJsr173;,
        Lorg/apache/xmlbeans/impl/store/Jsr173$SyncedJsr173;,
        Lorg/apache/xmlbeans/impl/store/Jsr173$Jsr173GateWay;,
        Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForString;,
        Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;,
        Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$XmlLineNumber:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$store$Jsr173:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Jsr173;->class$org$apache$xmlbeans$impl$store$Jsr173:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Jsr173"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Jsr173;->class$org$apache$xmlbeans$impl$store$Jsr173:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Jsr173;->$assertionsDisabled:Z

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

.method public static newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;II)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForString;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForString;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/xmlbeans/impl/store/Jsr173$UnsyncedJsr173;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {p1, p0, v0}, Lorg/apache/xmlbeans/impl/store/Jsr173$UnsyncedJsr173;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/store/Jsr173$SyncedJsr173;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {p1, p0, v0}, Lorg/apache/xmlbeans/impl/store/Jsr173$SyncedJsr173;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;)V

    return-object p1
.end method

.method public static newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 3

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    const-string v0, "SAVE_INNER"

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "SAVE_OUTER"

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    if-eqz v0, :cond_6

    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasAttrs()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasChildren()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForString;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getFirstChars()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForString;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;II)V

    goto :goto_3

    :cond_2
    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Jsr173;->$assertionsDisabled:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    new-instance p1, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForNode;

    invoke-direct {p1, p0, v2}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForNode;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    goto :goto_3

    :cond_5
    new-instance p1, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForNode;

    invoke-direct {p1, p0, v1}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForNode;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    goto :goto_3

    :cond_6
    :goto_2
    new-instance p1, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForString;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderForString;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;II)V

    :goto_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Jsr173$UnsyncedJsr173;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Jsr173$UnsyncedJsr173;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;)V

    return-object v0

    :cond_7
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Jsr173$SyncedJsr173;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Jsr173$SyncedJsr173;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;)V

    return-object v0
.end method

.method public static nodeFromStream(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/w3c/dom/Node;
    .locals 2

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$Jsr173GateWay;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/apache/xmlbeans/impl/store/Jsr173$Jsr173GateWay;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$Jsr173GateWay;->_l:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->nodeFromStreamImpl(Lorg/apache/xmlbeans/impl/store/Jsr173$Jsr173GateWay;)Lorg/w3c/dom/Node;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_1
    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->nodeFromStreamImpl(Lorg/apache/xmlbeans/impl/store/Jsr173$Jsr173GateWay;)Lorg/w3c/dom/Node;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static nodeFromStreamImpl(Lorg/apache/xmlbeans/impl/store/Jsr173$Jsr173GateWay;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Jsr173$Jsr173GateWay;->_xs:Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173$XMLStreamReaderBase;->getStreamCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
