.class public abstract Lorg/apache/poi/ss/formula/ptg/Ptg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLASS_ARRAY:B = 0x40t

.field public static final CLASS_REF:B = 0x0t

.field public static final CLASS_VALUE:B = 0x20t

.field public static final EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;


# instance fields
.field private ptgClass:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    return-void
.end method

.method private static createBasePtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 5
    .line 6
    const-string v0, "Unexpected base token id ("

    .line 7
    .line 8
    const-string v1, ")"

    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_1
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_2
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_3
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_4
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->read(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_5
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_6
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_7
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;->instance:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_8
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_9
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_a
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_b
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_c
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_d
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_e
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_f
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_10
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_11
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 83
    .line 84
    return-object p0

    .line 85
    :pswitch_12
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 86
    .line 87
    return-object p0

    .line 88
    :pswitch_13
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_14
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 92
    .line 93
    return-object p0

    .line 94
    :pswitch_15
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_16
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_17
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_18
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 104
    .line 105
    return-object p0

    .line 106
    :pswitch_19
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_1a
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_1b
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;

    .line 113
    .line 114
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/TblPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_1c
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    .line 119
    .line 120
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    :pswitch_1d
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;-><init>(I)V

    .line 127
    .line 128
    .line 129
    return-object p1

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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
.end method

.method private static createClassifiedPtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    and-int/lit8 v0, p0, 0x1f

    or-int/lit8 v0, v0, 0x20

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Unknown Ptg in Formula: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaNPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefNPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefNPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_f
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object p0

    return-object p0

    :pswitch_11
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createPtg(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createBasePtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createClassifiedPtg(BLorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    const/16 v2, 0x60

    const/16 v3, 0x40

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_0

    :cond_1
    if-lt v0, v3, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    :goto_0
    return-object p0
.end method

.method public static doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isDeletedCellRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getEncodedSize([Lorg/apache/poi/ss/formula/ptg/Ptg;)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static getEncodedSizeWithoutArrayData([Lorg/apache/poi/ss/formula/ptg/Ptg;)I
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isDeletedCellRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    instance-of p0, p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    div-int/lit8 v1, p0, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->createPtg(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v2, p0, :cond_4

    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toPtgArray(Ljava/util/List;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    if-eqz v3, :cond_3

    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_3

    aget-object v0, p0, v1

    instance-of v2, v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->finishReading(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    move-result-object v0

    aput-object v0, p0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Ptg array size mismatch"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static serializePtgs([Lorg/apache/poi/ss/formula/ptg/Ptg;[BI)I
    .locals 5

    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    array-length p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ptg;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->writeTokenValueBytes(Lorg/apache/poi/util/LittleEndianOutput;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method private static toPtgArray(Ljava/util/List;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/ptg/Ptg;",
            ">;)[",
            "Lorg/apache/poi/ss/formula/ptg/Ptg;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public abstract getDefaultOperandClass()B
.end method

.method public final getPtgClass()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    return v0
.end method

.method public final getRVAType()C
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x2e

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/16 v1, 0x40

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x41

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Unknown operand class ("

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-byte v2, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    .line 35
    .line 36
    const-string v3, ")"

    .line 37
    .line 38
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    const/16 v0, 0x56

    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    const/16 v0, 0x52

    .line 50
    .line 51
    return v0
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

.method public abstract getSize()I
.end method

.method public abstract isBaseToken()Z
.end method

.method public final setClass(B)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v0

    if-nez v0, :cond_0

    iput-byte p1, p0, Lorg/apache/poi/ss/formula/ptg/Ptg;->ptgClass:B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setClass should not be called on a base token"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract toFormulaString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Lorg/apache/poi/util/LittleEndianOutput;)V
.end method
