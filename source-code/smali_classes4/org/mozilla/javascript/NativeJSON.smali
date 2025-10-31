.class public final Lorg/mozilla/javascript/NativeJSON;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeJSON$StringifyState;
    }
.end annotation


# static fields
.field private static final Id_parse:I = 0x2

.field private static final Id_stringify:I = 0x3

.field private static final Id_toSource:I = 0x1

.field private static final JSON_TAG:Ljava/lang/Object;

.field private static final LAST_METHOD_ID:I = 0x3

.field private static final MAX_ID:I = 0x3

.field private static final MAX_STRINGIFY_GAP_LENGTH:I = 0xa

.field private static final serialVersionUID:J = -0x3f635fb98b5ee348L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "JSON"

    sput-object v0, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeJSON;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeJSON;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    const-string p1, "JSON"

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static ja(Lorg/mozilla/javascript/NativeArray;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_5

    .line 9
    .line 10
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .line 49
    :goto_0
    cmp-long v6, v4, v2

    .line 50
    .line 51
    if-gez v6, :cond_2

    .line 52
    .line 53
    const-wide/32 v6, 0x7fffffff

    .line 54
    .line 55
    .line 56
    cmp-long v8, v4, v6

    .line 57
    .line 58
    if-lez v8, :cond_0

    .line 59
    .line 60
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :goto_1
    invoke-static {v6, p0, p1}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    long-to-int v6, v4

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    goto :goto_1

    .line 75
    :goto_2
    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 76
    .line 77
    if-ne v6, v7, :cond_1

    .line 78
    .line 79
    const-string v6, "null"

    .line 80
    .line 81
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    const-wide/16 v6, 0x1

    .line 85
    .line 86
    add-long/2addr v4, v6

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    const-string p0, "[]"

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    iget-object p0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    const/16 v2, 0x5d

    .line 104
    .line 105
    if-nez p0, :cond_4

    .line 106
    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v3, "["

    .line 110
    .line 111
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v3, ","

    .line 115
    .line 116
    invoke-static {v1, v3}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {p0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v3, ",\n"

    .line 128
    .line 129
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v1, p0}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v3, "[\n"

    .line 148
    .line 149
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v3, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const/16 p0, 0xa

    .line 161
    .line 162
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    :goto_3
    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iput-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 181
    .line 182
    return-object p0

    .line 183
    :cond_5
    const-string p0, "msg.cyclic.value"

    .line 184
    .line 185
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    throw p0
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

.method private static jo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_6

    .line 9
    .line 10
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->propertyList:Ljava/util/List;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    new-instance v2, Ljava/util/LinkedList;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 54
    .line 55
    .line 56
    array-length v3, v1

    .line 57
    const/4 v4, 0x0

    .line 58
    :goto_1
    if-ge v4, v3, :cond_3

    .line 59
    .line 60
    aget-object v5, v1, v4

    .line 61
    .line 62
    invoke-static {v5, p0, p1}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 67
    .line 68
    if-eq v6, v7, :cond_2

    .line 69
    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5}, Lorg/mozilla/javascript/NativeJSON;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const-string v8, ":"

    .line 84
    .line 85
    invoke-static {v5, v8, v7}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget-object v7, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-lez v7, :cond_1

    .line 96
    .line 97
    const-string v7, " "

    .line 98
    .line 99
    invoke-static {v5, v7}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_4

    .line 129
    .line 130
    const-string p0, "{}"

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iget-object p0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    const/16 v1, 0x7d

    .line 140
    .line 141
    if-nez p0, :cond_5

    .line 142
    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v3, "{"

    .line 146
    .line 147
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v3, ","

    .line 151
    .line 152
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {p0, v2, v1}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    goto :goto_2

    .line 161
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v3, ",\n"

    .line 164
    .line 165
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v3, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {v2, p0}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v3, "{\n"

    .line 184
    .line 185
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const/16 p0, 0xa

    .line 197
    .line 198
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    :goto_2
    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iput-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 217
    .line 218
    return-object p0

    .line 219
    :cond_6
    const-string p0, "msg.cyclic.value"

    .line 220
    .line 221
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    throw p0
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

.method private static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/json/JsonParser;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/json/JsonParser;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/mozilla/javascript/json/JsonParser$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SyntaxError"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method public static parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Callable;)Ljava/lang/Object;
    .locals 2

    .line 2
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-static {p0, p1, p3, v0, v1}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_4

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3

    if-eq v6, v2, :cond_2

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_1

    packed-switch v6, :pswitch_data_0

    const/16 v7, 0x20

    if-ge v6, v7, :cond_0

    const-string v7, "\\u"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const-string v6, "%04x"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    const-string v6, "\\n"

    goto :goto_1

    :pswitch_1
    const-string v6, "\\t"

    goto :goto_1

    :pswitch_2
    const-string v6, "\\b"

    goto :goto_1

    :cond_1
    const-string v6, "\\\\"

    goto :goto_1

    :cond_2
    const-string v6, "\\\""

    goto :goto_1

    :cond_3
    const-string v6, "\\r"

    goto :goto_1

    :cond_4
    const-string v6, "\\f"

    goto :goto_1

    :goto_2
    add-int/2addr v5, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static repeat(CI)Ljava/lang/String;
    .locals 0

    new-array p1, p1, [C

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([CC)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    const-string v4, "toJSON"

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/mozilla/javascript/Callable;

    if-eqz v5, :cond_1

    iget-object v2, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->cx:Lorg/mozilla/javascript/Context;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v0

    invoke-static {v2, v3, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    iget-object v3, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->replacer:Lorg/mozilla/javascript/Callable;

    if-eqz v3, :cond_2

    iget-object v4, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->cx:Lorg/mozilla/javascript/Context;

    iget-object v5, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->scope:Lorg/mozilla/javascript/Scriptable;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v0

    aput-object v2, v6, v1

    invoke-interface {v3, v4, v5, p1, v6}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    instance-of p0, v2, Lorg/mozilla/javascript/NativeNumber;

    if-eqz p0, :cond_3

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1

    :cond_3
    instance-of p0, v2, Lorg/mozilla/javascript/NativeString;

    if-eqz p0, :cond_4

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    instance-of p0, v2, Lorg/mozilla/javascript/NativeBoolean;

    if-eqz p0, :cond_5

    check-cast v2, Lorg/mozilla/javascript/NativeBoolean;

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    invoke-virtual {v2, p0}, Lorg/mozilla/javascript/NativeBoolean;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    :cond_5
    :goto_1
    const-string p0, "null"

    if-nez v2, :cond_6

    return-object p0

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "true"

    return-object p0

    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "false"

    return-object p0

    :cond_8
    instance-of p1, v2, Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeJSON;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of p1, v2, Ljava/lang/Number;

    if-eqz p1, :cond_b

    move-object p1, v2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_a

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, p1, v0

    if-eqz v3, :cond_a

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v3, p1, v0

    if-eqz v3, :cond_a

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0

    :cond_b
    instance-of p0, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz p0, :cond_d

    instance-of p0, v2, Lorg/mozilla/javascript/Callable;

    if-nez p0, :cond_d

    instance-of p0, v2, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_c

    check-cast v2, Lorg/mozilla/javascript/NativeArray;

    invoke-static {v2, p2}, Lorg/mozilla/javascript/NativeJSON;->ja(Lorg/mozilla/javascript/NativeArray;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, p2}, Lorg/mozilla/javascript/NativeJSON;->jo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method public static stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lorg/mozilla/javascript/Callable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p3, Lorg/mozilla/javascript/Callable;

    move-object v9, p3

    move-object v10, v1

    goto :goto_2

    :cond_0
    instance-of v0, p3, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    check-cast p3, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {p3}, Lorg/mozilla/javascript/NativeArray;->getIndexIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3, p3}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    instance-of v4, v3, Lorg/mozilla/javascript/NativeString;

    if-nez v4, :cond_3

    instance-of v4, v3, Lorg/mozilla/javascript/NativeNumber;

    if-eqz v4, :cond_1

    :cond_3
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v10, v0

    move-object v9, v1

    goto :goto_2

    :cond_6
    move-object v9, v1

    move-object v10, v9

    :goto_2
    instance-of p3, p4, Lorg/mozilla/javascript/NativeNumber;

    if-eqz p3, :cond_7

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    goto :goto_3

    :cond_7
    instance-of p3, p4, Lorg/mozilla/javascript/NativeString;

    if-eqz p3, :cond_8

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    :cond_8
    :goto_3
    instance-of p3, p4, Ljava/lang/Number;

    const/4 v0, 0x0

    const/16 v1, 0xa

    const-string v2, ""

    if-eqz p3, :cond_a

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-int p3, p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_9

    const/16 p4, 0x20

    invoke-static {p4, p3}, Lorg/mozilla/javascript/NativeJSON;->repeat(CI)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_9
    move-object p3, v2

    :goto_4
    move-object v8, p3

    goto :goto_5

    :cond_a
    instance-of p3, p4, Ljava/lang/String;

    if-eqz p3, :cond_c

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v1, :cond_b

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_b
    move-object v8, p4

    goto :goto_5

    :cond_c
    move-object v8, v2

    :goto_5
    new-instance p3, Lorg/mozilla/javascript/NativeJSON$StringifyState;

    const-string v7, ""

    move-object v4, p3

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lorg/mozilla/javascript/NativeJSON$StringifyState;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Callable;Ljava/util/List;)V

    new-instance p0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, v2, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {v2, p0, p3}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p4, Ljava/lang/Number;

    if-eqz v2, :cond_0

    move-object v2, p4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p3, v2, p3}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p4

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v2, p3}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    instance-of v4, v3, Lorg/mozilla/javascript/NativeArray;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v4}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    :goto_1
    cmp-long v8, v6, v4

    if-gez v8, :cond_8

    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, p1, p2, v3, v8}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v9, v10, :cond_1

    invoke-interface {v3, v8}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-interface {v3, v8, v3, v9}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    long-to-int v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, p2, v3, v9}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v9, v10, :cond_3

    invoke-interface {v3, v8}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    goto :goto_2

    :cond_3
    invoke-interface {v3, v8, v3, v9}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_2
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    invoke-static {p0, p1, p2, v3, v7}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v8, v9, :cond_6

    instance-of v8, v7, Ljava/lang/Number;

    if-eqz v8, :cond_5

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v3, v7}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    goto :goto_4

    :cond_5
    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    instance-of v9, v7, Ljava/lang/Number;

    if-eqz v9, :cond_7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v3, v7, v3, v8}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7, v3, v8}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_4
    add-int/2addr v6, v0

    goto :goto_3

    :cond_8
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v1

    aput-object v2, v3, v0

    invoke-interface {p2, p0, p1, p3, v3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    array-length p1, p5

    if-eq p1, p4, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_1

    move-object p1, v2

    move-object p4, p1

    goto :goto_1

    :cond_1
    aget-object v2, p5, v1

    :cond_2
    aget-object p1, p5, p4

    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    aget-object p4, p5, v0

    move-object v4, p4

    move-object p4, p1

    move-object p1, v2

    move-object v2, v4

    :goto_1
    invoke-static {p2, p3, v2, p1, p4}, Lorg/mozilla/javascript/NativeJSON;->stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    invoke-static {p5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    array-length v0, p5

    if-le v0, p4, :cond_6

    aget-object v2, p5, p4

    :cond_6
    instance-of p4, v2, Lorg/mozilla/javascript/Callable;

    if-eqz p4, :cond_7

    check-cast v2, Lorg/mozilla/javascript/Callable;

    invoke-static {p2, p3, p1, v2}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {p2, p3, p1}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, "JSON"

    return-object p1
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "stringify"

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const-string v0, "toSource"

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "parse"

    const/4 v1, 0x2

    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "JSON"

    return-object v0
.end method

.method public initPrototypeId(I)V
    .locals 3

    const/4 v0, 0x3

    if-gt p1, v0, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    const-string v1, "stringify"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "parse"

    move-object v1, v0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "toSource"

    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
