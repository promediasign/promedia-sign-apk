.class final Lorg/mozilla/javascript/NativeString;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "SourceFile"


# static fields
.field private static final ConstructorId_charAt:I = -0x5

.field private static final ConstructorId_charCodeAt:I = -0x6

.field private static final ConstructorId_concat:I = -0xe

.field private static final ConstructorId_equalsIgnoreCase:I = -0x1e

.field private static final ConstructorId_fromCharCode:I = -0x1

.field private static final ConstructorId_fromCodePoint:I = -0x2

.field private static final ConstructorId_indexOf:I = -0x7

.field private static final ConstructorId_lastIndexOf:I = -0x8

.field private static final ConstructorId_localeCompare:I = -0x22

.field private static final ConstructorId_match:I = -0x1f

.field private static final ConstructorId_replace:I = -0x21

.field private static final ConstructorId_search:I = -0x20

.field private static final ConstructorId_slice:I = -0xf

.field private static final ConstructorId_split:I = -0x9

.field private static final ConstructorId_substr:I = -0xd

.field private static final ConstructorId_substring:I = -0xa

.field private static final ConstructorId_toLocaleLowerCase:I = -0x23

.field private static final ConstructorId_toLowerCase:I = -0xb

.field private static final ConstructorId_toUpperCase:I = -0xc

.field private static final Id_anchor:I = 0x1c

.field private static final Id_big:I = 0x15

.field private static final Id_blink:I = 0x16

.field private static final Id_bold:I = 0x10

.field private static final Id_charAt:I = 0x5

.field private static final Id_charCodeAt:I = 0x6

.field private static final Id_codePointAt:I = 0x2d

.field private static final Id_concat:I = 0xe

.field private static final Id_constructor:I = 0x1

.field private static final Id_endsWith:I = 0x2a

.field private static final Id_equals:I = 0x1d

.field private static final Id_equalsIgnoreCase:I = 0x1e

.field private static final Id_fixed:I = 0x12

.field private static final Id_fontcolor:I = 0x1a

.field private static final Id_fontsize:I = 0x19

.field private static final Id_includes:I = 0x28

.field private static final Id_indexOf:I = 0x7

.field private static final Id_italics:I = 0x11

.field private static final Id_lastIndexOf:I = 0x8

.field private static final Id_length:I = 0x1

.field private static final Id_link:I = 0x1b

.field private static final Id_localeCompare:I = 0x22

.field private static final Id_match:I = 0x1f

.field private static final Id_normalize:I = 0x2b

.field private static final Id_padEnd:I = 0x2f

.field private static final Id_padStart:I = 0x2e

.field private static final Id_repeat:I = 0x2c

.field private static final Id_replace:I = 0x21

.field private static final Id_search:I = 0x20

.field private static final Id_slice:I = 0xf

.field private static final Id_small:I = 0x14

.field private static final Id_split:I = 0x9

.field private static final Id_startsWith:I = 0x29

.field private static final Id_strike:I = 0x13

.field private static final Id_sub:I = 0x18

.field private static final Id_substr:I = 0xd

.field private static final Id_substring:I = 0xa

.field private static final Id_sup:I = 0x17

.field private static final Id_toLocaleLowerCase:I = 0x23

.field private static final Id_toLocaleUpperCase:I = 0x24

.field private static final Id_toLowerCase:I = 0xb

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final Id_toUpperCase:I = 0xc

.field private static final Id_trim:I = 0x25

.field private static final Id_trimEnd:I = 0x32

.field private static final Id_trimLeft:I = 0x26

.field private static final Id_trimRight:I = 0x27

.field private static final Id_trimStart:I = 0x31

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_INSTANCE_ID:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x32

.field private static final STRING_TAG:Ljava/lang/Object;

.field private static final SymbolId_iterator:I = 0x30

.field private static final serialVersionUID:J = 0xcc57334977d230fL


# instance fields
.field private string:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "String"

    sput-object v0, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    return-void
.end method

.method private defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v2, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    const-string v0, "value"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "writable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "enumerable"

    invoke-virtual {v1, v3, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v0, "configurable"

    invoke-virtual {v1, v0, p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static js_concat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_1

    .line 8
    .line 9
    aget-object p1, p1, v1

    .line 10
    .line 11
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    new-array v3, v0, [Ljava/lang/String;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-eq v4, v0, :cond_2

    .line 28
    .line 29
    aget-object v5, p1, v4

    .line 30
    .line 31
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    aput-object v5, v3, v4

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    add-int/2addr v2, v5

    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v2, p0}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_1
    if-eq v1, v0, :cond_3

    .line 50
    .line 51
    aget-object p1, v3, v1

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
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

.method private static js_indexOf(ILjava/lang/String;[Ljava/lang/Object;)I
    .locals 11

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v3

    const/16 v5, 0x2a

    const/16 v6, 0x29

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v0, p0

    cmpl-double p0, v3, v0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    double-to-int p0, v3

    :goto_0
    return p0

    :cond_1
    const/4 v7, -0x1

    if-eq p0, v6, :cond_2

    if-eq p0, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_2

    return v7

    :cond_2
    const-wide/16 v8, 0x0

    cmpg-double v10, v3, v8

    if-gez v10, :cond_3

    move-wide v3, v8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    goto :goto_2

    :cond_5
    if-ne p0, v5, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v10, v3, v8

    if-lez v10, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v5, p0, :cond_a

    array-length p0, p2

    if-eqz p0, :cond_7

    array-length p0, p2

    if-eq p0, v2, :cond_7

    array-length p0, p2

    const/4 v5, 0x2

    if-ne p0, v5, :cond_8

    aget-object p0, p2, v2

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, p2, :cond_8

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v3, p0

    :cond_8
    double-to-int p0, v3

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_a
    if-ne p0, v6, :cond_c

    double-to-int p0, v3

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, -0x1

    goto :goto_4

    :cond_c
    double-to-int p0, v3

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_4
    return v0
.end method

.method private static js_lastIndexOf(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v3, p1

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2

    move-wide v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v1, p1

    :cond_2
    :goto_1
    double-to-int p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static js_pad(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toLength([Ljava/lang/Object;I)J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    return-object p0

    :cond_0
    array-length p2, p3

    const/4 v2, 0x2

    if-lt p2, v2, :cond_1

    const/4 p2, 0x1

    aget-object v2, p3, p2

    invoke-static {v2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object p3, p3, p2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_2

    return-object p0

    :cond_1
    const-string p3, " "

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v2, p2

    sub-long/2addr v0, v2

    long-to-int p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, p2, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p4, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_repeat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_5

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, p2, v2

    if-eqz v4, :cond_5

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    double-to-long v2, p2

    mul-long v0, v0, v2

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, p2, v2

    if-gtz v4, :cond_3

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    long-to-int v1, v0

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int p2, p2

    const/4 p3, 0x1

    :goto_0
    div-int/lit8 v0, p2, 0x2

    if-gt p3, v0, :cond_1

    invoke-virtual {v2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    mul-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    if-ge p3, p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, p3

    mul-int p2, p2, p0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "Invalid size or count value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0

    :cond_5
    const-string p0, "Invalid count value"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static js_slice(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 10

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v4

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    cmpg-double v6, v4, v1

    if-gez v6, :cond_1

    int-to-double v6, v0

    add-double/2addr v4, v6

    cmpg-double v6, v4, v1

    if-gez v6, :cond_2

    move-wide v4, v1

    goto :goto_1

    :cond_1
    int-to-double v6, v0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    move-wide v4, v6

    :cond_2
    :goto_1
    array-length v6, p1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    aget-object p1, p1, v3

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    cmpg-double p1, v6, v1

    if-gez p1, :cond_5

    int-to-double v8, v0

    add-double/2addr v6, v8

    cmpg-double p1, v6, v1

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v1, v6

    goto :goto_2

    :cond_5
    int-to-double v1, v0

    cmpl-double p1, v6, v1

    if-lez p1, :cond_4

    :goto_2
    cmpg-double p1, v1, v4

    if-gez p1, :cond_7

    move-wide v1, v4

    goto :goto_4

    :cond_6
    :goto_3
    int-to-double v1, v0

    :cond_7
    :goto_4
    double-to-int p1, v4

    double-to-int v0, v1

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static js_substr(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    int-to-double v6, v0

    add-double/2addr v2, v6

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    move-wide v2, v4

    goto :goto_0

    :cond_1
    int-to-double v6, v0

    cmpl-double v8, v2, v6

    if-lez v8, :cond_2

    move-wide v2, v6

    :cond_2
    :goto_0
    int-to-double v6, v0

    array-length v0, p1

    if-le v0, v1, :cond_5

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    cmpg-double p1, v0, v4

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v4, v0

    :goto_1
    add-double/2addr v4, v2

    cmpl-double p1, v4, v6

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-wide v6, v4

    :cond_5
    :goto_2
    double-to-int p1, v2

    double-to-int v0, v6

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static js_substring(Lorg/mozilla/javascript/Context;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    int-to-double v5, v0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_1

    move-wide v1, v5

    :cond_1
    :goto_0
    array-length v5, p2

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    aget-object p2, p2, v6

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p2, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    cmpg-double p2, v5, v3

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    int-to-double v3, v0

    cmpl-double p2, v5, v3

    if-lez p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v3, v5

    :goto_1
    cmpg-double p2, v3, v1

    if-gez p2, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    const/16 p2, 0x78

    if-eq p0, p2, :cond_5

    move-wide v8, v1

    move-wide v1, v3

    move-wide v3, v8

    goto :goto_3

    :cond_5
    move-wide v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    int-to-double v3, v0

    :cond_7
    :goto_3
    double-to-int p0, v1

    double-to-int p2, v3

    invoke-interface {p1, p0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/NativeString;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/NativeString;

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-static {p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p2, 0x3e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    :goto_0
    const/4 v6, -0x2

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v3, v6, :cond_27

    const/4 v6, -0x1

    if-eq v3, v6, :cond_24

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    const-string v10, "font"

    const-string v11, "a"

    const/4 v12, 0x3

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    packed-switch v3, :pswitch_data_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "String.prototype has no method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v3, Lorg/mozilla/javascript/NativeStringIterator;

    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lorg/mozilla/javascript/NativeStringIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object v3

    :pswitch_1
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v1

    cmpg-double v3, v1, v13

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    return-object v0

    :pswitch_2
    invoke-static {v1, v4, v0, v5}, Lorg/mozilla/javascript/NativeString;->js_repeat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    array-length v2, v5

    if-eqz v2, :cond_8

    aget-object v2, v5, v9

    invoke-static {v2}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    sget-object v3, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    sget-object v3, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    sget-object v3, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "The normalization form should be one of \'NFC\', \'NFD\', \'NFKC\', \'NFKD\'."

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_8
    :goto_4
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    array-length v7, v5

    if-lez v7, :cond_a

    aget-object v7, v5, v9

    instance-of v7, v7, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez v7, :cond_9

    goto :goto_5

    :cond_9
    const-string v1, "String"

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg.first.arg.not.regexp"

    invoke-static {v2, v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_a
    :goto_5
    invoke-static {v3, v2, v5}, Lorg/mozilla/javascript/NativeString;->js_indexOf(ILjava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    const/16 v7, 0x28

    if-ne v3, v7, :cond_c

    if-eq v2, v6, :cond_b

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c
    const/16 v7, 0x29

    if-ne v3, v7, :cond_e

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_e
    const/16 v7, 0x2a

    if-ne v3, v7, :cond_10

    if-eq v2, v6, :cond_f

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_8
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_10
    :pswitch_5
    const/16 v2, 0x2e

    if-ne v3, v2, :cond_11

    goto :goto_9

    :cond_11
    const/4 v8, 0x0

    :goto_9
    invoke-static {v1, v4, v0, v5, v8}, Lorg/mozilla/javascript/NativeString;->js_pad(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    :goto_a
    if-lez v2, :cond_12

    add-int/lit8 v3, v2, -0x1

    aget-char v3, v1, v3

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_12
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_b
    array-length v2, v1

    if-ge v9, v2, :cond_13

    aget-char v2, v1, v9

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_13
    array-length v1, v1

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_c
    array-length v2, v1

    if-ge v9, v2, :cond_14

    aget-char v2, v1, v9

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_14
    array-length v2, v1

    :goto_d
    if-le v2, v9, :cond_15

    add-int/lit8 v3, v2, -0x1

    aget-char v3, v1, v3

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v3

    if-eqz v3, :cond_15

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_15
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/text/Collator;->setStrength(I)V

    invoke-virtual {v1, v8}, Ljava/text/Collator;->setDecomposition(I)V

    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_c
    const/16 v6, 0x1f

    if-ne v3, v6, :cond_16

    const/4 v12, 0x1

    goto :goto_e

    :cond_16
    const/16 v6, 0x20

    if-ne v3, v6, :cond_17

    goto :goto_e

    :cond_17
    const/4 v3, 0x2

    const/4 v12, 0x2

    :goto_e
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v4

    move-object v4, v5

    move v5, v12

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/RegExpProxy;->action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    if-ne v3, v2, :cond_18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f

    :cond_18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_f
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_e
    const-string v0, "name"

    invoke-static {v4, v11, v0, v5}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_f
    const-string v0, "href"

    invoke-static {v4, v11, v0, v5}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_10
    const-string v0, "color"

    invoke-static {v4, v10, v0, v5}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_11
    const-string v0, "size"

    invoke-static {v4, v10, v0, v5}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_12
    const-string v0, "sub"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_13
    const-string v0, "sup"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_14
    const-string v0, "blink"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "big"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_16
    const-string v0, "small"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17
    const-string v0, "strike"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string v0, "tt"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_19
    const-string v0, "i"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1a
    const-string v0, "b"

    invoke-static {v4, v0, v15, v15}, Lorg/mozilla/javascript/NativeString;->tagify(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1b
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeString;->js_slice(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_1c
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeString;->js_concat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeString;->js_substr(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_1e
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_20
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lorg/mozilla/javascript/NativeString;->js_substring(Lorg/mozilla/javascript/Context;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_21
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0, v5}, Lorg/mozilla/javascript/RegExpProxy;->js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_22
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mozilla/javascript/NativeString;->js_lastIndexOf(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_23
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1, v0, v5}, Lorg/mozilla/javascript/NativeString;->js_indexOf(ILjava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_24
    invoke-static {v1, v4, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v5, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v1

    const/4 v4, 0x5

    cmpg-double v5, v1, v13

    if-ltz v5, :cond_1b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-double v5, v5

    cmpl-double v8, v1, v5

    if-ltz v8, :cond_19

    goto :goto_10

    :cond_19
    double-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v3, v4, :cond_1a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1b
    :goto_10
    if-ne v3, v4, :cond_1c

    return-object v7

    :cond_1c
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object v0

    :pswitch_25
    invoke-static {v4, v0}, Lorg/mozilla/javascript/NativeString;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;

    move-result-object v0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(new String(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"))"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_26
    invoke-static {v4, v0}, Lorg/mozilla/javascript/NativeString;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;

    move-result-object v0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :pswitch_27
    array-length v0, v5

    if-nez v0, :cond_1e

    goto :goto_12

    :cond_1e
    aget-object v0, v5, v9

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v4, :cond_1f

    aget-object v0, v5, v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :cond_1f
    aget-object v0, v5, v9

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_12
    if-nez v4, :cond_20

    new-instance v0, Lorg/mozilla/javascript/NativeString;

    invoke-direct {v0, v7}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_20
    instance-of v0, v7, Ljava/lang/String;

    if-eqz v0, :cond_21

    goto :goto_13

    :cond_21
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_13
    return-object v7

    :pswitch_28
    array-length v6, v5

    if-lez v6, :cond_23

    aget-object v4, v5, v9

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    array-length v6, v5

    sub-int/2addr v6, v8

    new-array v7, v6, [Ljava/lang/Object;

    :goto_14
    if-ge v9, v6, :cond_22

    add-int/lit8 v8, v9, 0x1

    aget-object v10, v5, v8

    aput-object v10, v7, v9

    move v9, v8

    goto :goto_14

    :cond_22
    move-object v5, v7

    goto :goto_15

    :cond_23
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    :goto_15
    neg-int v3, v3

    goto/16 :goto_0

    :cond_24
    array-length v0, v5

    if-ge v0, v8, :cond_25

    return-object v7

    :cond_25
    new-array v1, v0, [C

    :goto_16
    if-eq v9, v0, :cond_26

    aget-object v2, v5, v9

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toUint16(Ljava/lang/Object;)C

    move-result v2

    aput-char v2, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_27
    array-length v0, v5

    if-ge v0, v8, :cond_28

    return-object v7

    :cond_28
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_17
    if-eq v2, v0, :cond_2a

    aget-object v3, v5, v2

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-static {v4}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v6

    if-eqz v6, :cond_29

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid code point "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_2a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v0}, Ljava/lang/String;-><init>([III)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch -0x23
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xf
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 7

    sget-object v6, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const-string v4, "fromCharCode"

    const/4 v5, 0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "fromCodePoint"

    const/4 v3, -0x2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "charAt"

    const/4 v5, 0x2

    const/4 v3, -0x5

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "charCodeAt"

    const/4 v3, -0x6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "indexOf"

    const/4 v3, -0x7

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "lastIndexOf"

    const/4 v3, -0x8

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "split"

    const/4 v5, 0x3

    const/16 v3, -0x9

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "substring"

    const/16 v3, -0xa

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "toLowerCase"

    const/4 v5, 0x1

    const/16 v3, -0xb

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "toUpperCase"

    const/16 v3, -0xc

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "substr"

    const/4 v5, 0x3

    const/16 v3, -0xd

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "concat"

    const/4 v5, 0x2

    const/16 v3, -0xe

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "slice"

    const/4 v5, 0x3

    const/16 v3, -0xf

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "equalsIgnoreCase"

    const/4 v5, 0x2

    const/16 v3, -0x1e

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "match"

    const/16 v3, -0x1f

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "search"

    const/16 v3, -0x20

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "replace"

    const/16 v3, -0x21

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "localeCompare"

    const/16 v3, -0x22

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const-string v4, "toLocaleLowerCase"

    const/4 v5, 0x1

    const/16 v3, -0x23

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method public findInstanceIdInfo(Ljava/lang/String;)I
    .locals 1

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x7

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 16

    .line 1
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    const/16 v5, 0x64

    const/16 v6, 0x55

    const/16 v7, 0x4c

    const/16 v8, 0x8

    const/16 v11, 0x72

    const/16 v12, 0x61

    const/4 v13, 0x4

    const/16 v14, 0x63

    const/4 v15, 0x2

    const/16 v2, 0x6e

    const/16 v10, 0x73

    const/16 v3, 0x74

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_0

    const-string v1, "toLocaleLowerCase"

    const/16 v4, 0x23

    goto/16 :goto_1

    :cond_0
    if-ne v1, v6, :cond_2b

    const-string v1, "toLocaleUpperCase"

    const/16 v4, 0x24

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "equalsIgnoreCase"

    const/16 v4, 0x1e

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "localeCompare"

    const/16 v4, 0x22

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v10, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "lastIndexOf"

    const/16 v4, 0x8

    goto/16 :goto_1

    :cond_2
    const-string v1, "constructor"

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_3
    const-string v1, "codePointAt"

    const/16 v4, 0x2d

    goto/16 :goto_1

    :cond_4
    const-string v1, "toUpperCase"

    const/16 v4, 0xc

    goto/16 :goto_1

    :cond_5
    const-string v1, "toLowerCase"

    const/16 v4, 0xb

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_6

    const-string v1, "charCodeAt"

    goto/16 :goto_1

    :cond_6
    if-ne v1, v10, :cond_2b

    const-string v1, "startsWith"

    const/16 v4, 0x29

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_b

    const/16 v2, 0x53

    if-eq v1, v2, :cond_a

    if-eq v1, v12, :cond_9

    if-eq v1, v14, :cond_8

    if-eq v1, v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const-string v1, "substring"

    const/16 v4, 0xa

    goto/16 :goto_1

    :cond_8
    const-string v1, "fontcolor"

    const/16 v4, 0x1a

    goto/16 :goto_1

    :cond_9
    const-string v1, "normalize"

    const/16 v4, 0x2b

    goto/16 :goto_1

    :cond_a
    const-string v1, "trimStart"

    const/16 v4, 0x31

    goto/16 :goto_1

    :cond_b
    const-string v1, "trimRight"

    const/16 v4, 0x27

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_12

    if-eq v1, v2, :cond_11

    if-eq v1, v11, :cond_10

    if-eq v1, v3, :cond_f

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_e

    const/16 v2, 0x65

    if-eq v1, v2, :cond_d

    const/16 v2, 0x66

    if-eq v1, v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string v1, "trimLeft"

    const/16 v4, 0x26

    goto/16 :goto_1

    :cond_d
    const-string v1, "includes"

    const/16 v4, 0x28

    goto/16 :goto_1

    :cond_e
    const-string v1, "fontsize"

    const/16 v4, 0x19

    goto/16 :goto_1

    :cond_f
    const-string v1, "endsWith"

    const/16 v4, 0x2a

    goto/16 :goto_1

    :cond_10
    const-string v1, "padStart"

    const/16 v4, 0x2e

    goto/16 :goto_1

    :cond_11
    const-string v1, "toString"

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_12
    const-string v1, "toSource"

    const/4 v4, 0x3

    goto/16 :goto_1

    :pswitch_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_17

    const/16 v4, 0x65

    if-eq v1, v4, :cond_16

    if-eq v1, v2, :cond_15

    if-eq v1, v11, :cond_14

    if-eq v1, v3, :cond_13

    goto/16 :goto_0

    :cond_13
    const-string v1, "italics"

    const/16 v4, 0x11

    goto/16 :goto_1

    :cond_14
    const-string v1, "trimEnd"

    const/16 v4, 0x32

    goto/16 :goto_1

    :cond_15
    const-string v1, "indexOf"

    const/4 v4, 0x7

    goto/16 :goto_1

    :cond_16
    const-string v1, "replace"

    const/16 v4, 0x21

    goto/16 :goto_1

    :cond_17
    const-string v1, "valueOf"

    const/4 v4, 0x4

    goto/16 :goto_1

    :pswitch_9
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_20

    const/16 v4, 0x65

    if-eq v1, v4, :cond_1e

    const/16 v4, 0x68

    if-eq v1, v4, :cond_1d

    const/16 v4, 0x71

    if-eq v1, v4, :cond_1c

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_1a

    if-eq v1, v3, :cond_19

    const/16 v2, 0x75

    if-eq v1, v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const-string v1, "substr"

    const/16 v4, 0xd

    goto/16 :goto_1

    :cond_19
    const-string v1, "strike"

    const/16 v4, 0x13

    goto/16 :goto_1

    :cond_1a
    const-string v1, "concat"

    const/16 v4, 0xe

    goto/16 :goto_1

    :cond_1b
    const-string v1, "anchor"

    const/16 v4, 0x1c

    goto/16 :goto_1

    :cond_1c
    const-string v1, "equals"

    const/16 v4, 0x1d

    goto/16 :goto_1

    :cond_1d
    const-string v1, "charAt"

    const/4 v4, 0x5

    goto/16 :goto_1

    :cond_1e
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1f

    const-string v1, "repeat"

    const/16 v4, 0x2c

    goto/16 :goto_1

    :cond_1f
    if-ne v1, v10, :cond_2b

    const-string v1, "search"

    const/16 v4, 0x20

    goto/16 :goto_1

    :cond_20
    const-string v1, "padEnd"

    const/16 v4, 0x2f

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_26

    const/16 v2, 0x65

    if-eq v1, v2, :cond_25

    const/16 v2, 0x68

    if-eq v1, v2, :cond_24

    if-eq v1, v3, :cond_23

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_22

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_21

    goto/16 :goto_0

    :cond_21
    const-string v1, "small"

    const/16 v4, 0x14

    goto/16 :goto_1

    :cond_22
    const-string v1, "blink"

    const/16 v4, 0x16

    goto/16 :goto_1

    :cond_23
    const-string v1, "split"

    const/16 v4, 0x9

    goto/16 :goto_1

    :cond_24
    const-string v1, "match"

    const/16 v4, 0x1f

    goto/16 :goto_1

    :cond_25
    const-string v1, "slice"

    const/16 v4, 0xf

    goto/16 :goto_1

    :cond_26
    const-string v1, "fixed"

    const/16 v4, 0x12

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_27

    const-string v1, "bold"

    const/16 v4, 0x10

    goto :goto_1

    :cond_27
    const/16 v2, 0x6c

    if-ne v1, v2, :cond_28

    const-string v1, "link"

    const/16 v4, 0x1b

    goto :goto_1

    :cond_28
    if-ne v1, v3, :cond_2b

    const-string v1, "trim"

    const/16 v4, 0x25

    goto :goto_1

    :pswitch_c
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_2b

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2b

    const/16 v9, 0x18

    goto :goto_2

    :cond_29
    const/4 v2, 0x1

    const/16 v3, 0x67

    if-ne v1, v3, :cond_2a

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x62

    if-ne v1, v3, :cond_2b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_2b

    const/16 v9, 0x15

    goto :goto_2

    :cond_2a
    const/16 v3, 0x70

    if-ne v1, v3, :cond_2b

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_2b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2b

    const/16 v9, 0x17

    goto :goto_2

    :cond_2b
    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_2c

    if-eq v1, v0, :cond_2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2

    :cond_2c
    move v9, v4

    :goto_2
    return v9

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x30

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p2, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "String"

    return-object v0
.end method

.method public getIds(ZZ)[Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, p2

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p1

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInstanceIdName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "length"

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInstanceIdValue(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public getMaxInstanceId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 3

    instance-of v0, p2, Lorg/mozilla/javascript/Symbol;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    iget p2, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeString;->defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public initPrototypeId(I)V
    .locals 8

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    const-string v5, "[Symbol.iterator]"

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "trimEnd"

    :goto_0
    move-object v5, v0

    const/4 v7, 0x0

    goto/16 :goto_3

    :pswitch_2
    const-string v0, "trimStart"

    goto :goto_0

    :pswitch_3
    const-string v0, "padEnd"

    :goto_1
    move-object v5, v0

    const/4 v7, 0x1

    goto/16 :goto_3

    :pswitch_4
    const-string v0, "padStart"

    goto :goto_1

    :pswitch_5
    const-string v0, "codePointAt"

    goto :goto_1

    :pswitch_6
    const-string v0, "repeat"

    goto :goto_1

    :pswitch_7
    const-string v0, "normalize"

    goto :goto_0

    :pswitch_8
    const-string v0, "endsWith"

    goto :goto_1

    :pswitch_9
    const-string v0, "startsWith"

    goto :goto_1

    :pswitch_a
    const-string v0, "includes"

    goto :goto_1

    :pswitch_b
    const-string v0, "trimRight"

    goto :goto_0

    :pswitch_c
    const-string v0, "trimLeft"

    goto :goto_0

    :pswitch_d
    const-string v0, "trim"

    goto :goto_0

    :pswitch_e
    const-string v0, "toLocaleUpperCase"

    goto :goto_0

    :pswitch_f
    const-string v0, "toLocaleLowerCase"

    goto :goto_0

    :pswitch_10
    const-string v0, "localeCompare"

    goto :goto_1

    :pswitch_11
    const-string v1, "replace"

    :goto_2
    move-object v5, v1

    const/4 v7, 0x2

    goto/16 :goto_3

    :pswitch_12
    const-string v0, "search"

    goto :goto_1

    :pswitch_13
    const-string v0, "match"

    goto :goto_1

    :pswitch_14
    const-string v0, "equalsIgnoreCase"

    goto :goto_1

    :pswitch_15
    const-string v0, "equals"

    goto :goto_1

    :pswitch_16
    const-string v0, "anchor"

    goto :goto_0

    :pswitch_17
    const-string v0, "link"

    goto :goto_0

    :pswitch_18
    const-string v0, "fontcolor"

    goto :goto_0

    :pswitch_19
    const-string v0, "fontsize"

    goto :goto_0

    :pswitch_1a
    const-string v0, "sub"

    goto :goto_0

    :pswitch_1b
    const-string v0, "sup"

    goto :goto_0

    :pswitch_1c
    const-string v0, "blink"

    goto :goto_0

    :pswitch_1d
    const-string v0, "big"

    goto :goto_0

    :pswitch_1e
    const-string v0, "small"

    goto :goto_0

    :pswitch_1f
    const-string v0, "strike"

    goto :goto_0

    :pswitch_20
    const-string v0, "fixed"

    goto :goto_0

    :pswitch_21
    const-string v0, "italics"

    goto :goto_0

    :pswitch_22
    const-string v0, "bold"

    goto :goto_0

    :pswitch_23
    const-string v1, "slice"

    goto :goto_2

    :pswitch_24
    const-string v0, "concat"

    goto :goto_1

    :pswitch_25
    const-string v1, "substr"

    goto :goto_2

    :pswitch_26
    const-string v0, "toUpperCase"

    goto :goto_0

    :pswitch_27
    const-string v0, "toLowerCase"

    goto :goto_0

    :pswitch_28
    const-string v1, "substring"

    goto :goto_2

    :pswitch_29
    const-string v1, "split"

    goto :goto_2

    :pswitch_2a
    const-string v0, "lastIndexOf"

    goto :goto_1

    :pswitch_2b
    const-string v0, "indexOf"

    goto :goto_1

    :pswitch_2c
    const-string v0, "charCodeAt"

    goto/16 :goto_1

    :pswitch_2d
    const-string v0, "charAt"

    goto/16 :goto_1

    :pswitch_2e
    const-string v0, "valueOf"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "toSource"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "toString"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "constructor"

    goto/16 :goto_1

    :goto_3
    sget-object v3, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public toCharSequence()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/CharSequence;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
