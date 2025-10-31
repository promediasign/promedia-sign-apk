.class public Lorg/apache/velocity/runtime/RuntimeInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/RuntimeConstants;
.implements Lorg/apache/velocity/runtime/RuntimeServices;


# instance fields
.field private applicationAttributes:Ljava/util/Map;

.field private configuration:Lorg/apache/velocity/util/ExtProperties;

.field private defaultEncoding:Ljava/lang/String;

.field private evaluateScopeName:Ljava/lang/String;

.field private eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

.field private volatile initialized:Z

.field private initializing:Z

.field private log:Lorg/slf4j/Logger;

.field private overridingProperties:Lorg/apache/velocity/util/ExtProperties;

.field private parserPool:Lorg/apache/velocity/runtime/ParserPool;

.field private provideEvaluateScope:Z

.field private resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

.field private runtimeDirectives:Ljava/util/Map;

.field private runtimeDirectivesShared:Ljava/util/Map;

.field private spaceGobbling:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

.field private stringInterning:Z

.field private uberSpect:Lorg/apache/velocity/util/introspection/Uberspect;

.field private vmFactory:Lorg/apache/velocity/runtime/VelocimacroFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->vmFactory:Lorg/apache/velocity/runtime/VelocimacroFactory;

    const-string v1, "org.apache.velocity"

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initializing:Z

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initialized:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->runtimeDirectives:Ljava/util/Map;

    new-instance v2, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {v2}, Lorg/apache/velocity/util/ExtProperties;-><init>()V

    iput-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->stringInterning:Z

    const-string v2, "evaluate"

    iput-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->provideEvaluateScope:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->applicationAttributes:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->reset()V

    return-void
.end method

.method private getDefaultEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->defaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method private initializeDirectives()V
    .locals 6

    const-string v0, "Cannot close directive properties!"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/org/apache/velocity/runtime/defaults/directive.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1}, Ljava/util/Dictionary;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/RuntimeInstance;->loadDirective(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v3, "Loaded System Directive: {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    const-string v1, "userdirective"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/RuntimeInstance;->loadDirective(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v5, "Loaded User Directive: {}"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    const-string v3, "Error loading directive.properties! Something is very wrong if these properties aren\'t being located. Either your Velocity distribution is incomplete or your Velocity jar file is corrupted!"

    invoke-direct {v1, v3}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    const-string v3, "Error while loading directive properties!"

    iget-object v4, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {v4, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_4
    throw v1
.end method

.method private initializeEvaluateScopeSettings()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, ".provide.scope.control"

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->provideEvaluateScope:Z

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->provideEvaluateScope:Z

    .line 21
    .line 22
    return-void
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
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

.method private initializeEventHandlers()V
    .locals 7

    new-instance v0, Lorg/apache/velocity/app/event/EventCartridge;

    invoke-direct {v0}, Lorg/apache/velocity/app/event/EventCartridge;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/app/event/EventCartridge;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    const-string v1, "eventhandler.referenceinsertion.class"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    const-class v6, Lorg/apache/velocity/app/event/ReferenceInsertionEventHandler;

    invoke-direct {p0, v5, v1, v6}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeSpecificEventHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/velocity/app/event/EventHandler;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    const-string v1, "eventhandler.methodexception.class"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    const-class v6, Lorg/apache/velocity/app/event/MethodExceptionEventHandler;

    invoke-direct {p0, v5, v1, v6}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeSpecificEventHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/velocity/app/event/EventHandler;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    const-string v1, "eventhandler.include.class"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    const-class v6, Lorg/apache/velocity/app/event/IncludeEventHandler;

    invoke-direct {p0, v5, v1, v6}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeSpecificEventHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/velocity/app/event/EventHandler;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    const-string v1, "eventhandler.invalidreferences.class"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    const-class v5, Lorg/apache/velocity/app/event/InvalidReferenceEventHandler;

    invoke-direct {p0, v4, v1, v5}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeSpecificEventHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/velocity/app/event/EventHandler;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private initializeIntrospection()V
    .locals 8

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "The specified class for Uberspect ("

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    .line 6
    .line 7
    const-string v3, "runtime.introspector.uberspect"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lorg/apache/velocity/util/ExtProperties;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_4

    .line 16
    .line 17
    aget-object v5, v2, v4

    .line 18
    .line 19
    :try_start_0
    invoke-static {v5}, Lorg/apache/velocity/util/ClassUtils;->getNewInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    instance-of v7, v6, Lorg/apache/velocity/util/introspection/Uberspect;

    .line 24
    .line 25
    if-eqz v7, :cond_3

    .line 26
    .line 27
    check-cast v6, Lorg/apache/velocity/util/introspection/Uberspect;

    .line 28
    .line 29
    instance-of v5, v6, Lorg/apache/velocity/util/RuntimeServicesAware;

    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    move-object v5, v6

    .line 34
    check-cast v5, Lorg/apache/velocity/util/RuntimeServicesAware;

    .line 35
    .line 36
    invoke-interface {v5, p0}, Lorg/apache/velocity/util/RuntimeServicesAware;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v5, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->uberSpect:Lorg/apache/velocity/util/introspection/Uberspect;

    .line 40
    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    :goto_1
    iput-object v6, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->uberSpect:Lorg/apache/velocity/util/introspection/Uberspect;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    instance-of v7, v6, Lorg/apache/velocity/util/introspection/ChainableUberspector;

    .line 47
    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    move-object v7, v6

    .line 51
    check-cast v7, Lorg/apache/velocity/util/introspection/ChainableUberspector;

    .line 52
    .line 53
    invoke-interface {v7, v5}, Lorg/apache/velocity/util/introspection/ChainableUberspector;->wrap(Lorg/apache/velocity/util/introspection/Uberspect;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance v7, Lorg/apache/velocity/util/introspection/LinkingUberspector;

    .line 58
    .line 59
    invoke-direct {v7, v5, v6}, Lorg/apache/velocity/util/introspection/LinkingUberspector;-><init>(Lorg/apache/velocity/util/introspection/Uberspect;Lorg/apache/velocity/util/introspection/Uberspect;)V

    .line 60
    .line 61
    .line 62
    iput-object v7, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->uberSpect:Lorg/apache/velocity/util/introspection/Uberspect;

    .line 63
    .line 64
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string v0, ") does not implement "

    .line 68
    .line 69
    invoke-static {v1, v5, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-class v1, Lorg/apache/velocity/util/introspection/Uberspect;

    .line 74
    .line 75
    const-string v2, "; Velocity is not initialized correctly."

    .line 76
    .line 77
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 82
    .line 83
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :catch_0
    move-exception v1

    .line 93
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 94
    .line 95
    const-string v3, "Cannot access class \'"

    .line 96
    .line 97
    invoke-static {v3, v5, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v2, v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v2

    .line 105
    :catch_1
    move-exception v1

    .line 106
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 107
    .line 108
    const-string v3, "Could not instantiate class \'"

    .line 109
    .line 110
    invoke-static {v3, v5, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {v2, v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v2

    .line 118
    :catch_2
    move-exception v0

    .line 119
    const-string v2, ") does not exist or is not accessible to the current classloader."

    .line 120
    .line 121
    invoke-static {v1, v5, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 126
    .line 127
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 131
    .line 132
    invoke-direct {v2, v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw v2

    .line 136
    :cond_4
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->uberSpect:Lorg/apache/velocity/util/introspection/Uberspect;

    .line 137
    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    invoke-interface {v0}, Lorg/apache/velocity/util/introspection/Uberspect;->init()V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 145
    .line 146
    const-string v1, "It appears that no class was specified as the Uberspect.  Please ensure that all configuration information is correct."

    .line 147
    .line 148
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    .line 152
    .line 153
    invoke-direct {v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0
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

.method private initializeLog()V
    .locals 4

    const-string v0, " object set as runtime.log.name is not a valid string."

    const-string v1, " object set as runtime.log.instance is not a valid org.slf4j.Logger implementation."

    :try_start_0
    const-string v2, "runtime.log.instance"

    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/RuntimeInstance;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v0, Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v2, Lorg/slf4j/Logger;

    iput-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "runtime.log.name"

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :goto_1
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error initializing log: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initializeParserPool()V
    .locals 5

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "The specified class for ParserPool ("

    .line 4
    .line 5
    const-string v2, "parser.pool.class"

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/RuntimeInstance;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-lez v3, :cond_1

    .line 18
    .line 19
    :try_start_0
    invoke-static {v2}, Lorg/apache/velocity/util/ClassUtils;->getNewInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    instance-of v3, v0, Lorg/apache/velocity/runtime/ParserPool;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    check-cast v0, Lorg/apache/velocity/runtime/ParserPool;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->parserPool:Lorg/apache/velocity/runtime/ParserPool;

    .line 30
    .line 31
    invoke-interface {v0, p0}, Lorg/apache/velocity/runtime/ParserPool;->initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ") does not implement "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-class v1, Lorg/apache/velocity/runtime/ParserPool;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " Velocity not initialized correctly."

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 63
    .line 64
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    new-instance v3, Lorg/apache/velocity/exception/VelocityException;

    .line 75
    .line 76
    const-string v4, "Cannot access class \'"

    .line 77
    .line 78
    invoke-static {v4, v2, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v3, v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v3

    .line 86
    :catch_1
    move-exception v1

    .line 87
    new-instance v3, Lorg/apache/velocity/exception/VelocityException;

    .line 88
    .line 89
    const-string v4, "Could not instantiate class \'"

    .line 90
    .line 91
    invoke-static {v4, v2, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {v3, v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw v3

    .line 99
    :catch_2
    move-exception v0

    .line 100
    const-string v3, ") does not exist (or is not accessible to the current classloader."

    .line 101
    .line 102
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 107
    .line 108
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 112
    .line 113
    invoke-direct {v2, v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v2

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 118
    .line 119
    const-string v1, "It appears that no class was specified as the ParserPool.  Please ensure that all configuration information is correct."

    .line 120
    .line 121
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    .line 125
    .line 126
    invoke-direct {v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0
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

.method private initializeProperties()V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0}, Lorg/apache/velocity/util/ExtProperties;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->setDefaultProperties()V

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/util/ExtProperties;->combine(Lorg/apache/velocity/util/ExtProperties;)V

    :cond_1
    return-void
.end method

.method private initializeResourceManager()V
    .locals 6

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "The specified class for ResourceManager ("

    .line 4
    .line 5
    const-string v2, "resource.manager.instance"

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/RuntimeInstance;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "resource.manager.class"

    .line 12
    .line 13
    invoke-virtual {p0, v4}, Lorg/apache/velocity/runtime/RuntimeInstance;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-class v5, Lorg/apache/velocity/runtime/resource/ResourceManager;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    check-cast v3, Lorg/apache/velocity/runtime/resource/ResourceManager;

    .line 32
    .line 33
    iput-object v3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

    .line 34
    .line 35
    invoke-interface {v3, p0}, Lorg/apache/velocity/runtime/resource/ResourceManager;->initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, " object set as resource.manager.instance is not a valid org.apache.velocity.runtime.resource.ResourceManager."

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 54
    .line 55
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v1

    .line 64
    :cond_1
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-lez v3, :cond_3

    .line 71
    .line 72
    :try_start_0
    invoke-static {v4}, Lorg/apache/velocity/util/ClassUtils;->getNewInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    instance-of v3, v0, Lorg/apache/velocity/runtime/resource/ResourceManager;

    .line 77
    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    check-cast v0, Lorg/apache/velocity/runtime/resource/ResourceManager;

    .line 81
    .line 82
    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

    .line 83
    .line 84
    invoke-interface {v0, p0}, Lorg/apache/velocity/runtime/resource/ResourceManager;->initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

    .line 88
    .line 89
    invoke-virtual {p0, v2, v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string v0, ") does not implement "

    .line 94
    .line 95
    invoke-static {v1, v4, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "; Velocity is not initialized correctly."

    .line 100
    .line 101
    invoke-static {v5, v0, v1}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 106
    .line 107
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 111
    .line 112
    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 118
    .line 119
    const-string v3, "Cannot access class \'"

    .line 120
    .line 121
    invoke-static {v3, v4, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {v2, v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v2

    .line 129
    :catch_1
    move-exception v1

    .line 130
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 131
    .line 132
    const-string v3, "Could not instantiate class \'"

    .line 133
    .line 134
    invoke-static {v3, v4, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {v2, v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v2

    .line 142
    :catch_2
    move-exception v0

    .line 143
    const-string v2, ") does not exist or is not accessible to the current classloader."

    .line 144
    .line 145
    invoke-static {v1, v4, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 150
    .line 151
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 155
    .line 156
    invoke-direct {v2, v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    throw v2

    .line 160
    :cond_3
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 161
    .line 162
    const-string v1, "It appears that no class or instance was specified as the ResourceManager.  Please ensure that all configuration information is correct."

    .line 163
    .line 164
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    .line 168
    .line 169
    invoke-direct {v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0
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

.method private initializeSelfProperties()V
    .locals 2

    const-string v0, "runtime.string.interning"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->stringInterning:Z

    const-string v0, "space.gobbling"

    const-string v1, "lines"

    invoke-virtual {p0, v0, v1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->valueOf(Ljava/lang/String;)Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->spaceGobbling:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->spaceGobbling:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    :goto_0
    return-void
.end method

.method private initializeSpecificEventHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/velocity/app/event/EventHandler;
    .locals 5

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, " ("

    .line 4
    .line 5
    const-string v2, "The specified class for "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-lez v4, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lorg/apache/velocity/util/ClassUtils;->getNewInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {p3, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_0
    const-string v0, ") does not implement "

    .line 31
    .line 32
    invoke-static {v2, p2, v1, p1, v0}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "; Velocity is not initialized correctly."

    .line 37
    .line 38
    invoke-static {p3, p1, p2}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 43
    .line 44
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p2

    .line 53
    :catch_0
    move-exception p2

    .line 54
    new-instance p3, Lorg/apache/velocity/exception/VelocityException;

    .line 55
    .line 56
    const-string v1, "Cannot access class \'"

    .line 57
    .line 58
    invoke-static {v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p3, p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw p3

    .line 66
    :catch_1
    move-exception p2

    .line 67
    new-instance p3, Lorg/apache/velocity/exception/VelocityException;

    .line 68
    .line 69
    const-string v1, "Could not instantiate class \'"

    .line 70
    .line 71
    invoke-static {v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p3, p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p3

    .line 79
    :catch_2
    move-exception p3

    .line 80
    const-string v0, ") does not exist or is not accessible to the current classloader."

    .line 81
    .line 82
    invoke-static {v2, p2, v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 87
    .line 88
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    .line 92
    .line 93
    invoke-direct {p2, p1, p3}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p2

    .line 97
    :cond_1
    return-object v3
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
.end method

.method private requireInitialization()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initialized:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not auto-initialize Velocity"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Velocity could not be initialized!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private setDefaultProperties()V
    .locals 5

    const-string v0, "Cannot close Velocity Runtime default properties!"

    const-string v1, "org/apache/velocity/runtime/defaults/velocity.properties"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v3, v2}, Lorg/apache/velocity/util/ExtProperties;->load(Ljava/io/InputStream;)V

    const-string v3, "input.encoding"

    const-string v4, "UTF-8"

    invoke-virtual {p0, v3, v4}, Lorg/apache/velocity/runtime/RuntimeInstance;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->defaultEncoding:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v4, "Default Properties resource: {}"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Resource not found: org/apache/velocity/runtime/defaults/velocity.properties"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    const-string v3, "Cannot get Velocity Runtime default properties!"

    iget-object v4, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {v4, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :goto_2
    throw v1
.end method

.method private updateSharedDirectivesMap()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->runtimeDirectives:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->runtimeDirectivesShared:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized addDirective(Lorg/apache/velocity/runtime/directive/Directive;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->runtimeDirectives:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Directive;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->updateSharedDirectivesMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {v0}, Lorg/apache/velocity/util/ExtProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addVelocimacro(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;",
            "Lorg/apache/velocity/Template;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->vmFactory:Lorg/apache/velocity/runtime/VelocimacroFactory;

    iget-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->stringInterning:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/velocity/runtime/VelocimacroFactory;->addVelocimacro(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;)Z

    move-result p1

    return p1
.end method

.method public clearProperty(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/ExtProperties;->clearProperty(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public createNewParser()Lorg/apache/velocity/runtime/parser/Parser;
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->requireInitialization()V

    new-instance v0, Lorg/apache/velocity/runtime/parser/Parser;

    invoke-direct {v0, p0}, Lorg/apache/velocity/runtime/parser/Parser;-><init>(Lorg/apache/velocity/runtime/RuntimeServices;)V

    return-object v0
.end method

.method public evaluate(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/lang/String;Ljava/io/Reader;)Z
    .locals 2

    .line 1
    if-eqz p3, :cond_1

    new-instance v0, Lorg/apache/velocity/Template;

    invoke-direct {v0}, Lorg/apache/velocity/Template;-><init>()V

    invoke-virtual {v0, p3}, Lorg/apache/velocity/runtime/resource/Resource;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p4, v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    move-result-object p4
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/velocity/exception/TemplateInitException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/velocity/runtime/RuntimeInstance;->render(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/SimpleNode;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/velocity/exception/ParseErrorException;

    invoke-direct {p2, p1, v1}, Lorg/apache/velocity/exception/ParseErrorException;-><init>(Lorg/apache/velocity/exception/VelocityException;Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/apache/velocity/exception/ParseErrorException;

    invoke-direct {p2, p1, v1}, Lorg/apache/velocity/exception/ParseErrorException;-><init>(Lorg/apache/velocity/runtime/parser/ParseException;Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "logTag (i.e. template name) cannot be null, you must provide an identifier for the content being evaluated"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public evaluate(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluate(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/lang/String;Ljava/io/Reader;)Z

    move-result p1

    return p1
.end method

.method public getApplicationAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->applicationAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getConfiguration()Lorg/apache/velocity/util/ExtProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getContent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;

    move-result-object p1

    return-object p1
.end method

.method public getContent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->requireInitialization()V

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1, p2}, Lorg/apache/velocity/runtime/resource/ResourceManager;->getResource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/resource/ContentResource;

    return-object p1
.end method

.method public getDirective(Ljava/lang/String;)Lorg/apache/velocity/runtime/directive/Directive;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->runtimeDirectivesShared:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/directive/Directive;

    return-object p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/ExtProperties;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLoaderNameForResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->requireInitialization()V

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/resource/ResourceManager;->getLoaderNameForResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLog()Lorg/slf4j/Logger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public getLog(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 3

    .line 2
    const-string v0, "runtime.log.instance"

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runtime.log.name"

    const-string v2, "org.apache.velocity"

    invoke-virtual {p0, v1, v2}, Lorg/apache/velocity/runtime/RuntimeInstance;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/ExtProperties;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->spaceGobbling:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getTemplate(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/Template;
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->requireInitialization()V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getDefaultEncoding()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lorg/apache/velocity/runtime/resource/ResourceManager;->getResource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/Template;

    return-object p1
.end method

.method public getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->uberSpect:Lorg/apache/velocity/util/introspection/Uberspect;

    return-object v0
.end method

.method public getVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/Directive;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->vmFactory:Lorg/apache/velocity/runtime/VelocimacroFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/velocity/runtime/VelocimacroFactory;->getVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized init()V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initializing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v2, "Initializing Velocity, Calling init()..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initializing:Z

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v3, "*****************************"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v3, "Starting Apache Velocity v2.0"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v3, "RuntimeInstance initializing."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeProperties()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeSelfProperties()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeLog()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeResourceManager()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeDirectives()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeEventHandlers()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeParserPool()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeIntrospection()V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->initializeEvaluateScopeSettings()V

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->vmFactory:Lorg/apache/velocity/runtime/VelocimacroFactory;

    invoke-virtual {v2}, Lorg/apache/velocity/runtime/VelocimacroFactory;->initVelocimacro()V

    iget-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v3, "RuntimeInstance successfully initialized."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initialized:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initializing:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->reset()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    :try_start_5
    iput-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initializing:Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {v0, p1}, Lorg/apache/velocity/util/ExtProperties;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->setConfiguration(Lorg/apache/velocity/util/ExtProperties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->init()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    const-string v2, "Error reading properties from \'"

    const-string v3, "\'"

    .line 2
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v1, p1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public init(Ljava/util/Properties;)V
    .locals 0

    .line 9
    invoke-static {p1}, Lorg/apache/velocity/util/ExtProperties;->convertProperties(Ljava/util/Properties;)Lorg/apache/velocity/util/ExtProperties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->setConfiguration(Lorg/apache/velocity/util/ExtProperties;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->init()V

    return-void
.end method

.method public invokeVelocimacro(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/velocity/context/Context;Ljava/io/Writer;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-eqz p4, :cond_4

    .line 4
    .line 5
    if-eqz p5, :cond_4

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    move-object p2, p1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    new-array p3, v0, [Ljava/lang/String;

    .line 14
    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, p1, v1}, Lorg/apache/velocity/runtime/RuntimeInstance;->isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    const-string v1, "#"

    .line 23
    .line 24
    const-string v2, "("

    .line 25
    .line 26
    invoke-static {v1, p1, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    array-length v1, p3

    .line 31
    :goto_0
    if-ge v0, v1, :cond_2

    .line 32
    .line 33
    aget-object v2, p3, v0

    .line 34
    .line 35
    const-string v3, " $"

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string p3, " )"

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p4, p5, p2, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluate(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_3
    const-string p2, "RuntimeInstance.invokeVelocimacro(): VM \'"

    .line 61
    .line 62
    const-string p3, "\' is not registered."

    .line 63
    .line 64
    invoke-static {p2, p1, p3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 69
    .line 70
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p2

    .line 79
    :cond_4
    iget-object p1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 80
    .line 81
    const-string p2, "RuntimeInstance.invokeVelocimacro(): invalid call: vmName, context, and writer must not be null"

    .line 82
    .line 83
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Ljava/lang/NullPointerException;

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
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
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initialized:Z

    return v0
.end method

.method public isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->vmFactory:Lorg/apache/velocity/runtime/VelocimacroFactory;

    iget-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->stringInterning:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/runtime/VelocimacroFactory;->isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z

    move-result p1

    return p1
.end method

.method public loadDirective(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/apache/velocity/util/ClassUtils;->getNewInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/apache/velocity/runtime/directive/Directive;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lorg/apache/velocity/runtime/directive/Directive;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->addDirective(Lorg/apache/velocity/runtime/directive/Directive;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " does not implement "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-class v1, Lorg/apache/velocity/runtime/directive/Directive;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "; it cannot be loaded."

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    const-string v1, "Failed to load Directive: "

    .line 60
    .line 61
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    .line 66
    .line 67
    invoke-static {v1, p1, v0, p1, v0}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    throw p1
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
.end method

.method public parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;
    .locals 3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->requireInitialization()V

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->parserPool:Lorg/apache/velocity/runtime/ParserPool;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/ParserPool;->get()Lorg/apache/velocity/runtime/parser/Parser;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    const-string v1, "Runtime: ran out of parsers. Creating a new one.  Please increment the parser.pool.size property. The current value is too small."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->createNewParser()Lorg/apache/velocity/runtime/parser/Parser;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/runtime/parser/Parser;->parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iput-object v2, v0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->parserPool:Lorg/apache/velocity/runtime/ParserPool;

    invoke-interface {p2, v0}, Lorg/apache/velocity/runtime/ParserPool;->put(Lorg/apache/velocity/runtime/parser/Parser;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    iput-object v2, v0, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->parserPool:Lorg/apache/velocity/runtime/ParserPool;

    invoke-interface {p2, v0}, Lorg/apache/velocity/runtime/ParserPool;->put(Lorg/apache/velocity/runtime/parser/Parser;)V

    :cond_2
    throw p1
.end method

.method public declared-synchronized removeDirective(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->runtimeDirectives:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->updateSharedDirectivesMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public render(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/SimpleNode;)Z
    .locals 4

    const-string v0, "RuntimeInstance.render(): init exception for tag = "

    const-string v1, "IO Error in writer: "

    new-instance v2, Lorg/apache/velocity/context/InternalContextAdapterImpl;

    invoke-direct {v2, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;-><init>(Lorg/apache/velocity/context/Context;)V

    invoke-virtual {v2, p3}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->pushCurrentTemplateName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p4, v2, p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/velocity/exception/TemplateInitException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean p3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->provideEvaluateScope:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    new-instance v3, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-direct {v3, p0, p3}, Lorg/apache/velocity/runtime/directive/Scope;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0, v3}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string p3, "context.autoreference.key"

    invoke-virtual {p0, p3}, Lorg/apache/velocity/runtime/RuntimeInstance;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p1, p3, p1}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p4, v2, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    :try_end_1
    .catch Lorg/apache/velocity/runtime/directive/StopCommand; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    :try_start_2
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    invoke-virtual {p1, p0}, Lorg/apache/velocity/runtime/directive/StopCommand;->isFor(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/StopCommand;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {v2}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->popCurrentTemplateName()V

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->provideEvaluateScope:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/velocity/runtime/directive/Scope;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p1

    :goto_4
    invoke-virtual {v2, p2, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_2
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    :goto_5
    const/4 p1, 0x1

    return p1

    :cond_5
    :try_start_3
    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->log:Lorg/slf4j/Logger;

    invoke-interface {p3, p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {p3, p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_3
    move-exception p1

    throw p1

    :catch_4
    move-exception p1

    new-instance p2, Lorg/apache/velocity/exception/ParseErrorException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/apache/velocity/exception/ParseErrorException;-><init>(Lorg/apache/velocity/exception/VelocityException;Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    invoke-virtual {v2}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->popCurrentTemplateName()V

    iget-boolean p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->provideEvaluateScope:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lorg/apache/velocity/runtime/directive/Scope;

    if-eqz p3, :cond_8

    check-cast p2, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p3

    if-nez p3, :cond_7

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p2

    :goto_7
    invoke-virtual {v2, p3, p2}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_6
    iget-object p2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    iget-object p3, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p2

    goto :goto_7

    :cond_8
    :goto_8
    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {v0}, Lorg/apache/velocity/util/ExtProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->configuration:Lorg/apache/velocity/util/ExtProperties;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->defaultEncoding:Ljava/lang/String;

    const-string v1, "evaluate"

    iput-object v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->evaluateScopeName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->eventCartridge:Lorg/apache/velocity/app/event/EventCartridge;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initialized:Z

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->initializing:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->parserPool:Lorg/apache/velocity/runtime/ParserPool;

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->provideEvaluateScope:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->resourceManager:Lorg/apache/velocity/runtime/resource/ResourceManager;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->runtimeDirectives:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->runtimeDirectivesShared:Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->uberSpect:Lorg/apache/velocity/util/introspection/Uberspect;

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->stringInterning:Z

    new-instance v0, Lorg/apache/velocity/runtime/VelocimacroFactory;

    invoke-direct {v0, p0}, Lorg/apache/velocity/runtime/VelocimacroFactory;-><init>(Lorg/apache/velocity/runtime/RuntimeServices;)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->vmFactory:Lorg/apache/velocity/runtime/VelocimacroFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->applicationAttributes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setApplicationAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->applicationAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setConfiguration(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/velocity/util/ExtProperties;->combine(Lorg/apache/velocity/util/ExtProperties;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProperties(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {v0, p1}, Lorg/apache/velocity/util/ExtProperties;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/velocity/runtime/RuntimeInstance;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    const-string v2, "Error reading properties from \'"

    const-string v3, "\'"

    .line 1
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v1, p1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setProperties(Ljava/util/Properties;)V
    .locals 3

    .line 8
    invoke-virtual {p1}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/velocity/runtime/RuntimeInstance;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/velocity/util/ExtProperties;

    invoke-direct {v0}, Lorg/apache/velocity/util/ExtProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->overridingProperties:Lorg/apache/velocity/util/ExtProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/velocity/util/ExtProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public useStringInterning()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/RuntimeInstance;->stringInterning:Z

    return v0
.end method
