.class public abstract Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;
.super Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;
    }
.end annotation


# static fields
.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private _defaultCopyDirectory:Ljava/lang/String;

.field private _importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

.field private _redownloadSet:Ljava/util/Set;

.field private _resourceForCacheEntry:Ljava/util/Map;

.field private _resourceForDigest:Ljava/util/Map;

.field private _resourceForFilename:Ljava/util/Map;

.field private _resourceForNamespace:Ljava/util/Map;

.field private _resourceForURL:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "XMLBeans/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForURL:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForDigest:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForCacheEntry:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->redownloadResource(Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;)V

    return-void
.end method

.method private addNewEntry()Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;->getDownloadedSchemas()Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;->addNewEntry()Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;

    move-result-object v0

    return-object v0
.end method

.method private copyOrIdentifyDuplicateURL(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;
    .locals 4

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->uniqueFilenameForURI(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    new-instance v3, Ljava/net/URL;

    .line 9
    .line 10
    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->digestInputStream(Ljava/io/InputStream;)Ljava/security/DigestInputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p0, v3, v2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->writeInputStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/util/HexBin;->bytesToString([B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForDigest:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->deleteFile(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->addSchemaLocation(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForURL:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_0

    .line 59
    .line 60
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForURL:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_0
    return-object v1

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    .line 67
    .line 68
    const-string v3, "Downloaded "

    .line 69
    .line 70
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    const-string v3, " to "

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->warning(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->addNewEntry()Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->setFilename(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->setSha1(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    if-eqz p2, :cond_2

    .line 102
    .line 103
    invoke-interface {v1, p2}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->setNamespace(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->addSchemaLocation(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->updateResource(Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;)Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    :catch_0
    move-exception p2

    .line 115
    const-string v2, "Could not copy remote resource "

    .line 116
    .line 117
    :goto_0
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->warning(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v1

    .line 136
    :catch_1
    move-exception p2

    .line 137
    const-string v2, "Could not create local file for "

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catch_2
    move-exception p2

    .line 141
    const-string v0, "Invalid URI \'"

    .line 142
    .line 143
    const-string v2, "\':"

    .line 144
    .line 145
    invoke-static {v0, p1, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    goto :goto_1
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

.method private deleteResourcesInSet(Ljava/util/Set;Z)V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->_cacheEntry:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;->getDownloadedSchemas()Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;->sizeOfEntryArray()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;->getEntryArray(I)Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, p2, :cond_6

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForCacheEntry:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Removing obsolete cache entry for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->warning(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForCacheEntry:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForDigest:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForDigest:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getSha1()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_3

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getSchemaLocationArray()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForURL:Ljava/util/Map;

    aget-object v7, v3, v5

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_4

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForURL:Ljava/util/Map;

    aget-object v7, v3, v5

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;->removeEntry(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private static digestInputStream(Ljava/io/InputStream;)Ljava/security/DigestInputStream;
    .locals 2

    :try_start_0
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p0, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    throw p0
.end method

.method private fetchFromCache(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForURL:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private redownloadEntries([Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->redownloadResource(Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private redownloadResource(Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;)V
    .locals 7

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getFilename()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getSchemaLocation()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .line 37
    .line 38
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 39
    .line 40
    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "User-Agent"

    .line 48
    .line 49
    sget-object v6, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->USER_AGENT:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v5, "Accept"

    .line 55
    .line 56
    const-string v6, "application/xml, text/xml, */*"

    .line 57
    .line 58
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->digestInputStream(Ljava/io/InputStream;)Ljava/security/DigestInputStream;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4, v3}, Lorg/apache/xmlbeans/impl/common/IOUtil;->copyCompletely(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v4}, Lorg/apache/xmlbeans/impl/util/HexBin;->bytesToString([B)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getSha1()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->fileExists(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    const-string p1, "Resource "

    .line 101
    .line 102
    const-string v0, " is unchanged from "

    .line 103
    .line 104
    const-string v3, "."

    .line 105
    .line 106
    invoke-static {p1, v1, v0, v2, v3}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->warning(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-direct {p1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->writeInputStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    .line 125
    .line 126
    new-instance p1, Ljava/lang/StringBuffer;

    .line 127
    .line 128
    const-string v0, "Refreshed "

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    const-string v0, " from "

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception p1

    .line 150
    new-instance v3, Ljava/lang/StringBuffer;

    .line 151
    .line 152
    const-string v4, "Could not write to file "

    .line 153
    .line 154
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    .line 159
    .line 160
    const-string v1, " for "

    .line 161
    .line 162
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    goto :goto_0

    .line 183
    :catch_1
    move-exception p1

    .line 184
    const-string v1, "Could not copy remote resource "

    .line 185
    .line 186
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    goto :goto_0

    .line 202
    :cond_4
    :goto_1
    return-void
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

.method private shaDigestForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->inputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->digestInputStream(Ljava/io/InputStream;)Ljava/security/DigestInputStream;

    move-result-object p1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x1

    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/HexBin;->bytesToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private uniqueFilenameForURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/16 v0, 0x2f

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    const-string v0, ".xsd"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {p1, v2, v3}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    const-string p1, "schema"

    .line 45
    .line 46
    :cond_2
    move-object v2, p1

    .line 47
    :goto_0
    const/16 v3, 0x3e8

    .line 48
    .line 49
    if-ge v1, v3, :cond_4

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuffer;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_defaultCopyDirectory:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    const-string v4, "/"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->fileExists(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_3

    .line 81
    .line 82
    return-object v2

    .line 83
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuffer;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    new-instance v1, Ljava/io/IOException;

    .line 102
    .line 103
    const-string v2, "Problem with filename "

    .line 104
    .line 105
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v1
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

.method private updateResource(Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;)Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;-><init>(Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForCacheEntry:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getSha1()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForDigest:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForDigest:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getNamespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getSchemaLocationArray()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForURL:Ljava/util/Map;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForURL:Ljava/util/Map;

    aget-object v3, p1, v0

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method


# virtual methods
.method public abstract deleteFile(Ljava/lang/String;)V
.end method

.method public abstract fileExists(Ljava/lang/String;)Z
.end method

.method public abstract getAllXSDFilenames()[Ljava/lang/String;
.end method

.method public getDefaultSchemaDir()Ljava/lang/String;
    .locals 1

    const-string v0, "./schema"

    return-object v0
.end method

.method public getIndexFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "./xsdownload.xml"

    return-object v0
.end method

.method public final init()V
    .locals 3

    const-string v0, "<dls:downloaded-schemas xmlns:dls=\'http://www.bea.com/2003/01/xmlbean/xsdownload\' defaultDirectory=\'"

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->getIndexFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->getIndexFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->inputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$Factory;->parse(Ljava/io/InputStream;)Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Problem reading xsdownload.xml: please fix or delete this file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0

    :catch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    if-nez v1, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->getDefaultSchemaDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$Factory;->parse(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;->getDownloadedSchemas()Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;->getDefaultDirectory()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->getDefaultSchemaDir()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_defaultCopyDirectory:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;->getDownloadedSchemas()Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument$DownloadedSchemas;->getEntryArray()[Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->updateResource(Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;)Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public abstract inputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public lookupResource(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver$SchemaResource;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->fetchFromCache(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->redownloadResource(Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;)V

    :cond_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "No cached schema for namespace \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\', and no url specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-direct {p0, p2, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->copyOrIdentifyDuplicateURL(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p1
.end method

.method public final process([Ljava/lang/String;[Ljava/lang/String;ZZZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    :goto_0
    array-length v1, p2

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->syncCacheWithLocalXsdFiles([Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->getAllXSDFilenames()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->syncCacheWithLocalXsdFiles([Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_4

    aget-object v3, p1, v1

    invoke-virtual {p0, v0, v3}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->lookupResource(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver$SchemaResource;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    if-eqz v3, :cond_3

    invoke-virtual {p3, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_3
    array-length v1, p2

    if-ge p1, v1, :cond_6

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    if-eqz v1, :cond_5

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    new-array p1, v2, [Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    invoke-interface {p3, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    if-eqz p4, :cond_7

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->redownloadEntries([Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;)V

    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver;->resolveImports([Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver$SchemaResource;)V

    :cond_8
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    return-void
.end method

.method public final processAll(ZZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->getAllXSDFilenames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->syncCacheWithLocalXsdFiles([Ljava/lang/String;Z)V

    :cond_1
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v2, [Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->redownloadEntries([Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver;->resolveImports([Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver$SchemaResource;)V

    :cond_3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_redownloadSet:Ljava/util/Set;

    return-void
.end method

.method public reportActualNamespace(Lorg/apache/xmlbeans/impl/tool/SchemaImportResolver$SchemaResource;Ljava/lang/String;)V
    .locals 2

    check-cast p1, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForNamespace:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->setNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public final syncCacheWithLocalXsdFiles([Ljava/lang/String;Z)V
    .locals 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_6

    aget-object v4, p1, v3

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->shaDigestForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForDigest:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " is a rename of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->warning(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;->setFilename(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_2

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v7, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_resourceForFilename:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_1
    const/4 v5, 0x0

    :cond_3
    :goto_2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->addNewEntry()Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->setFilename(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Caching information on new local file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->warning(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    invoke-interface {v6, v5}, Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;->setSha1(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v6}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->updateResource(Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;)Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager$SchemaResource;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->deleteResourcesInSet(Ljava/util/Set;Z)V

    goto :goto_4

    :cond_7
    invoke-direct {p0, v0, v2}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->deleteResourcesInSet(Ljava/util/Set;Z)V

    :goto_4
    return-void
.end method

.method public abstract warning(Ljava/lang/String;)V
.end method

.method public final writeCache()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->_importsDoc:Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemasDocument;

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlOptions;->setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->getIndexFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/tool/BaseSchemaResourceManager;->writeInputStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeInputStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)V
.end method
