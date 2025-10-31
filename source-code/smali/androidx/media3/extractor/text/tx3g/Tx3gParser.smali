.class public final Landroidx/media3/extractor/text/tx3g/Tx3gParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# instance fields
.field private final calculatedVideoTrackHeight:I

.field private final customVerticalPlacement:Z

.field private final defaultColorRgba:I

.field private final defaultFontFace:I

.field private final defaultFontFamily:Ljava/lang/String;

.field private final defaultVerticalPlacement:F

.field private final parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    aget-byte v5, p1, v0

    iput v5, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFace:I

    const/16 v5, 0x1a

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultColorRgba:I

    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    invoke-static {p1, v5, v0}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Serif"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFamily:Ljava/lang/String;

    const/16 v0, 0x19

    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->calculatedVideoTrackHeight:I

    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->customVerticalPlacement:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultVerticalPlacement:F

    goto :goto_0

    :cond_3
    iput v1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultVerticalPlacement:F

    goto :goto_0

    :cond_4
    iput v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFace:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultColorRgba:I

    iput-object v2, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFamily:Ljava/lang/String;

    iput-boolean v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->customVerticalPlacement:Z

    iput v1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultVerticalPlacement:F

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->calculatedVideoTrackHeight:I

    :goto_0
    return-void
.end method

.method private applyStyleRecord(Landroidx/media3/common/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const-string v3, ")."

    .line 44
    .line 45
    const-string v5, "Tx3gParser"

    .line 46
    .line 47
    if-le v1, v2, :cond_1

    .line 48
    .line 49
    const-string v2, "Truncating styl end ("

    .line 50
    .line 51
    const-string v6, ") to cueText.length() ("

    .line 52
    .line 53
    invoke-static {v1, v2, v6}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v5, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    :cond_1
    if-lt v0, v1, :cond_2

    .line 79
    .line 80
    const-string p1, "Ignoring styl with start ("

    .line 81
    .line 82
    const-string p2, ") >= end ("

    .line 83
    .line 84
    invoke-static {p1, v0, p2, v1, v3}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v5, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    iget v5, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFace:I

    .line 93
    .line 94
    const/4 v8, 0x0

    .line 95
    move-object v3, p2

    .line 96
    move v6, v0

    .line 97
    move v7, v1

    .line 98
    invoke-static/range {v3 .. v8}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 99
    .line 100
    .line 101
    iget v5, p0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultColorRgba:I

    .line 102
    .line 103
    move v4, p1

    .line 104
    invoke-static/range {v3 .. v8}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 105
    .line 106
    .line 107
    return-void
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

.method private static attachColor(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p5, :cond_3

    new-instance v3, Landroid/text/style/StyleSpan;

    if-eqz v2, :cond_2

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_2
    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_2
    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_2

    :cond_4
    :goto_3
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_6

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method private static attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "sans-serif"

    if-eq p1, v0, :cond_0

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const p1, 0xff0021

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static readSubtitleText(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v0, v3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {p0, v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public parse([BIILandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroidx/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    iget-object v3, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    add-int v4, v1, p3

    move-object/from16 v5, p1

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v3, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->readSubtitleText(Landroidx/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v2, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v11, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFace:I

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/high16 v15, 0xff0000

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v3

    invoke-static/range {v10 .. v15}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v11, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultColorRgba:I

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/4 v12, -0x1

    invoke-static/range {v10 .. v15}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    iget-object v1, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFamily:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    iget v1, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->defaultVerticalPlacement:F

    :goto_0
    iget-object v4, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/16 v6, 0x8

    if-lt v4, v6, :cond_5

    iget-object v4, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v6, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    iget-object v7, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    const v8, 0x7374796c

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    if-lt v7, v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v7, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    iget-object v9, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, v9, v3}, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->applyStyleRecord(Landroidx/media3/common/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const v8, 0x74626f78

    if-ne v7, v8, :cond_4

    iget-boolean v7, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->customVerticalPlacement:Z

    if-eqz v7, :cond_4

    iget-object v1, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lt v1, v9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v1, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    int-to-float v1, v1

    iget v7, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->calculatedVideoTrackHeight:I

    int-to-float v7, v7

    div-float/2addr v1, v7

    const/4 v7, 0x0

    const v8, 0x3f733333    # 0.95f

    invoke-static {v1, v7, v8}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v1

    :cond_4
    iget-object v7, v0, Landroidx/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    add-int/2addr v4, v6

    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_5
    new-instance v4, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v4}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v1

    new-instance v9, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v2, v9}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic parse([BLandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, LS/a;->a(Landroidx/media3/extractor/text/SubtitleParser;[BLandroidx/media3/extractor/text/SubtitleParser$OutputOptions;Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public final synthetic parseToLegacySubtitle([BII)Landroidx/media3/extractor/text/Subtitle;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LS/a;->b(Landroidx/media3/extractor/text/SubtitleParser;[BII)Landroidx/media3/extractor/text/Subtitle;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, LS/a;->c(Landroidx/media3/extractor/text/SubtitleParser;)V

    return-void
.end method
