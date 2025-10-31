.class Lio/milton/http/fck/FckFileManagerResource$FckPostParams;
.super Lio/milton/http/fck/FckFileManagerResource$FckParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/fck/FckFileManagerResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FckPostParams"
.end annotation


# instance fields
.field code:I

.field message:Ljava/lang/String;

.field newName:Ljava/lang/String;

.field final synthetic this$0:Lio/milton/http/fck/FckFileManagerResource;


# direct methods
.method public constructor <init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    invoke-direct {p0, p1, p2}, Lio/milton/http/fck/FckFileManagerResource$FckParams;-><init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/util/Map;)V

    return-void
.end method

.method private processFileUpload(Lio/milton/http/FileItem;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->params:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "CurrentFolder"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "processFileUpload: sFolder: "

    .line 16
    .line 17
    const-string v3, " - "

    .line 18
    .line 19
    invoke-static {v2, v0, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    .line 47
    .line 48
    iget-object v5, v4, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    .line 49
    .line 50
    invoke-static {v4, v5, v2}, Lio/milton/http/fck/FckFileManagerResource;->access$000(Lio/milton/http/fck/FckFileManagerResource;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)Lio/milton/resource/Resource;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v4, v2, Lio/milton/resource/PutableResource;

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    move-object v4, v2

    .line 59
    check-cast v4, Lio/milton/resource/PutableResource;

    .line 60
    .line 61
    iput-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 62
    .line 63
    :cond_0
    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 64
    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-interface {p1}, Lio/milton/http/FileItem;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v6, "processFileUpload: "

    .line 78
    .line 79
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 93
    .line 94
    invoke-interface {v4, v0}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-eqz v4, :cond_1

    .line 99
    .line 100
    invoke-static {v0, v1}, Lio/milton/common/FileUtils;->incrementFileName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->newName:Ljava/lang/String;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 109
    .line 110
    instance-of v4, v1, Lio/milton/resource/PutableResource;

    .line 111
    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    check-cast v1, Lio/milton/resource/PutableResource;

    .line 115
    .line 116
    invoke-interface {p1}, Lio/milton/http/FileItem;->getSize()J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    :try_start_0
    invoke-interface {p1}, Lio/milton/http/FileItem;->getInputStream()Ljava/io/InputStream;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const/4 v3, 0x0

    .line 129
    invoke-interface {v1, v0, p1, v2, v3}, Lio/milton/resource/PutableResource;->createNew(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;)Lio/milton/resource/Resource;
    :try_end_0
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    :try_start_1
    iget-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->newName:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    invoke-direct {p0, v0}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponseOk(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-direct {p0}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponseOk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :goto_1
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "Exception saving new file"

    .line 151
    .line 152
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponseFailed(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    return-void

    .line 163
    :catch_0
    move-exception p1

    .line 164
    goto :goto_3

    .line 165
    :catch_1
    move-exception p1

    .line 166
    goto :goto_4

    .line 167
    :catch_2
    move-exception p1

    .line 168
    goto :goto_5

    .line 169
    :catch_3
    move-exception p1

    .line 170
    goto :goto_6

    .line 171
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 172
    .line 173
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 178
    .line 179
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 184
    .line 185
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :goto_6
    throw p1

    .line 190
    :cond_3
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v1, "The collection is not putable: "

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance p1, Lio/milton/http/exceptions/ConflictException;

    .line 230
    .line 231
    invoke-direct {p1, v2}, Lio/milton/http/exceptions/ConflictException;-><init>(Lio/milton/resource/Resource;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_4
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string v1, "No putable folder with that path: "

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Lio/milton/http/exceptions/ConflictException;

    .line 249
    .line 250
    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 251
    .line 252
    invoke-direct {p1, v0}, Lio/milton/http/exceptions/ConflictException;-><init>(Lio/milton/resource/Resource;)V

    .line 253
    .line 254
    .line 255
    throw p1
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
.end method

.method private uploadResponse(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->code:I

    iput-object p2, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->message:Ljava/lang/String;

    return-void
.end method

.method private uploadResponseFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method

.method private uploadResponseOk()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method

.method private uploadResponseOk(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/16 v0, 0xc9

    invoke-direct {p0, v0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public processFileUploadCommand(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "files: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->processFileUpload(Lio/milton/http/FileItem;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "no files uploaded"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
