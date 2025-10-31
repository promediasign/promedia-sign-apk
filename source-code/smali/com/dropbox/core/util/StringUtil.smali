.class public abstract Lcom/dropbox/core/util/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HexDigits:[C

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dropbox/core/util/StringUtil;->HexDigits:[C

    return-void

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/StringUtil;->base64EncodeGeneric(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static base64EncodeGeneric(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x40

    .line 10
    .line 11
    if-ne v0, v1, :cond_4

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x2

    .line 15
    add-int/2addr v0, v1

    .line 16
    div-int/lit8 v0, v0, 0x3

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    add-int/lit8 v3, v0, 0x3

    .line 27
    .line 28
    array-length v4, p1

    .line 29
    if-gt v3, v4, :cond_0

    .line 30
    .line 31
    add-int/lit8 v3, v0, 0x1

    .line 32
    .line 33
    aget-byte v4, p1, v0

    .line 34
    .line 35
    and-int/lit16 v5, v4, 0xff

    .line 36
    .line 37
    add-int/lit8 v6, v0, 0x2

    .line 38
    .line 39
    aget-byte v3, p1, v3

    .line 40
    .line 41
    and-int/lit16 v7, v3, 0xff

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x3

    .line 44
    .line 45
    aget-byte v6, p1, v6

    .line 46
    .line 47
    and-int/lit16 v8, v6, 0xff

    .line 48
    .line 49
    ushr-int/2addr v5, v1

    .line 50
    and-int/lit8 v4, v4, 0x3

    .line 51
    .line 52
    shl-int/lit8 v4, v4, 0x4

    .line 53
    .line 54
    ushr-int/lit8 v7, v7, 0x4

    .line 55
    .line 56
    or-int/2addr v4, v7

    .line 57
    and-int/lit8 v3, v3, 0xf

    .line 58
    .line 59
    shl-int/2addr v3, v1

    .line 60
    ushr-int/lit8 v7, v8, 0x6

    .line 61
    .line 62
    or-int/2addr v3, v7

    .line 63
    and-int/lit8 v6, v6, 0x3f

    .line 64
    .line 65
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    array-length v3, p1

    .line 95
    sub-int/2addr v3, v0

    .line 96
    if-nez v3, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/4 v4, 0x1

    .line 100
    if-ne v3, v4, :cond_2

    .line 101
    .line 102
    aget-byte p1, p1, v0

    .line 103
    .line 104
    and-int/lit16 v0, p1, 0xff

    .line 105
    .line 106
    ushr-int/2addr v0, v1

    .line 107
    and-int/lit8 p1, p1, 0x3

    .line 108
    .line 109
    shl-int/lit8 p1, p1, 0x4

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p0, "=="

    .line 126
    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    if-ne v3, v1, :cond_3

    .line 132
    .line 133
    add-int/lit8 v3, v0, 0x1

    .line 134
    .line 135
    aget-byte v0, p1, v0

    .line 136
    .line 137
    and-int/lit16 v4, v0, 0xff

    .line 138
    .line 139
    aget-byte p1, p1, v3

    .line 140
    .line 141
    and-int/lit16 v3, p1, 0xff

    .line 142
    .line 143
    ushr-int/2addr v4, v1

    .line 144
    and-int/lit8 v0, v0, 0x3

    .line 145
    .line 146
    shl-int/lit8 v0, v0, 0x4

    .line 147
    .line 148
    ushr-int/lit8 v3, v3, 0x4

    .line 149
    .line 150
    or-int/2addr v0, v3

    .line 151
    and-int/lit8 p1, p1, 0xf

    .line 152
    .line 153
    shl-int/2addr p1, v1

    .line 154
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const/16 p0, 0x3d

    .line 176
    .line 177
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v2, "data.length: "

    .line 190
    .line 191
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    array-length p1, p1

    .line 195
    const-string v2, ", i: "

    .line 196
    .line 197
    invoke-static {v1, p1, v0, v2}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v1, "\'digits\' must be 64 characters long: "

    .line 210
    .line 211
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1

    .line 229
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    const-string p1, "\'digits\' can\'t be null"

    .line 232
    .line 233
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p0

    .line 237
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 238
    .line 239
    const-string p1, "\'data\' can\'t be null"

    .line 240
    .line 241
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p0
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
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
.end method

.method public static hexDigit(I)C
    .locals 1

    sget-object v0, Lcom/dropbox/core/util/StringUtil;->HexDigits:[C

    aget-char p0, v0, p0

    return p0
.end method

.method public static javaQuotedLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    if-eq v3, v1, :cond_4

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v5, v3, 0x8

    and-int/lit8 v5, v5, 0xf

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    and-int/lit8 v3, v3, 0xf

    const-string v7, "\\u"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/dropbox/core/util/StringUtil;->hexDigit(I)C

    move-result v3

    goto :goto_1

    :cond_1
    const-string v3, "\\n"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v3, "\\r"

    goto :goto_2

    :cond_3
    const-string v3, "\\\\"

    goto :goto_2

    :cond_4
    const-string v3, "\\\""

    goto :goto_2

    :cond_5
    const-string v3, "\\t"

    goto :goto_2

    :cond_6
    const-string v3, "\\000"

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaQuotedLiterals(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/dropbox/core/util/StringUtil;->javaQuotedLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaQuotedLiterals([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->javaQuotedLiterals(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jq(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->javaQuotedLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jq([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->javaQuotedLiterals([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static secureStringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static stringToUtf8(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "UTF-8 should always be supported"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static urlSafeBase64Encode([B)Ljava/lang/String;
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/StringUtil;->base64EncodeGeneric(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utf8ToString([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/dropbox/core/util/StringUtil;->utf8ToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utf8ToString([BII)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/dropbox/core/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
