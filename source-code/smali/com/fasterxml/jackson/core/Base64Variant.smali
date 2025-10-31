.class public final Lcom/fasterxml/jackson/core/Base64Variant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient _asciiToBase64:[I

.field private final transient _base64ToAsciiB:[B

.field private final transient _base64ToAsciiC:[C

.field private final transient _maxLineLength:I

.field final _name:Ljava/lang/String;

.field private final transient _paddingChar:C

.field private final transient _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget-boolean v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/16 v1, 0x40

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    iput-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    iget-object p2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    array-length v3, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    array-length v1, p2

    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    array-length p2, p1

    invoke-static {p1, v4, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/16 v1, 0x40

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    iput-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p1, v2, p5}, Ljava/lang/String;->getChars(II[CI)V

    const/4 p2, -0x1

    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    if-ge p5, p1, :cond_0

    iget-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char p2, p2, p5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aput p5, v0, p2

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 p2, -0x2

    aput p2, p1, p4

    :cond_1
    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Base64Alphabet length must be exactly 64 (was "

    const-string p4, ")"

    .line 3
    invoke-static {p1, p3, p4}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public _reportBase64EOF()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected end-of-String in base64 content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public _reportInvalidBase64(CILjava/lang/String;)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Illegal white space character (code 0x"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ") as character #"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    add-int/lit8 p2, p2, 0x1

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " of 4-char base64 unit: can only used between units"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "Unexpected padding character (\'"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, "\') as character #"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p2, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    const-string v0, ") in base64 content"

    .line 84
    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Illegal character \'"

    .line 97
    .line 98
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, "\' (code 0x"

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_2

    .line 124
    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Illegal character (code 0x"

    .line 127
    .line 128
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :goto_2
    if-eqz p3, :cond_4

    .line 133
    .line 134
    const-string p2, ": "

    .line 135
    .line 136
    invoke-static {p1, p2, p3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p2
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
.end method

.method public decode(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_e

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v5

    const/4 v6, 0x0

    if-gez v5, :cond_1

    invoke-virtual {p0, v4, v1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    :cond_1
    if-lt v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    :cond_2
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v7

    if-gez v7, :cond_3

    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    :cond_3
    shl-int/lit8 v3, v5, 0x6

    or-int/2addr v3, v7

    if-lt v4, v0, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v5

    if-nez v5, :cond_4

    shr-int/lit8 p1, v3, 0x4

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    :cond_5
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v7

    const/4 v8, -0x2

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-gez v7, :cond_9

    if-eq v7, v8, :cond_6

    invoke-virtual {p0, v4, v10, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    :cond_6
    if-lt v5, v0, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    :cond_7
    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected padding character \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v9, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    :cond_8
    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    :cond_9
    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v7

    if-lt v5, v0, :cond_b

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-nez v4, :cond_a

    shr-int/lit8 p1, v3, 0x2

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    :goto_1
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    :cond_b
    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v5

    if-gez v5, :cond_d

    if-eq v5, v8, :cond_c

    invoke-virtual {p0, v4, v9, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    :cond_c
    shr-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    goto/16 :goto_0

    :cond_e
    move v2, v3

    goto/16 :goto_0
.end method

.method public decodeBase64Char(C)I
    .locals 1

    .line 1
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public decodeBase64Char(I)I
    .locals 1

    .line 2
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getPaddingChar()C
    .locals 1

    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/jackson/core/Base64Variants;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public usesPaddingChar(I)Z
    .locals 1

    .line 2
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
