.class public Lorg/h2/store/FileStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEADER:Ljava/lang/String; = "-- H2 0.5/B -- \n"

.field public static final HEADER_LENGTH:I = 0x30


# instance fields
.field private autoDeleteReference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "*>;"
        }
    .end annotation
.end field

.field private checkedWriting:Z

.field private file:Ljava/nio/channels/FileChannel;

.field private fileLength:J

.field private filePos:J

.field private final handler:Lorg/h2/store/DataHandler;

.field private lock:Ljava/nio/channels/FileLock;

.field private final mode:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    iput-object p1, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    iput-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p3, "r"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    :goto_0
    invoke-static {p2, p3}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iput-object p3, p0, Lorg/h2/store/FileStore;->mode:Ljava/lang/String;

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mode: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private checkPowerOff()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->checkPowerOff()V

    :cond_0
    return-void
.end method

.method private checkWritingAllowed()V
    .locals 2

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->checkWritingAllowed()V

    :cond_0
    return-void
.end method

.method private closeFileSilently()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/store/FileStore;
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;

    move-result-object p0

    return-object p0
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;
    .locals 6

    .line 2
    const/16 v5, 0x400

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;

    move-result-object p0

    return-object p0
.end method

.method public static open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Lorg/h2/store/FileStore;
    .locals 8

    .line 3
    if-nez p3, :cond_0

    new-instance p3, Lorg/h2/store/FileStore;

    invoke-direct {p3, p0, p1, p2}, Lorg/h2/store/FileStore;-><init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v7, Lorg/h2/security/SecureFileStore;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/security/SecureFileStore;-><init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    move-object p3, v7

    :goto_0
    return-object p3
.end method

.method private static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->TRACE_IO:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 6
    .line 7
    const-string v1, "FileStore."

    .line 8
    .line 9
    const-string v2, " "

    .line 10
    .line 11
    invoke-static {v1, p0, v2, p1, v2}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
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
.end method


# virtual methods
.method public autoDelete()V
    .locals 2

    iget-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/h2/util/TempFileDeleter;->addFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "close"

    iget-object v3, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lorg/h2/store/FileStore;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    throw v0

    :cond_0
    :goto_1
    return-void
.end method

.method public closeAndDeleteSilently()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/store/FileStore;->closeSilently()V

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/TempFileDeleter;->deleteFile(Ljava/lang/ref/Reference;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public closeFile()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public closeSilently()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/FileStore;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public generateSalt()[B
    .locals 2

    sget-object v0, Lorg/h2/store/FileStore;->HEADER:Ljava/lang/String;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFilePointer()J
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/store/FileStore;->filePos:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/store/FileStore;->filePos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    return-wide v0
.end method

.method public init()V
    .locals 8

    sget-object v0, Lorg/h2/store/FileStore;->HEADER:Ljava/lang/String;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x30

    const/4 v5, 0x0

    const/16 v6, 0x10

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    iput-boolean v5, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    invoke-virtual {p0, v0, v5, v6}, Lorg/h2/store/FileStore;->writeDirect([BII)V

    invoke-virtual {p0}, Lorg/h2/store/FileStore;->generateSalt()[B

    move-result-object v1

    invoke-virtual {p0, v1, v5, v6}, Lorg/h2/store/FileStore;->writeDirect([BII)V

    invoke-virtual {p0, v1}, Lorg/h2/store/FileStore;->initKey([B)V

    invoke-virtual {p0, v0, v5, v6}, Lorg/h2/store/FileStore;->write([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    new-array v1, v6, [B

    invoke-virtual {p0, v1, v5, v6}, Lorg/h2/store/FileStore;->readFullyDirect([BII)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v6, [B

    invoke-virtual {p0, v2, v5, v6}, Lorg/h2/store/FileStore;->readFullyDirect([BII)V

    invoke-virtual {p0, v2}, Lorg/h2/store/FileStore;->initKey([B)V

    invoke-virtual {p0, v1, v5, v6}, Lorg/h2/store/FileStore;->readFully([BII)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const v0, 0x15fc1

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    const v0, 0x15fc0

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public initKey([B)V
    .locals 0

    return-void
.end method

.method public length()J
    .locals 10

    const-string v0, "unaligned file length "

    const-string v1, "file "

    :try_start_0
    iget-wide v2, p0, Lorg/h2/store/FileStore;->fileLength:J

    sget-boolean v4, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v4, :cond_0

    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    iget-wide v5, p0, Lorg/h2/store/FileStore;->fileLength:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " length "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " expected "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/h2/store/FileStore;->fileLength:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const-wide/16 v4, 0x10

    rem-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1

    add-long v6, v2, v4

    rem-long v4, v2, v4

    sub-long/2addr v6, v4

    iget-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v6, v7}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iput-wide v6, p0, Lorg/h2/store/FileStore;->fileLength:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " len "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v2

    :goto_1
    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public openFile()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/store/FileStore;->mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->open(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lorg/h2/store/FileStore;->filePos:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :cond_0
    return-void
.end method

.method public readFully([BII)V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unaligned read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->readFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public readFullyDirect([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->readFully([BII)V

    return-void
.end method

.method public declared-synchronized releaseLock()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public seek(J)V
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x10

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unaligned seek "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setCheckedWriting(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/store/FileStore;->checkedWriting:Z

    return-void
.end method

.method public setLength(J)V
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x10

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unaligned setLength "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkWritingAllowed()V

    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/h2/store/FileStore;->filePos:J

    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x1

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const/4 v3, 0x1

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    :goto_0
    iput-wide p1, p0, Lorg/h2/store/FileStore;->fileLength:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public stopAutoDelete()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/FileStore;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    iget-object v2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/TempFileDeleter;->stopAutoDelete(Ljava/lang/ref/Reference;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/FileStore;->autoDeleteReference:Ljava/lang/ref/Reference;

    return-void
.end method

.method public sync()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized tryLock()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/FileStore;->lock:Ljava/nio/channels/FileLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    monitor-exit p0

    return v0
.end method

.method public write([BII)V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unaligned write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkWritingAllowed()V

    invoke-direct {p0}, Lorg/h2/store/FileStore;->checkPowerOff()V

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/store/fs/FileUtils;->writeFully(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/FileStore;->filePos:J

    iget-wide v0, p0, Lorg/h2/store/FileStore;->fileLength:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/FileStore;->fileLength:J

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lorg/h2/store/FileStore;->closeFileSilently()V

    iget-object p2, p0, Lorg/h2/store/FileStore;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public writeDirect([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->write([BII)V

    return-void
.end method
