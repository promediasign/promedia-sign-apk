.class public Lorg/mozilla/javascript/tools/debugger/SwingGui;
.super Ljavax/swing/JFrame;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/tools/debugger/GuiCallback;


# static fields
.field private static final serialVersionUID:J = -0x7208c10b13b21fc5L


# instance fields
.field private awtEventQueue:Ljava/awt/EventQueue;

.field private console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

.field private context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

.field private currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

.field private desk:Ljavax/swing/JDesktopPane;

.field dim:Lorg/mozilla/javascript/tools/debugger/Dim;

.field dlg:Ljavax/swing/JFileChooser;

.field private exitAction:Ljava/lang/Runnable;

.field private final fileWindows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/tools/debugger/FileWindow;",
            ">;"
        }
    .end annotation
.end field

.field private menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

.field private split1:Ljavax/swing/JSplitPane;

.field private statusBar:Ljavax/swing/JLabel;

.field private toolBar:Ljavax/swing/JToolBar;

.field private final toplevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/swing/JFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toplevels:Ljava/util/Map;

    .line 9
    .line 10
    new-instance p2, Ljava/util/TreeMap;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    .line 20
    .line 21
    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    .line 22
    .line 23
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->init()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setGuiCallback(Lorg/mozilla/javascript/tools/debugger/GuiCallback;)V

    .line 27
    .line 28
    .line 29
    return-void
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
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
.end method

.method public static synthetic access$000(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->exit()V

    return-void
.end method

.method private chooseFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, p1}, Ljavax/swing/JFileChooser;->setDialogTitle(Ljava/lang/String;)V

    const-string p1, "user.dir"

    invoke-static {p1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, v2}, Ljavax/swing/JFileChooser;->setCurrentDirectory(Ljava/io/File;)V

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, p0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v2}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    return-object v1
.end method

.method private exit()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->exitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->setReturnValue(I)V

    return-void
.end method

.method private getSelectedFrame()Ljavax/swing/JInternalFrame;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getAllFrames()[Ljavax/swing/JInternalFrame;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljavax/swing/JInternalFrame;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getWindowMenu()Ljavax/swing/JMenu;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Menubar;->getMenu(I)Ljavax/swing/JMenu;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 9

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/Menubar;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    new-instance v0, Ljavax/swing/JToolBar;

    invoke-direct {v0}, Ljavax/swing/JToolBar;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    const-string v0, "Step Over (F7)"

    const-string v1, "Step Out (F8)"

    const-string v2, "Break (Pause)"

    const-string v3, "Go (F5)"

    const-string v4, "Step Into (F11)"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/swing/JButton;

    const-string v2, "Break"

    invoke-direct {v1, v2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setEnabled(Z)V

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v4, Ljavax/swing/JButton;

    const-string v5, "Go"

    invoke-direct {v4, v5}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v4, v5}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v4, v3}, Ljavax/swing/JButton;->setEnabled(Z)V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v5, Ljavax/swing/JButton;

    const-string v6, "Step Into"

    invoke-direct {v5, v6}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v5, v3}, Ljavax/swing/JButton;->setEnabled(Z)V

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v6, Ljavax/swing/JButton;

    const-string v7, "Step Over"

    invoke-direct {v6, v7}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljavax/swing/JButton;->setEnabled(Z)V

    iget-object v7, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v6, v7}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    const/4 v7, 0x3

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v7, Ljavax/swing/JButton;

    const-string v8, "Step Out"

    invoke-direct {v7, v8}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljavax/swing/JButton;->setEnabled(Z)V

    iget-object v8, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v7, v8}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    const/4 v8, 0x4

    aget-object v0, v0, v8

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljavax/swing/JButton;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setSize(Ljava/awt/Dimension;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v6, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v6, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v6, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setPreferredSize(Ljava/awt/Dimension;)V

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setMinimumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v7, v0}, Ljavax/swing/JButton;->setMaximumSize(Ljava/awt/Dimension;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v1}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v4}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v5}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v6}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0, v7}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    const-string v5, "North"

    invoke-virtual {v1, v4, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    const-string v4, "Center"

    invoke-virtual {v1, v0, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v1, Ljavax/swing/JDesktopPane;

    invoke-direct {v1}, Ljavax/swing/JDesktopPane;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    new-instance v5, Ljava/awt/Dimension;

    const/16 v6, 0x12c

    const/16 v7, 0x258

    invoke-direct {v5, v7, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v5}, Ljavax/swing/JDesktopPane;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    new-instance v5, Ljava/awt/Dimension;

    const/16 v6, 0x96

    const/16 v8, 0x32

    invoke-direct {v5, v6, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v5}, Ljavax/swing/JDesktopPane;->setMinimumSize(Ljava/awt/Dimension;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    new-instance v5, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    const-string v6, "JavaScript Console"

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {v1, v5}, Ljavax/swing/JDesktopPane;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v1, Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-direct {v1, p0}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    new-instance v5, Ljava/awt/Dimension;

    const/16 v6, 0x78

    invoke-direct {v5, v7, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setPreferredSize(Ljava/awt/Dimension;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    new-instance v5, Ljava/awt/Dimension;

    invoke-direct {v5, v8, v8}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setMinimumSize(Ljava/awt/Dimension;)V

    new-instance v1, Ljavax/swing/JSplitPane;

    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    iget-object v6, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-direct {v1, v3, v5, v6}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->split1:Ljavax/swing/JSplitPane;

    invoke-virtual {v1, v2}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->split1:Ljavax/swing/JSplitPane;

    const-wide v2, 0x3fe51eb851eb851fL    # 0.66

    invoke-static {v1, v2, v3}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setResizeWeight(Ljavax/swing/JSplitPane;D)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->split1:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1}, Ljavax/swing/JLabel;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->statusBar:Ljavax/swing/JLabel;

    const-string v2, "Thread: "

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->statusBar:Ljavax/swing/JLabel;

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/SwingGui$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui$1;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v1, v0}, Ljavax/swing/JFileChooser;->addChoosableFileFilter(Ljavax/swing/filechooser/FileFilter;)V

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/SwingGui$2;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui$2;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->addWindowListener(Ljava/awt/event/WindowListener;)V

    return-void
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :try_start_1
    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_2

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :catchall_1
    move-exception v2

    .line 19
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_2
    move-exception v0

    .line 24
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 28
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "Error reading "

    .line 33
    .line 34
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v0, p1, v1}, Lorg/mozilla/javascript/tools/debugger/MessageDialogWrapper;->showMessageDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    :goto_2
    return-object v1
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
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
.end method

.method private setFilePosition(Lorg/mozilla/javascript/tools/debugger/FileWindow;I)V
    .locals 3

    iget-object v0, p1, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-ne p2, p1, :cond_2

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljavax/swing/JTextArea;->getLineStartOffset(I)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    :cond_1
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->isIcon()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {p2}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/swing/DesktopManager;->deiconifyFrame(Ljavax/swing/JInternalFrame;)V

    :cond_3
    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {p2}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/swing/DesktopManager;->activateFrame(Ljavax/swing/JInternalFrame;)V

    :try_start_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->show()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->toFront()V

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setSelected(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static setResizeWeight(Ljavax/swing/JSplitPane;D)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Ljavax/swing/JSplitPane;

    const-string v3, "setResizeWeight"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateEnabled(Z)V
    .locals 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getJMenuBar()Ljavax/swing/JMenuBar;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Menubar;->updateEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v0}, Ljavax/swing/JToolBar;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-nez v2, :cond_0

    xor-int/lit8 v3, p1, 0x1

    goto :goto_1

    :cond_0
    move v3, p1

    :goto_1
    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    invoke-virtual {v4, v2}, Ljavax/swing/JToolBar;->getComponent(I)Ljava/awt/Component;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/awt/Component;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toolBar:Ljavax/swing/JToolBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getExtendedState()I

    move-result p1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setExtendedState(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toFront()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    :cond_4
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setEnabled(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 19

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-nez v2, :cond_1b

    const-string v2, "Copy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "Paste"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v4, "Step Over"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_1
    const-string v4, "Step Into"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    goto/16 :goto_9

    :cond_2
    const-string v4, "Step Out"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    const/4 v5, 0x2

    goto/16 :goto_9

    :cond_3
    const-string v4, "Go"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v5, 0x3

    goto/16 :goto_9

    :cond_4
    const-string v4, "Break"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->setBreak()V

    goto/16 :goto_8

    :cond_5
    const-string v4, "Exit"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->exit()V

    goto/16 :goto_8

    :cond_6
    const-string v4, "Open"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "Select a file to compile"

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->chooseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    invoke-direct {v2, v7, v5}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object v0, v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;->fileName:Ljava/lang/String;

    iput-object v1, v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;->text:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_8

    :cond_7
    const-string v4, "Load"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v0, "Select a file to execute"

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->chooseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-direct {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    invoke-direct {v2, v7, v6}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object v0, v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;->fileName:Ljava/lang/String;

    iput-object v1, v2, Lorg/mozilla/javascript/tools/debugger/RunProxy;->text:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_8
    const-string v4, "More Windows..."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/MoreWindows;

    iget-object v1, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    const-string v2, "Window"

    const-string v3, "Files"

    invoke-direct {v0, v7, v1, v2, v3}, Lorg/mozilla/javascript/tools/debugger/MoreWindows;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/tools/debugger/MoreWindows;->showDialog(Ljava/awt/Component;)Ljava/lang/String;

    goto/16 :goto_8

    :cond_9
    const-string v4, "Console"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->isIcon()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object v0

    iget-object v1, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-interface {v0, v1}, Ljavax/swing/DesktopManager;->deiconifyFrame(Ljavax/swing/JInternalFrame;)V

    :cond_a
    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->show()V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object v0

    iget-object v1, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-interface {v0, v1}, Ljavax/swing/DesktopManager;->activateFrame(Ljavax/swing/JInternalFrame;)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->requestFocus()V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_8

    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_8

    :cond_e
    const-string v1, "Go to function..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/FindFunction;

    const-string v1, "Go to function"

    const-string v2, "Function"

    invoke-direct {v0, v7, v1, v2}, Lorg/mozilla/javascript/tools/debugger/FindFunction;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->showDialog(Ljava/awt/Component;)Ljava/lang/String;

    goto/16 :goto_8

    :cond_f
    const-string v1, "Go to line..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "Line number"

    const-string v2, "Go to line..."

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1

    :cond_10
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->showFileWindow(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    nop

    goto/16 :goto_8

    :cond_11
    :goto_1
    return-void

    :cond_12
    const-string v1, "Tile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getAllFrames()[Ljavax/swing/JInternalFrame;

    move-result-object v0

    array-length v1, v0

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int v3, v2, v2

    if-ge v3, v1, :cond_14

    add-int/lit8 v3, v2, 0x1

    mul-int v4, v2, v3

    if-ge v4, v1, :cond_13

    move v2, v3

    goto :goto_2

    :cond_13
    move/from16 v18, v3

    move v3, v2

    move/from16 v2, v18

    goto :goto_2

    :cond_14
    move v3, v2

    :goto_2
    iget-object v1, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v1}, Ljavax/swing/JDesktopPane;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v4, v1, Ljava/awt/Dimension;->width:I

    div-int/2addr v4, v2

    iget v1, v1, Ljava/awt/Dimension;->height:I

    div-int/2addr v1, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v3, :cond_1c

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v15, v2, :cond_16

    mul-int v10, v5, v2

    add-int/2addr v10, v15

    array-length v11, v0

    if-lt v10, v11, :cond_15

    goto :goto_5

    :cond_15
    aget-object v11, v0, v10

    :try_start_1
    invoke-virtual {v11, v8}, Ljavax/swing/JInternalFrame;->setIcon(Z)V

    invoke-virtual {v11, v8}, Ljavax/swing/JInternalFrame;->setMaximum(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v10, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v10}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object v10

    move/from16 v12, v16

    move v13, v6

    move v14, v4

    move/from16 v17, v15

    move v15, v1

    invoke-interface/range {v10 .. v15}, Ljavax/swing/DesktopManager;->setBoundsForFrame(Ljavax/swing/JComponent;IIII)V

    add-int v16, v16, v4

    add-int/lit8 v15, v17, 0x1

    goto :goto_4

    :cond_16
    :goto_5
    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_17
    const-string v1, "Cascade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v0}, Ljavax/swing/JDesktopPane;->getAllFrames()[Ljavax/swing/JInternalFrame;

    move-result-object v0

    array-length v1, v0

    iget-object v2, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v2}, Ljavax/swing/JDesktopPane;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    const/16 v3, 0x1e

    if-le v2, v3, :cond_18

    const/16 v2, 0x1e

    :cond_18
    sub-int/2addr v1, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ltz v1, :cond_1c

    aget-object v11, v0, v1

    :try_start_2
    invoke-virtual {v11, v8}, Ljavax/swing/JInternalFrame;->setIcon(Z)V

    invoke-virtual {v11, v8}, Ljavax/swing/JInternalFrame;->setMaximum(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-virtual {v11}, Ljavax/swing/JInternalFrame;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v5

    iget v14, v5, Ljava/awt/Dimension;->width:I

    iget v15, v5, Ljava/awt/Dimension;->height:I

    iget-object v5, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v5}, Ljavax/swing/JDesktopPane;->getDesktopManager()Ljavax/swing/DesktopManager;

    move-result-object v10

    move v12, v3

    move v13, v4

    invoke-interface/range {v10 .. v15}, Ljavax/swing/DesktopManager;->setBoundsForFrame(Ljavax/swing/JComponent;IIII)V

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v3, v2

    add-int/2addr v4, v2

    goto :goto_6

    :cond_19
    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_3
    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->isIcon()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setIcon(Z)V

    :cond_1a
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setVisible(Z)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->moveToFront()V

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setSelected(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :cond_1b
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getSelectedFrame()Ljavax/swing/JInternalFrame;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v1, v0, Ljava/awt/event/ActionListener;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/awt/event/ActionListener;

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    :cond_1c
    :goto_8
    const/4 v5, -0x1

    :goto_9
    if-eq v5, v9, :cond_1d

    invoke-direct {v7, v8}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->updateEnabled(Z)V

    iget-object v0, v7, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/tools/debugger/Dim;->setReturnValue(I)V

    :cond_1d
    return-void
.end method

.method public addTopLevel(Ljava/lang/String;Ljavax/swing/JFrame;)V
    .locals 1

    if-eq p2, p0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->toplevels:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createFileWindow(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;I)V
    .locals 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/tools/debugger/FileWindow;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    :cond_0
    :try_start_0
    iget-object v2, v1, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineStartOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object v2, v1, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->getLineStartOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V
    :try_end_1
    .catch Ljavax/swing/text/BadLocationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setPosition(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->desk:Ljavax/swing/JDesktopPane;

    invoke-virtual {v2, v1}, Ljavax/swing/JDesktopPane;->add(Ljava/awt/Component;)Ljava/awt/Component;

    if-eq p2, p1, :cond_2

    iput-object v1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/Menubar;->addFile(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setVisible(Z)V

    :try_start_2
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setMaximum(Z)V

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setSelected(Z)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->moveToFront()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public dispatchNextGuiEvent()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->awtEventQueue:Ljava/awt/EventQueue;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getSystemEventQueue()Ljava/awt/EventQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->awtEventQueue:Ljava/awt/EventQueue;

    :cond_0
    invoke-virtual {v0}, Ljava/awt/EventQueue;->getNextEvent()Ljava/awt/AWTEvent;

    move-result-object v0

    instance-of v1, v0, Ljava/awt/ActiveEvent;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/awt/ActiveEvent;

    invoke-interface {v0}, Ljava/awt/ActiveEvent;->dispatch()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/awt/AWTEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/awt/Component;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/awt/Component;

    invoke-virtual {v1, v0}, Ljava/awt/Component;->dispatchEvent(Ljava/awt/AWTEvent;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Ljava/awt/MenuComponent;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/awt/MenuComponent;

    invoke-virtual {v1, v0}, Ljava/awt/MenuComponent;->dispatchEvent(Ljava/awt/AWTEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public enterInterrupt(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljavax/swing/SwingUtilities;->isEventDispatchThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->enterInterruptImpl(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object p1, v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;->lastFrame:Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    iput-object p2, v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;->threadTitle:Ljava/lang/String;

    iput-object p3, v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;->alertMessage:Ljava/lang/String;

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public enterInterruptImpl(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->statusBar:Ljavax/swing/JLabel;

    .line 2
    .line 3
    const-string v1, "Thread: "

    .line 4
    .line 5
    invoke-static {v1, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {v0, p2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->showStopLine(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    const-string v0, "Exception in Script"

    .line 19
    .line 20
    invoke-static {p0, p3, v0, p2}, Lorg/mozilla/javascript/tools/debugger/MessageDialogWrapper;->showMessageDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p3, 0x1

    .line 24
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->updateEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p3, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    .line 32
    .line 33
    iget-object v0, p3, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    .line 34
    .line 35
    iget-object v1, p3, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->toolTips:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p3}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->disableUpdate()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->removeAllItems()V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v2}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-ge v2, p3, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->getFrame(I)Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getLineNumber()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/16 v6, 0x14

    .line 74
    .line 75
    if-le v5, v6, :cond_1

    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v6, "..."

    .line 80
    .line 81
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    add-int/lit8 v6, v6, -0x11

    .line 89
    .line 90
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move-object v5, v4

    .line 103
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v7, "\""

    .line 106
    .line 107
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v5, "\", line "

    .line 114
    .line 115
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v0, v6, v2}, Ljavax/swing/JComboBox;->insertItemAt(Ljava/lang/Object;I)V

    .line 126
    .line 127
    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_2
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    .line 153
    .line 154
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->enableUpdate()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p2}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Ljava/awt/Dimension;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getMinimumSize()Ljava/awt/Dimension;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    iget p2, p2, Ljava/awt/Dimension;->height:I

    .line 167
    .line 168
    const/16 p3, 0x32

    .line 169
    .line 170
    invoke-direct {p1, p3, p2}, Ljava/awt/Dimension;-><init>(II)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p1}, Ljavax/swing/JComboBox;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 174
    .line 175
    .line 176
    return-void
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

.method public getConsole()Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    return-object v0
.end method

.method public getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "<stdin>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/tools/debugger/FileWindow;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMenubar()Lorg/mozilla/javascript/tools/debugger/Menubar;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->menubar:Lorg/mozilla/javascript/tools/debugger/Menubar;

    return-object v0
.end method

.method public isGuiEventThread()Z
    .locals 1

    invoke-static {}, Ljavax/swing/SwingUtilities;->isEventDispatchThread()Z

    move-result v0

    return v0
.end method

.method public removeWindow(Lorg/mozilla/javascript/tools/debugger/FileWindow;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->fileWindows:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getWindowMenu()Ljavax/swing/JMenu;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljavax/swing/JMenu;->getItemCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v2, v1, -0x1

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljavax/swing/JMenu;->getItem(I)Ljavax/swing/JMenuItem;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v4, 0x5

    .line 33
    :goto_0
    if-ge v4, v1, :cond_6

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljavax/swing/JMenu;->getItem(I)Ljavax/swing/JMenuItem;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    invoke-virtual {v5}, Ljavax/swing/JMenuItem;->getText()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/16 v7, 0x20

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    add-int/lit8 v8, v8, 0x1

    .line 54
    .line 55
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljavax/swing/JMenu;->remove(Ljavax/swing/JMenuItem;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x6

    .line 69
    if-ne v1, p1, :cond_1

    .line 70
    .line 71
    const/4 p1, 0x4

    .line 72
    invoke-virtual {v0, p1}, Ljavax/swing/JMenu;->remove(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_1
    add-int/lit8 v6, v4, -0x4

    .line 77
    .line 78
    :goto_1
    const-string v8, "More Windows..."

    .line 79
    .line 80
    if-ge v4, v2, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljavax/swing/JMenu;->getItem(I)Ljavax/swing/JMenuItem;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    if-eqz v9, :cond_3

    .line 87
    .line 88
    invoke-virtual {v9}, Ljavax/swing/JMenuItem;->getText()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-eqz v11, :cond_2

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(I)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v12, v6, 0x30

    .line 109
    .line 110
    int-to-char v13, v12

    .line 111
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v13, " "

    .line 115
    .line 116
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    add-int/lit8 v8, v8, 0x1

    .line 120
    .line 121
    invoke-static {v10, v8, v11}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v9, v8}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v12}, Ljavax/swing/JMenuItem;->setMnemonic(I)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 132
    .line 133
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    :goto_2
    sub-int/2addr v1, p1

    .line 137
    if-nez v1, :cond_6

    .line 138
    .line 139
    if-eq v3, v5, :cond_6

    .line 140
    .line 141
    invoke-virtual {v3}, Ljavax/swing/JMenuItem;->getText()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ljavax/swing/JMenu;->remove(Ljavax/swing/JMenuItem;)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljavax/swing/JMenu;->revalidate()V

    .line 159
    .line 160
    .line 161
    return-void
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
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->exitAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Ljavax/swing/JFrame;->setVisible(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->requestFocus()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->context:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->split:Ljavax/swing/JSplitPane;

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    :try_start_0
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->setMaximum(Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->setSelected(Z)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->show()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    iget-object p1, p1, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->requestFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public showFileWindow(Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getSelectedFrame()Ljavax/swing/JInternalFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->currentWindow:Lorg/mozilla/javascript/tools/debugger/FileWindow;

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->sourceInfo(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->createFileWindow(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    if-le p2, v1, :cond_5

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getPosition(I)I

    move-result v1

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->getPosition(I)I

    move-result p2

    sub-int/2addr p2, p1

    if-gtz v1, :cond_4

    return-void

    :cond_4
    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->select(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->setCaretPosition(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->moveCaretPosition(I)V

    :cond_5
    :try_start_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->isIcon()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setIcon(Z)V

    :cond_6
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setVisible(Z)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->moveToFront()V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->setSelected(Z)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->requestFocus()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->requestFocus()V

    iget-object p1, v0, Lorg/mozilla/javascript/tools/debugger/FileWindow;->textArea:Lorg/mozilla/javascript/tools/debugger/FileTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/FileTextArea;->requestFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public showStopLine(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "<stdin>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->showFileWindow(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->getLineNumber()I

    move-result p1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setFilePosition(Lorg/mozilla/javascript/tools/debugger/FileWindow;I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->console:Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/JSInternalConsole;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateFileWindow(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->getFileWindow(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/FileWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->updateText(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/FileWindow;->show()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateSourceText(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/mozilla/javascript/tools/debugger/RunProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;I)V

    iput-object p1, v0, Lorg/mozilla/javascript/tools/debugger/RunProxy;->sourceInfo:Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method
