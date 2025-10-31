.class public Lorg/h2/value/ValueTimestampTimeZone;
.super Lorg/h2/value/Value;
.source "SourceFile"


# static fields
.field static final DEFAULT_SCALE:I = 0xa

.field static final DISPLAY_SIZE:I = 0x1e

.field private static final GMT_TIMEZONE:Ljava/util/TimeZone;

.field public static final PRECISION:I = 0x1e


# instance fields
.field private final dateValue:J

.field private final timeNanos:J

.field private final timeZoneOffsetMins:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GMT"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/h2/value/ValueTimestampTimeZone;->GMT_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>(JJS)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p3, v0

    .line 7
    .line 8
    if-ltz v2, :cond_1

    .line 9
    .line 10
    const-wide v0, 0x4e94914f0000L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v2, p3, v0

    .line 16
    .line 17
    if-gez v2, :cond_1

    .line 18
    .line 19
    const/16 v0, -0x2d0

    .line 20
    .line 21
    if-lt p5, v0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x2d0

    .line 24
    .line 25
    if-ge p5, v0, :cond_0

    .line 26
    .line 27
    iput-wide p1, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    .line 28
    .line 29
    iput-wide p3, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    .line 30
    .line 31
    iput-short p5, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "timeZoneOffsetMins out of range "

    .line 37
    .line 38
    invoke-static {p5, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string p2, "timeNanos out of range "

    .line 49
    .line 50
    invoke-static {p2, p3, p4}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
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

.method private static appendTimeZone(Ljava/lang/StringBuilder;S)V
    .locals 3

    if-gez p1, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int p1, p1

    int-to-short p1, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    div-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    sub-int/2addr p1, v1

    int-to-short p1, p1

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-static {p0, v2, v0, v1}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    if-eqz p1, :cond_1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v0, p1

    invoke-static {p0, v2, v0, v1}, Lorg/h2/util/StringUtils;->appendZeroPadded(Ljava/lang/StringBuilder;IJ)V

    :cond_1
    return-void
.end method

.method public static fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 7

    new-instance v6, Lorg/h2/value/ValueTimestampTimeZone;

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/h2/value/ValueTimestampTimeZone;-><init>(JJS)V

    invoke-static {v6}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object p0

    check-cast p0, Lorg/h2/value/ValueTimestampTimeZone;

    return-object p0
.end method

.method public static get(Lorg/h2/api/TimestampWithTimeZone;)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 4

    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getYMD()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getNanosSinceMidnight()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/h2/api/TimestampWithTimeZone;->getTimeZoneOffsetMins()S

    move-result p0

    invoke-static {v0, v1, v2, v3, p0}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/h2/value/ValueTimestampTimeZone;->parseTry(Ljava/lang/String;)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "TIMESTAMP WITH TIME ZONE"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x55f7

    invoke-static {v1, v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static parseTry(Ljava/lang/String;)Lorg/h2/value/ValueTimestampTimeZone;
    .locals 10

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x54

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    :cond_0
    const/4 v2, -0x1

    .line 16
    if-gez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v3, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 25
    .line 26
    :goto_0
    const/4 v4, 0x0

    .line 27
    invoke-static {p0, v4, v1}, Lorg/h2/util/DateTimeUtils;->parseDateValue(Ljava/lang/String;II)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    if-gez v3, :cond_2

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v7, "Z"

    .line 42
    .line 43
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_3

    .line 48
    .line 49
    add-int/2addr v3, v2

    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_3
    const/16 v2, 0x2b

    .line 53
    .line 54
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-gez v2, :cond_4

    .line 59
    .line 60
    const/16 v2, 0x2d

    .line 61
    .line 62
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    :cond_4
    if-ltz v2, :cond_6

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "GMT"

    .line 71
    .line 72
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v2, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_5

    .line 92
    .line 93
    move v0, v2

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string v1, " ("

    .line 98
    .line 99
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, "?)"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_6
    add-int/lit8 v2, v1, 0x1

    .line 124
    .line 125
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-lez v0, :cond_8

    .line 130
    .line 131
    add-int/lit8 v2, v0, 0x1

    .line 132
    .line 133
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_7

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_8
    const/4 v0, 0x0

    .line 159
    move v9, v3

    .line 160
    move-object v3, v0

    .line 161
    move v0, v9

    .line 162
    :goto_1
    if-eqz v3, :cond_9

    .line 163
    .line 164
    sget-object v2, Lorg/h2/value/ValueTimestampTimeZone;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 165
    .line 166
    invoke-static {v2, v5, v6}, Lorg/h2/util/DateTimeUtils;->convertDateValueToMillis(Ljava/util/TimeZone;J)J

    .line 167
    .line 168
    .line 169
    move-result-wide v7

    .line 170
    invoke-virtual {v3, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    div-int/lit16 v2, v2, 0x3e8

    .line 175
    .line 176
    div-int/lit8 v2, v2, 0x3c

    .line 177
    .line 178
    int-to-short v4, v2

    .line 179
    :cond_9
    move v3, v0

    .line 180
    :goto_2
    const/4 v0, 0x1

    .line 181
    add-int/2addr v1, v0

    .line 182
    invoke-static {p0, v1, v3, v0}, Lorg/h2/util/DateTimeUtils;->parseTimeNanos(Ljava/lang/String;IIZ)J

    .line 183
    .line 184
    .line 185
    move-result-wide v0

    .line 186
    :goto_3
    invoke-static {v5, v6, v0, v1, v4}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0
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
.method public add(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "manipulating TIMESTAMP WITH TIME ZONE values is unsupported"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 12

    check-cast p1, Lorg/h2/value/ValueTimestampTimeZone;

    const-string p2, "UTC"

    invoke-static {p2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iget-wide v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    invoke-static {v0, v1, v2}, Lorg/h2/util/DateTimeUtils;->convertDateValueToMillis(Ljava/util/TimeZone;J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    iget-wide v4, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    const-wide v6, 0xdf8475800L

    div-long/2addr v4, v6

    add-long/2addr v0, v4

    iget-short v8, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    int-to-long v8, v8

    sub-long/2addr v0, v8

    invoke-static {p2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    iget-wide v8, p1, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    invoke-static {p2, v8, v9}, Lorg/h2/util/DateTimeUtils;->convertDateValueToMillis(Ljava/util/TimeZone;J)J

    move-result-wide v8

    div-long/2addr v8, v2

    iget-wide v2, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    div-long/2addr v2, v6

    add-long/2addr v8, v2

    iget-short p2, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    int-to-long v10, p2

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p2

    if-eqz p2, :cond_0

    return p2

    :cond_0
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    mul-long v4, v4, v6

    sub-long/2addr v0, v4

    iget-wide p1, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    mul-long v2, v2, v6

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lorg/h2/util/MathUtils;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public convertScale(ZI)Lorg/h2/value/Value;
    .locals 3

    const/16 p1, 0xa

    if-lt p2, p1, :cond_0

    return-object p0

    :cond_0
    if-ltz p2, :cond_2

    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/h2/value/ValueDecimal;->setScale(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    iget-short v2, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    invoke-static {v0, v1, p1, p2, v2}, Lorg/h2/value/ValueTimestampTimeZone;->fromDateValueAndNanos(JJS)Lorg/h2/value/ValueTimestampTimeZone;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "scale"

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/h2/value/ValueTimestampTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/h2/value/ValueTimestampTimeZone;

    iget-wide v3, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    iget-wide v5, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-short v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    iget-short p1, p1, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDateValue()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    return-wide v0
.end method

.method public getDisplaySize()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lorg/h2/api/TimestampWithTimeZone;

    iget-wide v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    iget-wide v3, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    iget-short v5, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/h2/api/TimestampWithTimeZone;-><init>(JJS)V

    return-object v6
.end method

.method public getPrecision()J
    .locals 2

    const-wide/16 v0, 0x1e

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMESTAMP WITH TIME ZONE \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-wide v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    invoke-static {v0, v1, v2}, Lorg/h2/value/ValueDate;->appendDate(Ljava/lang/StringBuilder;J)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/h2/value/ValueTime;->appendTime(Ljava/lang/StringBuilder;JZ)V

    iget-short v1, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    invoke-static {v0, v1}, Lorg/h2/value/ValueTimestampTimeZone;->appendTimeZone(Ljava/lang/StringBuilder;S)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeNanos()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    return-wide v0
.end method

.method public getTimeZoneOffsetMins()S
    .locals 1

    iget-short v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    return v0
.end method

.method public getTimestamp()Ljava/sql/Timestamp;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lorg/h2/value/ValueTimestampTimeZone;->dateValue:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeNanos:J

    xor-long/2addr v0, v3

    ushr-long v2, v3, v2

    xor-long/2addr v0, v2

    iget-short v2, p0, Lorg/h2/value/ValueTimestampTimeZone;->timeZoneOffsetMins:S

    int-to-long v2, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueTimestampTimeZone;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public subtract(Lorg/h2/value/Value;)Lorg/h2/value/Value;
    .locals 0

    const-string p1, "manipulating TIMESTAMP WITH TIME ZONE values is unsupported"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
