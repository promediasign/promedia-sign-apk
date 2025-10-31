.class public Lorg/apache/poi/util/RLEDecompressingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final POWER2:[I


# instance fields
.field private final buf:[B

.field private final in:Ljava/io/InputStream;

.field private len:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Header byte 0x01 expected, received 0x%02X"

    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static decompress([B)[B
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->decompress([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decompress([BII)[B
    .locals 2

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance p0, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {p0, v1}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getCopyLenBits(I)I
    .locals 2

    const/16 v0, 0xb

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    aget v1, v1, v0

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    rsub-int/lit8 p0, v0, 0xf

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    return p0
.end method

.method private readChunk()I
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-direct {p0, v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    and-int/lit16 v4, v2, 0xfff

    .line 16
    .line 17
    add-int/2addr v4, v0

    .line 18
    and-int/lit16 v5, v2, 0x7000

    .line 19
    .line 20
    const/16 v6, 0x3000

    .line 21
    .line 22
    if-ne v5, v6, :cond_b

    .line 23
    .line 24
    const v5, 0x8000

    .line 25
    .line 26
    .line 27
    and-int/2addr v2, v5

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 31
    .line 32
    iget-object v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-lt v0, v4, :cond_1

    .line 39
    .line 40
    return v4

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 44
    .line 45
    const-string v1, "Not enough bytes read, expected "

    .line 46
    .line 47
    invoke-static {v4, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    const/4 v2, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    :cond_3
    :goto_0
    if-ge v2, v4, :cond_a

    .line 58
    .line 59
    iget-object v6, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-int/2addr v2, v0

    .line 66
    if-ne v6, v3, :cond_4

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/4 v7, 0x0

    .line 70
    :goto_1
    const/16 v8, 0x8

    .line 71
    .line 72
    if-ge v7, v8, :cond_3

    .line 73
    .line 74
    if-lt v2, v4, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    sget-object v8, Lorg/apache/poi/util/RLEDecompressingInputStream;->POWER2:[I

    .line 78
    .line 79
    aget v9, v8, v7

    .line 80
    .line 81
    and-int/2addr v9, v6

    .line 82
    if-nez v9, :cond_7

    .line 83
    .line 84
    iget-object v8, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-ne v8, v3, :cond_6

    .line 91
    .line 92
    return v3

    .line 93
    :cond_6
    iget-object v9, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    .line 94
    .line 95
    add-int/lit8 v10, v5, 0x1

    .line 96
    .line 97
    int-to-byte v8, v8

    .line 98
    aput-byte v8, v9, v5

    .line 99
    .line 100
    add-int/2addr v2, v0

    .line 101
    move v5, v10

    .line 102
    goto :goto_3

    .line 103
    :cond_7
    iget-object v9, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    .line 104
    .line 105
    invoke-direct {p0, v9}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-ne v9, v3, :cond_8

    .line 110
    .line 111
    return v3

    .line 112
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 113
    .line 114
    add-int/lit8 v10, v5, -0x1

    .line 115
    .line 116
    invoke-static {v10}, Lorg/apache/poi/util/RLEDecompressingInputStream;->getCopyLenBits(I)I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    shr-int v11, v9, v10

    .line 121
    .line 122
    add-int/2addr v11, v0

    .line 123
    aget v8, v8, v10

    .line 124
    .line 125
    sub-int/2addr v8, v0

    .line 126
    and-int/2addr v8, v9

    .line 127
    add-int/lit8 v8, v8, 0x3

    .line 128
    .line 129
    sub-int v9, v5, v11

    .line 130
    .line 131
    add-int/2addr v8, v9

    .line 132
    :goto_2
    if-ge v9, v8, :cond_9

    .line 133
    .line 134
    iget-object v10, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    .line 135
    .line 136
    add-int/lit8 v11, v5, 0x1

    .line 137
    .line 138
    aget-byte v12, v10, v9

    .line 139
    .line 140
    aput-byte v12, v10, v5

    .line 141
    .line 142
    add-int/2addr v9, v0

    .line 143
    move v5, v11

    .line 144
    goto :goto_2

    .line 145
    :cond_9
    :goto_3
    add-int/2addr v7, v0

    .line 146
    goto :goto_1

    .line 147
    :cond_a
    :goto_4
    return v5

    .line 148
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 151
    .line 152
    const v5, 0xe000

    .line 153
    .line 154
    .line 155
    and-int/2addr v2, v5

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v2, v0, v1

    .line 163
    .line 164
    const-string v1, "Chunksize header A should be 0x3000, received 0x%04X"

    .line 165
    .line 166
    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v3
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
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_3

    return v1

    :cond_3
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method private readShort(Ljava/io/InputStream;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lez v0, :cond_0

    iget v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    if-lt v2, v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    iget v1, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 6

    .line 3
    iget v0, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    move v2, p2

    move v0, p3

    :goto_0
    if-lez v0, :cond_3

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lt v3, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-ne v3, v1, :cond_2

    if-le v2, p2, :cond_1

    sub-int v1, v2, p2

    :cond_1
    return v1

    :cond_2
    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->buf:[B

    iget v5, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    invoke-static {v4, v5, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v0, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return p3
.end method

.method public readInt()I
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public readShort()I
    .locals 1

    .line 1
    invoke-direct {p0, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 5

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readChunk()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->len:I

    iget v3, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    iget v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/poi/util/RLEDecompressingInputStream;->pos:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide p1
.end method
