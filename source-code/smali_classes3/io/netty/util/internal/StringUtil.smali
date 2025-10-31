.class public final Lio/netty/util/internal/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE2HEX_NOPAD:[Ljava/lang/String;

.field private static final BYTE2HEX_PAD:[Ljava/lang/String;

.field public static final CARRIAGE_RETURN:C = '\r'

.field public static final COMMA:C = ','

.field private static final CSV_NUMBER_ESCAPE_CHARACTERS:I = 0x7

.field public static final DOUBLE_QUOTE:C = '\"'

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final HEX2B:[B

.field public static final LINE_FEED:C = '\n'

.field public static final NEWLINE:Ljava/lang/String;

.field private static final PACKAGE_SEPARATOR_CHAR:C = '.'

.field public static final SPACE:C = ' '

.field public static final TAB:C = '\t'


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "line.separator"

    .line 2
    .line 3
    const-string v1, "\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v0, 0x100

    .line 12
    .line 13
    new-array v1, v0, [Ljava/lang/String;

    .line 14
    .line 15
    sput-object v1, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/String;

    .line 18
    .line 19
    sput-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    sget-object v2, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    const/16 v4, 0xf

    .line 27
    .line 28
    if-ge v1, v3, :cond_1

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-le v1, v4, :cond_0

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const-string v4, "0"

    .line 39
    .line 40
    invoke-static {v4, v3}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    :goto_1
    aput-object v4, v2, v1

    .line 45
    .line 46
    sget-object v2, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    .line 47
    .line 48
    aput-object v3, v2, v1

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/high16 v1, 0x10000

    .line 54
    .line 55
    new-array v1, v1, [B

    .line 56
    .line 57
    sput-object v1, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 61
    .line 62
    .line 63
    const/16 v2, 0x30

    .line 64
    .line 65
    aput-byte v0, v1, v2

    .line 66
    .line 67
    const/16 v0, 0x31

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    aput-byte v2, v1, v0

    .line 71
    .line 72
    const/16 v0, 0x32

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    aput-byte v2, v1, v0

    .line 76
    .line 77
    const/16 v0, 0x33

    .line 78
    .line 79
    const/4 v2, 0x3

    .line 80
    aput-byte v2, v1, v0

    .line 81
    .line 82
    const/16 v0, 0x34

    .line 83
    .line 84
    const/4 v2, 0x4

    .line 85
    aput-byte v2, v1, v0

    .line 86
    .line 87
    const/16 v0, 0x35

    .line 88
    .line 89
    const/4 v2, 0x5

    .line 90
    aput-byte v2, v1, v0

    .line 91
    .line 92
    const/16 v0, 0x36

    .line 93
    .line 94
    const/4 v2, 0x6

    .line 95
    aput-byte v2, v1, v0

    .line 96
    .line 97
    const/16 v0, 0x37

    .line 98
    .line 99
    const/4 v2, 0x7

    .line 100
    aput-byte v2, v1, v0

    .line 101
    .line 102
    const/16 v0, 0x38

    .line 103
    .line 104
    const/16 v2, 0x8

    .line 105
    .line 106
    aput-byte v2, v1, v0

    .line 107
    .line 108
    const/16 v0, 0x39

    .line 109
    .line 110
    const/16 v2, 0x9

    .line 111
    .line 112
    aput-byte v2, v1, v0

    .line 113
    .line 114
    const/16 v0, 0x41

    .line 115
    .line 116
    const/16 v2, 0xa

    .line 117
    .line 118
    aput-byte v2, v1, v0

    .line 119
    .line 120
    const/16 v0, 0x42

    .line 121
    .line 122
    const/16 v3, 0xb

    .line 123
    .line 124
    aput-byte v3, v1, v0

    .line 125
    .line 126
    const/16 v0, 0x43

    .line 127
    .line 128
    const/16 v5, 0xc

    .line 129
    .line 130
    aput-byte v5, v1, v0

    .line 131
    .line 132
    const/16 v0, 0x44

    .line 133
    .line 134
    const/16 v6, 0xd

    .line 135
    .line 136
    aput-byte v6, v1, v0

    .line 137
    .line 138
    const/16 v0, 0x45

    .line 139
    .line 140
    const/16 v7, 0xe

    .line 141
    .line 142
    aput-byte v7, v1, v0

    .line 143
    .line 144
    const/16 v0, 0x46

    .line 145
    .line 146
    aput-byte v4, v1, v0

    .line 147
    .line 148
    const/16 v0, 0x61

    .line 149
    .line 150
    aput-byte v2, v1, v0

    .line 151
    .line 152
    const/16 v0, 0x62

    .line 153
    .line 154
    aput-byte v3, v1, v0

    .line 155
    .line 156
    const/16 v0, 0x63

    .line 157
    .line 158
    aput-byte v5, v1, v0

    .line 159
    .line 160
    const/16 v0, 0x64

    .line 161
    .line 162
    aput-byte v6, v1, v0

    .line 163
    .line 164
    const/16 v0, 0x65

    .line 165
    .line 166
    aput-byte v7, v1, v0

    .line 167
    .line 168
    const/16 v0, 0x66

    .line 169
    .line 170
    aput-byte v4, v1, v0

    .line 171
    .line 172
    return-void
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

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToHexString(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->byteToHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public static byteToHexString(I)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_NOPAD:[Ljava/lang/String;

    and-int/lit16 p0, p0, 0xff

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static byteToHexStringPadded(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->byteToHexStringPadded(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public static byteToHexStringPadded(I)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lio/netty/util/internal/StringUtil;->BYTE2HEX_PAD:[Ljava/lang/String;

    and-int/lit16 p0, p0, 0xff

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static commonSuffixOfLength(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p0, v0, p1, v1, p2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static decodeHexByte(Ljava/lang/CharSequence;I)B
    .locals 6

    const/4 v0, 0x2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    if-eq v3, v4, :cond_0

    shl-int/lit8 p0, v1, 0x4

    add-int/2addr p0, v3

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v3, p1, 0x2

    invoke-interface {p0, p1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object p1, v4, v2

    aput-object p0, v4, v0

    const-string p0, "invalid hex byte \'%s\' at index %d of \'%s\'"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;)[B
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;II)[B
    .locals 4

    if-ltz p2, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    sget-object p0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object p0

    :cond_0
    ushr-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    ushr-int/lit8 v2, v1, 0x1

    add-int v3, p1, v1

    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length: "

    .line 2
    invoke-static {p2, p1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeHexNibble(C)I
    .locals 1

    sget-object v0, Lio/netty/util/internal/StringUtil;->HEX2B:[B

    aget-byte p0, v0, p0

    return p0
.end method

.method public static endsWith(Ljava/lang/CharSequence;C)Z
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static escapeCsv(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->escapeCsv(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static escapeCsv(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 7

    .line 2
    const-string v0, "value"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p0, p1, v0}, Lio/netty/util/internal/StringUtil;->indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    const/4 p1, 0x0

    :goto_0
    if-le p1, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v3

    if-eqz v3, :cond_2

    if-le v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v1, v0

    :goto_1
    move v0, p1

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    move v3, v1

    move v1, v0

    move v0, p1

    goto :goto_2

    :cond_4
    move v1, v0

    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    if-gez p1, :cond_e

    move v4, v0

    if-eqz v3, :cond_7

    :goto_3
    if-gt v4, v1, :cond_c

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eq v4, v1, :cond_b

    add-int/lit8 v5, v4, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    move v4, v5

    :cond_6
    add-int/2addr v4, v2

    goto :goto_3

    :cond_7
    :goto_4
    if-gt v4, v1, :cond_c

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_b

    const/16 v6, 0xd

    if-eq v5, v6, :cond_b

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {v5}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eq v4, v1, :cond_b

    add-int/lit8 v5, v4, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    move v4, v5

    :cond_a
    add-int/2addr v4, v2

    goto :goto_4

    :cond_b
    :goto_5
    move p1, v4

    :cond_c
    if-gez p1, :cond_e

    if-eqz v3, :cond_d

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x2

    :goto_6
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_7

    :cond_d
    add-int/2addr v1, v2

    goto :goto_6

    :goto_7
    return-object p0

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_8
    if-gt p1, v1, :cond_10

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p1, v1, :cond_f

    add-int/lit8 v5, p1, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v6

    if-eqz v6, :cond_f

    move p1, v5

    :cond_f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    goto :goto_8

    :cond_10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v3
.end method

.method private static indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isOws(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-le p2, p1, :cond_0

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->isOws(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I
    .locals 1

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOfWhiteSpace(Ljava/lang/CharSequence;I)I
    .locals 1

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static isDoubleQuote(C)Z
    .locals 1

    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isOws(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSurrogate(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const-string v0, "separator"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "elements"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1
.end method

.method public static length(Ljava/lang/String;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid escaped CSV field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " index: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static simpleClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "clazz"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static simpleClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    if-nez p0, :cond_0

    const-string p0, "null_object"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringAfter(Ljava/lang/String;C)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toHexString(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lio/netty/util/internal/StringUtil;->toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .line 2
    if-nez p3, :cond_0

    return-object p0

    :cond_0
    add-int/2addr p3, p2

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ge p2, v0, :cond_2

    aget-byte v1, p1, p2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    invoke-static {p0, p2}, Lio/netty/util/internal/StringUtil;->byteToHexString(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    sub-int/2addr p3, v0

    invoke-static {p0, p1, v0, p3}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Lio/netty/util/internal/StringUtil;->toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexStringPadded(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .line 2
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->byteToHexStringPadded(Ljava/lang/Appendable;I)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static toHexStringPadded([B)Ljava/lang/String;
    .locals 2

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->toHexStringPadded([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexStringPadded([BII)Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p2, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Lio/netty/util/internal/StringUtil;->toHexStringPadded(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trimOws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->indexOfFirstNonOwsChar(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->indexOfLastNonOwsChar(Ljava/lang/CharSequence;II)I

    move-result v2

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static unescapeCsv(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    const-string v0, "value"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lio/netty/util/internal/StringUtil;->isDoubleQuote(C)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v5, v1, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    invoke-static {p0, v3}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->validateCsvFormat(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static unescapeCsvFields(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v5, v2, :cond_8

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    const/16 v9, 0x22

    if-eqz v6, :cond_4

    if-eq v7, v9, :cond_0

    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    if-ne v5, v2, :cond_1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    add-int/lit8 v7, v5, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_2

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_3

    :cond_2
    if-ne v10, v8, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v5, v7

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    invoke-static {p0, v5}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    const/16 v10, 0xa

    if-eq v7, v10, :cond_7

    const/16 v10, 0xd

    if-eq v7, v10, :cond_7

    if-eq v7, v9, :cond_6

    if-eq v7, v8, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    :goto_3
    add-int/2addr v5, v3

    goto :goto_0

    :cond_7
    invoke-static {p0, v5}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {p0, v2}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static validateCsvFormat(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lio/netty/util/internal/StringUtil;->newInvalidEscapedCsvFieldException(Ljava/lang/CharSequence;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method
