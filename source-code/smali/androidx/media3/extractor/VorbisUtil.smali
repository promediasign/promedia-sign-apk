.class public abstract Landroidx/media3/extractor/VorbisUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;,
        Landroidx/media3/extractor/VorbisUtil$CommentHeader;,
        Landroidx/media3/extractor/VorbisUtil$Mode;
    }
.end annotation


# direct methods
.method public static getVorbisToAndroidChannelLayoutMapping(I)[I
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq p0, v5, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array p0, v0, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_1
    new-array p0, v1, [I

    fill-array-data p0, :array_1

    return-object p0

    :cond_2
    new-array p0, v3, [I

    fill-array-data p0, :array_2

    return-object p0

    :cond_3
    filled-new-array {v6, v7, v8, v5, v2}, [I

    move-result-object p0

    return-object p0

    :cond_4
    filled-new-array {v6, v7, v8}, [I

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method

.method public static iLog(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    long-to-double p2, p2

    div-double/2addr v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/common/Metadata;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "="

    .line 21
    .line 22
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    array-length v5, v4

    .line 27
    const/4 v6, 0x2

    .line 28
    const-string v7, "VorbisUtil"

    .line 29
    .line 30
    if-eq v5, v6, :cond_0

    .line 31
    .line 32
    const-string v4, "Failed to parse Vorbis comment: "

    .line 33
    .line 34
    invoke-static {v4, v3, v7}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    aget-object v3, v4, v1

    .line 39
    .line 40
    const-string v5, "METADATA_BLOCK_PICTURE"

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v5, 0x1

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    :try_start_0
    aget-object v3, v4, v5

    .line 50
    .line 51
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 56
    .line 57
    invoke-direct {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 58
    .line 59
    .line 60
    invoke-static {v4}, Landroidx/media3/extractor/metadata/flac/PictureFrame;->fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v3

    .line 69
    const-string v4, "Failed to parse vorbis picture"

    .line 70
    .line 71
    invoke-static {v7, v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance v3, Landroidx/media3/extractor/metadata/vorbis/VorbisComment;

    .line 76
    .line 77
    aget-object v6, v4, v1

    .line 78
    .line 79
    aget-object v4, v4, v5

    .line 80
    .line 81
    invoke-direct {v3, v6, v4}, Landroidx/media3/extractor/metadata/vorbis/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    new-instance p0, Landroidx/media3/common/Metadata;

    .line 99
    .line 100
    invoke-direct {p0, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-object p0
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

.method public static parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/16 v5, 0xff

    if-lez v4, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v4

    if-ne v4, v5, :cond_0

    add-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v6

    if-ne v6, v5, :cond_1

    add-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v1, v3

    new-array v3, v4, [B

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-static {p0, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v4, v1, [B

    invoke-static {p0, v0, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static readFloors(Landroidx/media3/extractor/VorbisBitArray;)V
    .locals 15

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_9

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_7

    if-ne v6, v2, :cond_6

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    new-array v6, v5, [I

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_1

    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v6, v10

    if-le v11, v9, :cond_0

    move v9, v11

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    new-array v10, v9, [I

    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x2

    if-ge v11, v9, :cond_4

    const/4 v13, 0x3

    invoke-virtual {p0, v13}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    invoke-virtual {p0, v12}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    if-lez v12, :cond_2

    invoke-virtual {p0, v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_2
    const/4 v13, 0x0

    :goto_3
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_3

    invoke-virtual {p0, v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v12}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v8, v5, :cond_8

    aget v12, v6, v8

    aget v12, v10, v12

    add-int/2addr v9, v12

    :goto_5
    if-ge v11, v9, :cond_5

    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {p0, v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_8

    invoke-virtual {p0, v8}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static readMappings(ILandroidx/media3/extractor/VorbisBitArray;)V
    .locals 11

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mapping type other than 0 not supported: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p1}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    invoke-virtual {p1, v7}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Landroidx/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-static {v9}, Landroidx/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_5

    if-le v4, v1, :cond_3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, p0, :cond_3

    invoke-virtual {p1, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    invoke-virtual {p1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p1, v7}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string p0, "to reserved bits must be zero after mapping coupling steps"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_6
    return-void
.end method

.method private static readModes(Landroidx/media3/extractor/VorbisBitArray;)[Landroidx/media3/extractor/VorbisUtil$Mode;
    .locals 8

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Landroidx/media3/extractor/VorbisUtil$Mode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    new-instance v7, Landroidx/media3/extractor/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Landroidx/media3/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static readResidues(Landroidx/media3/extractor/VorbisBitArray;)V
    .locals 12

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_2
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v9

    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_4

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_3

    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    invoke-virtual {p0, v6}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string p0, "residueType greater than 2 is not decodable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_6
    return-void
.end method

.method public static readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/VorbisUtil$CommentHeader;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Landroidx/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    return-object p0
.end method

.method public static readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;
    .locals 8

    .line 2
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    invoke-static {p1, p0, v0}, Landroidx/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v4, v2

    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    :goto_0
    int-to-long v5, v0

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "framing bit expected to be set"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    new-instance p0, Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    invoke-direct {p0, p1, v4, v1}, Landroidx/media3/extractor/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static readVorbisIdentificationHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;
    .locals 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-static {v0, v2, v1}, Landroidx/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    const/4 v7, -0x1

    if-gtz v6, :cond_0

    const/4 v6, -0x1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    if-gtz v8, :cond_1

    const/4 v8, -0x1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    if-gtz v9, :cond_2

    const/4 v9, -0x1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v10, v7, 0xf

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    int-to-double v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v11, v11

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/2addr v7, v0

    if-lez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    move-object v2, v1

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v0

    invoke-direct/range {v2 .. v12}, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    return-object v1
.end method

.method public static readVorbisModes(Landroidx/media3/common/util/ParsableByteArray;I)[Landroidx/media3/extractor/VorbisUtil$Mode;
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Landroidx/media3/extractor/VorbisBitArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media3/extractor/VorbisBitArray;-><init>([B)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    invoke-static {v2}, Landroidx/media3/extractor/VorbisUtil;->skipBook(Landroidx/media3/extractor/VorbisBitArray;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_1
    const/4 v0, 0x0

    if-ge v1, p0, :cond_2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "placeholder of time domain transforms not zeroed out"

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {v2}, Landroidx/media3/extractor/VorbisUtil;->readFloors(Landroidx/media3/extractor/VorbisBitArray;)V

    invoke-static {v2}, Landroidx/media3/extractor/VorbisUtil;->readResidues(Landroidx/media3/extractor/VorbisBitArray;)V

    invoke-static {p1, v2}, Landroidx/media3/extractor/VorbisUtil;->readMappings(ILandroidx/media3/extractor/VorbisBitArray;)V

    invoke-static {v2}, Landroidx/media3/extractor/VorbisUtil;->readModes(Landroidx/media3/extractor/VorbisBitArray;)[Landroidx/media3/extractor/VorbisUtil$Mode;

    move-result-object p0

    invoke-virtual {v2}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    const-string p0, "framing bit after modes not set as expected"

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static skipBook(Landroidx/media3/extractor/VorbisBitArray;)V
    .locals 7

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    const/4 v3, 0x0

    if-ne v1, v2, :cond_9

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v2

    :goto_0
    if-ge v4, v0, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :goto_1
    if-ge v4, v0, :cond_3

    sub-int v2, v0, v4

    invoke-static {v2}, Landroidx/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_8

    const/4 v3, 0x1

    if-eq v4, v3, :cond_4

    if-ne v4, v5, :cond_7

    :cond_4
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v5}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v2}, Landroidx/media3/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v3}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    if-ne v4, v3, :cond_6

    if-eqz v1, :cond_5

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-static {v3, v4, v0, v1}, Landroidx/media3/extractor/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_6
    int-to-long v3, v0

    int-to-long v0, v1

    mul-long v0, v0, v3

    :goto_2
    int-to-long v2, v2

    mul-long v0, v0, v2

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Landroidx/media3/extractor/VorbisBitArray;->skipBits(I)V

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/extractor/VorbisBitArray;->getPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    if-eqz p2, :cond_0

    return v3

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "too short header: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_3

    if-eqz p2, :cond_2

    return v3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "expected header type "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    return v3

    :cond_6
    const-string p0, "expected characters \'vorbis\'"

    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method
