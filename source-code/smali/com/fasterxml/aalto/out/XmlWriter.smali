.class public abstract Lcom/fasterxml/aalto/out/XmlWriter;
.super Lcom/fasterxml/aalto/out/WNameFactory;
.source "SourceFile"


# instance fields
.field protected final _cfgNsAware:Z

.field protected final _checkContent:Z

.field protected final _checkNames:Z

.field protected final _config:Lcom/fasterxml/aalto/out/WriterConfig;

.field protected _copyBuffer:[C

.field protected final _copyBufferLen:I

.field protected _locPastChars:I

.field protected _locRowNr:I

.field protected _locRowStartOffset:I

.field protected _xml11:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;)V
    .locals 2

    invoke-direct {p0}, Lcom/fasterxml/aalto/out/WNameFactory;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_xml11:Z

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locPastChars:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowStartOffset:I

    iput-object p1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Lcom/fasterxml/aalto/out/WriterConfig;->allocMediumCBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    array-length v0, v0

    iput v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBufferLen:I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->isNamespaceAware()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_cfgNsAware:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willCheckContent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_checkContent:Z

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willCheckNames()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_checkNames:Z

    return-void
.end method

.method public static final guessEncodingBitSize(Lcom/fasterxml/aalto/out/WriterConfig;)I
    .locals 3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/WriterConfig;->getPreferredEncoding()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/fasterxml/aalto/util/CharsetNames;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const-string v1, "ISO-8859-1"

    const/16 v2, 0x8

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    const-string v1, "US-ASCII"

    if-ne p0, v1, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    const-string v1, "UTF-16"

    if-eq p0, v1, :cond_5

    const-string v1, "UTF-16BE"

    if-eq p0, v1, :cond_5

    const-string v1, "UTF-16LE"

    if-eq p0, v1, :cond_5

    const-string v1, "UTF-32BE"

    if-eq p0, v1, :cond_5

    const-string v1, "UTF-32LE"

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract _closeTarget(Z)V
.end method

.method public _releaseBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_copyBuffer:[C

    iget-object v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/out/WriterConfig;->freeMediumCBuffer([C)V

    :cond_0
    return-void
.end method

.method public final close(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->flush()V

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->_releaseBuffers()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willAutoCloseOutput()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->_closeTarget(Z)V

    return-void
.end method

.method public enableXml11()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_xml11:Z

    return-void
.end method

.method public abstract flush()V
.end method

.method public getAbsOffset()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locPastChars:I

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->getOutputPtr()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getColumn()I
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->getOutputPtr()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowStartOffset:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getHighestEncodable()I
.end method

.method public abstract getOutputPtr()I
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_locRowNr:I

    return v0
.end method

.method public reportFailedEscaping(Ljava/lang/String;I)V
    .locals 3

    const v0, 0xfffe

    if-eq p2, v0, :cond_0

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    const v0, 0xd800

    if-lt p2, v0, :cond_1

    const v0, 0xdfff

    if-gt p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_1
    const/16 v0, 0x20

    if-ge p2, v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/out/WriterConfig;->isXml11()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/out/XmlWriter;->reportInvalidChar(I)V

    :cond_3
    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->WERR_NO_ESCAPING:Ljava/lang/String;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const/4 p1, 0x1

    aput-object v1, p2, p1

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    return-void
.end method

.method public reportInvalidChar(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string v0, "Invalid null character in text to output"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x20

    .line 12
    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x7f

    .line 16
    .line 17
    if-lt p1, v0, :cond_3

    .line 18
    .line 19
    const/16 v0, 0x9f

    .line 20
    .line 21
    if-gt p1, v0, :cond_3

    .line 22
    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Invalid white space character (0x"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ") in text to output"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/fasterxml/aalto/out/XmlWriter;->_xml11:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const-string v1, " (can only be output using character entity)"

    .line 51
    .line 52
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    const v0, 0x10ffff

    .line 60
    .line 61
    .line 62
    if-le p1, v0, :cond_4

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "Illegal unicode character point (0x"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ") to output; max is 0x10FFFF as per RFC 3629"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    const v0, 0xd800

    .line 91
    .line 92
    .line 93
    if-lt p1, v0, :cond_5

    .line 94
    .line 95
    const v0, 0xdfff

    .line 96
    .line 97
    .line 98
    if-gt p1, v0, :cond_5

    .line 99
    .line 100
    const-string v0, "Illegal surrogate pair -- can only be output via character entities (for current encoding), which are not allowed in this content"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, "Invalid XML character "

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/fasterxml/aalto/util/XmlChars;->getCharDesc(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p1, " in text to output"

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    .line 134
    .line 135
    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    .line 136
    .line 137
    .line 138
    throw v0
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

.method public reportNwfContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->throwOutputError(Ljava/lang/String;)V

    return-void
.end method

.method public reportNwfContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->reportNwfContent(Ljava/lang/String;)V

    return-void
.end method

.method public reportNwfName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/out/XmlWriter;->throwOutputError(Ljava/lang/String;)V

    return-void
.end method

.method public throwOutputError(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/XmlWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    invoke-direct {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/fasterxml/aalto/impl/IoStreamException;

    invoke-direct {v0, p1}, Lcom/fasterxml/aalto/impl/IoStreamException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public abstract writeAttribute(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)V
.end method

.method public abstract writeCData(Ljava/lang/String;)I
.end method

.method public abstract writeCharacters(Ljava/lang/String;)V
.end method

.method public abstract writeCharacters([CII)V
.end method

.method public abstract writeComment(Ljava/lang/String;)I
.end method

.method public abstract writeDTD(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract writeDTD(Ljava/lang/String;)V
.end method

.method public abstract writeEndTag(Lcom/fasterxml/aalto/out/WName;)V
.end method

.method public abstract writeEntityReference(Lcom/fasterxml/aalto/out/WName;)V
.end method

.method public abstract writePI(Lcom/fasterxml/aalto/out/WName;Ljava/lang/String;)I
.end method

.method public abstract writeRaw(Ljava/lang/String;II)V
.end method

.method public abstract writeSpace(Ljava/lang/String;)V
.end method

.method public abstract writeSpace([CII)V
.end method

.method public abstract writeStartTagEmptyEnd()V
.end method

.method public abstract writeStartTagEnd()V
.end method

.method public abstract writeStartTagStart(Lcom/fasterxml/aalto/out/WName;)V
.end method

.method public abstract writeXmlDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
