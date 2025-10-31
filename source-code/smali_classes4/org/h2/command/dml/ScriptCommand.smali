.class public Lorg/h2/command/dml/ScriptCommand;
.super Lorg/h2/command/dml/ScriptBase;
.source "SourceFile"


# instance fields
.field private buffer:[B

.field private charset:Ljava/nio/charset/Charset;

.field private data:Z

.field private drop:Z

.field private lineSeparator:[B

.field private lineSeparatorString:Ljava/lang/String;

.field private lobBlockSize:I

.field private nextLobId:I

.field private passwords:Z

.field private result:Lorg/h2/result/LocalResult;

.field private schemaNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Z

.field private simple:Z

.field private tables:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private tempLobTableCreated:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/dml/ScriptBase;-><init>(Lorg/h2/engine/Session;)V

    sget-object p1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    const/16 p1, 0x1000

    iput p1, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    return-void
.end method

.method private add(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    if-gt v3, v1, :cond_1

    .line 10
    .line 11
    aget-byte v2, v2, v0

    .line 12
    .line 13
    const/16 v3, 0xa

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    :cond_1
    const-string v2, "\n"

    .line 18
    .line 19
    iget-object v3, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparatorString:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v2, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_2
    const-string v2, ";"

    .line 26
    .line 27
    invoke-static {p1, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    .line 32
    .line 33
    if-eqz v2, :cond_6

    .line 34
    .line 35
    iget-object v2, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    array-length v3, v2

    .line 42
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    .line 43
    .line 44
    array-length v4, v4

    .line 45
    add-int/2addr v3, v4

    .line 46
    const/16 v4, 0x10

    .line 47
    .line 48
    invoke-static {v3, v4}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 53
    .line 54
    invoke-static {v2, v4}, Lorg/h2/util/Utils;->copy([B[B)[B

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iput-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 59
    .line 60
    array-length v4, v4

    .line 61
    if-le v3, v4, :cond_3

    .line 62
    .line 63
    new-array v4, v3, [B

    .line 64
    .line 65
    iput-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 66
    .line 67
    :cond_3
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 68
    .line 69
    array-length v5, v2

    .line 70
    invoke-static {v2, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    array-length v2, v2

    .line 74
    :goto_0
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    .line 75
    .line 76
    array-length v5, v4

    .line 77
    sub-int v5, v3, v5

    .line 78
    .line 79
    if-ge v2, v5, :cond_4

    .line 80
    .line 81
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 82
    .line 83
    const/16 v5, 0x20

    .line 84
    .line 85
    aput-byte v5, v4, v2

    .line 86
    .line 87
    add-int/2addr v2, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    array-length v2, v4

    .line 90
    sub-int v2, v3, v2

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    :goto_1
    if-ge v2, v3, :cond_5

    .line 94
    .line 95
    iget-object v5, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 96
    .line 97
    iget-object v6, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    .line 98
    .line 99
    aget-byte v6, v6, v4

    .line 100
    .line 101
    aput-byte v6, v5, v2

    .line 102
    .line 103
    add-int/2addr v2, v1

    .line 104
    add-int/2addr v4, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    iget-object v2, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    .line 107
    .line 108
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 109
    .line 110
    invoke-virtual {v2, v4, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    .line 112
    .line 113
    if-nez p2, :cond_7

    .line 114
    .line 115
    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-array p2, v1, [Lorg/h2/value/Value;

    .line 120
    .line 121
    aput-object p1, p2, v0

    .line 122
    .line 123
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-array p2, v1, [Lorg/h2/value/Value;

    .line 134
    .line 135
    aput-object p1, p2, v0

    .line 136
    .line 137
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_2
    return-void
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
.end method

.method public static combineBlob(Ljava/sql/Connection;I)Ljava/io/InputStream;
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "BDATA"

    invoke-static {p0, v0, p1}, Lorg/h2/command/dml/ScriptCommand;->getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;

    move-result-object p0

    new-instance p1, Lorg/h2/command/dml/ScriptCommand$3;

    invoke-direct {p1, p0}, Lorg/h2/command/dml/ScriptCommand$3;-><init>(Ljava/sql/ResultSet;)V

    return-object p1
.end method

.method public static combineClob(Ljava/sql/Connection;I)Ljava/io/Reader;
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "CDATA"

    invoke-static {p0, v0, p1}, Lorg/h2/command/dml/ScriptCommand;->getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;

    move-result-object p0

    new-instance p1, Lorg/h2/command/dml/ScriptCommand$4;

    invoke-direct {p1, p0}, Lorg/h2/command/dml/ScriptCommand$4;-><init>(Ljava/sql/ResultSet;)V

    return-object p1
.end method

.method private createResult()Lorg/h2/result/LocalResult;
    .locals 5

    new-instance v0, Lorg/h2/expression/ExpressionColumn;

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "SCRIPT"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/h2/expression/Expression;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Lorg/h2/result/LocalResult;

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-direct {v0, v3, v2, v1}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    return-object v0
.end method

.method private excludeSchema(Lorg/h2/schema/Schema;)Z
    .locals 4

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/schema/Schema;->getAllTablesAndViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Table;

    iget-object v3, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private excludeTable(Lorg/h2/table/Table;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private generateInsertValues(ILorg/h2/table/Table;)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v7}, Lorg/h2/table/Table;->getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v1

    iget-object v2, v0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-interface {v1, v2, v3, v3}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v2

    new-instance v4, Lorg/h2/util/StatementBuilder;

    const-string v5, "INSERT INTO "

    invoke-direct {v4, v5}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    array-length v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-string v9, ", "

    if-ge v8, v5, :cond_0

    aget-object v10, v2, v8

    invoke-virtual {v4, v9}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ") VALUES"

    invoke-virtual {v4, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-boolean v2, v0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    if-nez v2, :cond_1

    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_1
    invoke-virtual {v4, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    invoke-virtual {v4}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v4, p1

    :goto_1
    move-object v5, v3

    :cond_2
    invoke-interface {v1}, Lorg/h2/index/Cursor;->next()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_a

    invoke-interface {v1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v6

    if-nez v5, :cond_3

    new-instance v5, Lorg/h2/util/StatementBuilder;

    invoke-direct {v5, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v10, ",\n("

    invoke-virtual {v5, v10}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_2
    const/4 v10, 0x0

    :goto_3
    invoke-interface {v6}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v11

    if-ge v10, v11, :cond_7

    if-lez v10, :cond_4

    invoke-virtual {v5, v9}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :cond_4
    invoke-interface {v6, v10}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v11

    invoke-virtual {v11}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v12

    iget v14, v0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    int-to-long v14, v14

    cmp-long v16, v12, v14

    if-lez v16, :cond_6

    invoke-virtual {v11}, Lorg/h2/value/Value;->getType()I

    move-result v12

    const/16 v13, 0x10

    const-string v14, ")"

    if-ne v12, v13, :cond_5

    invoke-direct {v0, v11}, Lorg/h2/command/dml/ScriptCommand;->writeLobStream(Lorg/h2/value/Value;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SYSTEM_COMBINE_CLOB("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_5
    invoke-virtual {v5, v11}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_6

    :cond_5
    invoke-virtual {v11}, Lorg/h2/value/Value;->getType()I

    move-result v12

    const/16 v13, 0xf

    if-ne v12, v13, :cond_6

    invoke-direct {v0, v11}, Lorg/h2/command/dml/ScriptCommand;->writeLobStream(Lorg/h2/value/Value;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SYSTEM_COMBINE_BLOB("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v11}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v6, v4, 0x7f

    if-nez v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/h2/command/Prepared;->checkCanceled()V

    :cond_8
    iget-boolean v6, v0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->length()I

    move-result v6

    const/16 v10, 0x1000

    if-le v6, v10, :cond_2

    :cond_9
    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v8}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_b
    return v4
.end method

.method private static getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FROM SYSTEM_LOB_STREAM WHERE ID=? ORDER BY PART"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    sget-object v0, Lorg/h2/engine/SysProperties;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparatorString:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    return-void
.end method

.method private writeLobStream(Lorg/h2/value/Value;)I
    .locals 10

    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "CREATE TABLE IF NOT EXISTS SYSTEM_LOB_STREAM(ID INT NOT NULL, PART INT NOT NULL, CDATA VARCHAR, BDATA BINARY)"

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "CREATE PRIMARY KEY SYSTEM_LOB_STREAM_PRIMARY_KEY ON SYSTEM_LOB_STREAM(ID, PART)"

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CREATE ALIAS IF NOT EXISTS SYSTEM_COMBINE_CLOB FOR \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".combineClob\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CREATE ALIAS IF NOT EXISTS SYSTEM_COMBINE_BLOB FOR \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".combineBlob\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    :cond_0
    iget v0, p0, Lorg/h2/command/dml/ScriptCommand;->nextLobId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/h2/command/dml/ScriptCommand;->nextLobId:I

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v2

    const/16 v3, 0xf

    const-string v4, "INSERT INTO SYSTEM_LOB_STREAM VALUES("

    const-string v5, ", "

    const/4 v6, 0x0

    if-eq v2, v3, :cond_4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_3

    :cond_1
    iget v2, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    new-array v2, v2, [C

    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    invoke-static {p1, v2, v8}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    goto :goto_3

    :cond_2
    :try_start_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2, v6, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", NULL)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    :cond_4
    iget v2, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    new-array v2, v2, [B

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", NULL, \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    invoke-static {p1, v2, v7}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-gtz v7, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_3
    return v0

    :cond_6
    :try_start_5
    invoke-static {v2, v7}, Lorg/h2/util/StringUtils;->convertBytesToHex([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\')"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz p1, :cond_7

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v1
.end method


# virtual methods
.method public bridge synthetic checkPowerOff()V
    .locals 0

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->checkPowerOff()V

    return-void
.end method

.method public bridge synthetic checkWritingAllowed()V
    .locals 0

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->checkWritingAllowed()V

    return-void
.end method

.method public bridge synthetic getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDatabasePath()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobFileListCache()Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobStorage()Lorg/h2/store/LobStorageBackend;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobStorage()Lorg/h2/store/LobStorageBackend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobSyncObject()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobSyncObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxLengthInplaceLob()I
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getMaxLengthInplaceLob()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isTransactional()Z
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->isTransactional()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic needRecompile()Z
    .locals 1

    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->needRecompile()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/h2/command/dml/ScriptBase;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 10

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/User;->checkAdmin()V

    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->reset()V

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x15fdf

    invoke-static {p1, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->createResult()Lorg/h2/result/LocalResult;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->deleteStore()V

    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->openOutput()V

    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_14

    :catch_0
    move-exception p1

    goto/16 :goto_13

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->settings:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Setting;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v4}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/h2/engine/Setting;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/User;

    iget-boolean v4, p0, Lorg/h2/command/dml/ScriptCommand;->passwords:Z

    invoke-virtual {v3, v4}, Lorg/h2/engine/User;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllRoles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Role;

    invoke-virtual {v3, v2}, Lorg/h2/engine/Role;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/Schema;

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllUserDataTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/UserDataType;

    iget-boolean v4, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lorg/h2/engine/UserDataType;->getDropSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_a
    invoke-virtual {v3}, Lorg/h2/engine/UserDataType;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_b
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/SchemaObject;

    invoke-interface {v3}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    check-cast v3, Lorg/h2/schema/Constant;

    invoke-virtual {v3}, Lorg/h2/schema/Constant;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_d
    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Lorg/h2/command/dml/ScriptCommand$1;

    invoke-direct {v3, p0}, Lorg/h2/command/dml/ScriptCommand$1;-><init>(Lorg/h2/command/dml/ScriptCommand;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    invoke-virtual {v4}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v4}, Lorg/h2/table/Table;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_8

    :cond_11
    iget-object v5, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_8

    :cond_12
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getDropSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_13
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/schema/SchemaObject;

    invoke-interface {v4}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_9

    :cond_14
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_15

    invoke-interface {v4}, Lorg/h2/engine/DbObject;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_15
    invoke-interface {v4}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_16
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllAggregates()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/engine/UserAggregate;

    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lorg/h2/engine/UserAggregate;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_17
    invoke-virtual {v4}, Lorg/h2/engine/UserAggregate;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_a

    :cond_18
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/schema/SchemaObject;

    invoke-interface {v4}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_b

    :cond_19
    check-cast v4, Lorg/h2/schema/Sequence;

    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Lorg/h2/schema/Sequence;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_1a
    invoke-virtual {v4}, Lorg/h2/schema/Sequence;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "PRIMARY KEY"

    if-eqz v4, :cond_26

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    invoke-virtual {v4}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_c

    :cond_1e
    invoke-virtual {v4}, Lorg/h2/table/Table;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_c

    :cond_1f
    iget-object v6, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v6, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_20

    goto :goto_c

    :cond_20
    invoke-virtual {v4}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v7

    invoke-direct {p0, v6, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    invoke-virtual {v4}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/constraint/Constraint;

    invoke-virtual {v8}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v8}, Lorg/h2/constraint/Constraint;->getCreateSQLWithoutIndexes()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_22
    sget-object v5, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    if-ne v5, v7, :cond_24

    invoke-virtual {v4}, Lorg/h2/table/Table;->canGetRowCount()Z

    move-result v5

    if-eqz v5, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/h2/table/Table;->getRowCountApproximation()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " +/- SELECT COUNT(*) FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_23
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->data:Z

    if-eqz v5, :cond_24

    invoke-direct {p0, v3, v4}, Lorg/h2/command/dml/ScriptCommand;->generateInsertValues(ILorg/h2/table/Table;)I

    move-result v3

    :cond_24
    invoke-virtual {v4}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_e
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/index/Index;

    invoke-interface {v6}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/index/IndexType;->getBelongsToConstraint()Z

    move-result v7

    if-nez v7, :cond_25

    invoke-interface {v6}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_26
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    if-eqz v0, :cond_27

    const-string v0, "DROP TABLE IF EXISTS SYSTEM_LOB_STREAM"

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "CALL SYSTEM_COMBINE_BLOB(-1)"

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "DROP ALIAS IF EXISTS SYSTEM_COMBINE_CLOB"

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "DROP ALIAS IF EXISTS SYSTEM_COMBINE_BLOB"

    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    :cond_27
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lorg/h2/command/dml/ScriptCommand$2;

    invoke-direct {v2, p0}, Lorg/h2/command/dml/ScriptCommand$2;-><init>(Lorg/h2/command/dml/ScriptCommand;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    invoke-interface {v2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_f

    :cond_29
    check-cast v2, Lorg/h2/constraint/Constraint;

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_f

    :cond_2a
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_f

    :cond_2b
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getCreateSQLWithoutIndexes()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_f

    :cond_2c
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    invoke-interface {v2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_10

    :cond_2d
    check-cast v2, Lorg/h2/schema/TriggerObject;

    invoke-virtual {v2}, Lorg/h2/schema/TriggerObject;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_10

    :cond_2e
    invoke-virtual {v2}, Lorg/h2/schema/TriggerObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_2f
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-eqz v3, :cond_32

    instance-of v4, v3, Lorg/h2/schema/Schema;

    if-eqz v4, :cond_30

    check-cast v3, Lorg/h2/schema/Schema;

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_11

    :cond_30
    instance-of v4, v3, Lorg/h2/table/Table;

    if-eqz v4, :cond_32

    check-cast v3, Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_11

    :cond_31
    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_11

    :cond_32
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_11

    :cond_33
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllComments()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Comment;

    invoke-virtual {v0}, Lorg/h2/engine/Comment;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_12

    :cond_34
    iget-object p1, p0, Lorg/h2/command/dml/ScriptBase;->out:Ljava/io/OutputStream;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_35
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->closeIO()V

    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->done()V

    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->reset()V

    return-object p1

    :goto_13
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_14
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptBase;->closeIO()V

    throw p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->createResult()Lorg/h2/result/LocalResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->done()V

    return-object v0
.end method

.method public bridge synthetic readLob(J[BJ[BII)I
    .locals 0

    invoke-super/range {p0 .. p8}, Lorg/h2/command/dml/ScriptBase;->readLob(J[BJ[BII)I

    move-result p1

    return p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public bridge synthetic setCipher(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setCipher(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCompressionAlgorithm(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setCompressionAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setData(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->data:Z

    return-void
.end method

.method public setDrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    return-void
.end method

.method public bridge synthetic setFileNameExpr(Lorg/h2/expression/Expression;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setFileNameExpr(Lorg/h2/expression/Expression;)V

    return-void
.end method

.method public setLobBlockSize(J)V
    .locals 0

    invoke-static {p1, p2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    iput p1, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    return-void
.end method

.method public bridge synthetic setPassword(Lorg/h2/expression/Expression;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setPassword(Lorg/h2/expression/Expression;)V

    return-void
.end method

.method public setPasswords(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->passwords:Z

    return-void
.end method

.method public setSchemaNames(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    return-void
.end method

.method public setSettings(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->settings:Z

    return-void
.end method

.method public setSimple(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    return-void
.end method

.method public setTables(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/h2/table/Table;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    return-void
.end method
