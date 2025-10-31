.class public abstract Lch/qos/logback/core/net/SyslogAppenderBase;
.super Lch/qos/logback/core/AppenderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/AppenderBase<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final MAX_MESSAGE_SIZE_LIMIT:I = 0xfde8

.field static final SYSLOG_LAYOUT_URL:Ljava/lang/String; = "http://logback.qos.ch/codes.html#syslog_layout"


# instance fields
.field charset:Ljava/nio/charset/Charset;

.field facilityStr:Ljava/lang/String;

.field initialized:Z

.field layout:Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation
.end field

.field private lazyInit:Z

.field maxMessageSize:I

.field port:I

.field protected sos:Lch/qos/logback/core/net/SyslogOutputStream;

.field protected suffixPattern:Ljava/lang/String;

.field syslogHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    const/16 v0, 0x202

    iput v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->port:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->initialized:Z

    iput-boolean v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->lazyInit:Z

    return-void
.end method

.method private connect()Z
    .locals 4

    const-string v0, "maxMessageSize of ["

    const-string v1, "Defaulting maxMessageSize to ["

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;->createOutputStream()Lch/qos/logback/core/net/SyslogOutputStream;

    move-result-object v2

    iput-object v2, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    invoke-virtual {v2}, Lch/qos/logback/core/net/SyslogOutputStream;->getSendBufferSize()I

    move-result v2

    iget v3, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    if-nez v3, :cond_0

    const v0, 0xfde8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addInfo(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    if-le v3, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is larger than the system defined datagram size of ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    const-string v0, "This may result in dropped logs."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    const-string v1, "Failed to bind to a random datagram socket. Will try to reconnect later."

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v1, "Could not create SyslogWriter"

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static facilityStringToint(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "KERN"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const-string v0, "USER"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/16 p0, 0x8

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const-string v0, "MAIL"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/16 p0, 0x10

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const-string v0, "DAEMON"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/16 p0, 0x18

    .line 42
    .line 43
    return p0

    .line 44
    :cond_3
    const-string v0, "AUTH"

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    const/16 p0, 0x20

    .line 53
    .line 54
    return p0

    .line 55
    :cond_4
    const-string v0, "SYSLOG"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    const/16 p0, 0x28

    .line 64
    .line 65
    return p0

    .line 66
    :cond_5
    const-string v0, "LPR"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    const/16 p0, 0x30

    .line 75
    .line 76
    return p0

    .line 77
    :cond_6
    const-string v0, "NEWS"

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    const/16 p0, 0x38

    .line 86
    .line 87
    return p0

    .line 88
    :cond_7
    const-string v0, "UUCP"

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    const/16 p0, 0x40

    .line 97
    .line 98
    return p0

    .line 99
    :cond_8
    const-string v0, "CRON"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_9

    .line 106
    .line 107
    const/16 p0, 0x48

    .line 108
    .line 109
    return p0

    .line 110
    :cond_9
    const-string v0, "AUTHPRIV"

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    const/16 p0, 0x50

    .line 119
    .line 120
    return p0

    .line 121
    :cond_a
    const-string v0, "FTP"

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_b

    .line 128
    .line 129
    const/16 p0, 0x58

    .line 130
    .line 131
    return p0

    .line 132
    :cond_b
    const-string v0, "NTP"

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_c

    .line 139
    .line 140
    const/16 p0, 0x60

    .line 141
    .line 142
    return p0

    .line 143
    :cond_c
    const-string v0, "AUDIT"

    .line 144
    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_d

    .line 150
    .line 151
    const/16 p0, 0x68

    .line 152
    .line 153
    return p0

    .line 154
    :cond_d
    const-string v0, "ALERT"

    .line 155
    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_e

    .line 161
    .line 162
    const/16 p0, 0x70

    .line 163
    .line 164
    return p0

    .line 165
    :cond_e
    const-string v0, "CLOCK"

    .line 166
    .line 167
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_f

    .line 172
    .line 173
    const/16 p0, 0x78

    .line 174
    .line 175
    return p0

    .line 176
    :cond_f
    const-string v0, "LOCAL0"

    .line 177
    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_10

    .line 183
    .line 184
    const/16 p0, 0x80

    .line 185
    .line 186
    return p0

    .line 187
    :cond_10
    const-string v0, "LOCAL1"

    .line 188
    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_11

    .line 194
    .line 195
    const/16 p0, 0x88

    .line 196
    .line 197
    return p0

    .line 198
    :cond_11
    const-string v0, "LOCAL2"

    .line 199
    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_12

    .line 205
    .line 206
    const/16 p0, 0x90

    .line 207
    .line 208
    return p0

    .line 209
    :cond_12
    const-string v0, "LOCAL3"

    .line 210
    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_13

    .line 216
    .line 217
    const/16 p0, 0x98

    .line 218
    .line 219
    return p0

    .line 220
    :cond_13
    const-string v0, "LOCAL4"

    .line 221
    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_14

    .line 227
    .line 228
    const/16 p0, 0xa0

    .line 229
    .line 230
    return p0

    .line 231
    :cond_14
    const-string v0, "LOCAL5"

    .line 232
    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_15

    .line 238
    .line 239
    const/16 p0, 0xa8

    .line 240
    .line 241
    return p0

    .line 242
    :cond_15
    const-string v0, "LOCAL6"

    .line 243
    .line 244
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_16

    .line 249
    .line 250
    const/16 p0, 0xb0

    .line 251
    .line 252
    return p0

    .line 253
    :cond_16
    const-string v0, "LOCAL7"

    .line 254
    .line 255
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_17

    .line 260
    .line 261
    const/16 p0, 0xb8

    .line 262
    .line 263
    return p0

    .line 264
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 265
    .line 266
    const-string v1, " is not a valid syslog facility string"

    .line 267
    .line 268
    invoke-static {p0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v0
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


# virtual methods
.method public append(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/AppenderBase;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->initialized:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->lazyInit:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->initialized:Z

    invoke-direct {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;->connect()Z

    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->layout:Lch/qos/logback/core/Layout;

    invoke-interface {v0, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    iget-object v2, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    invoke-virtual {v0}, Lch/qos/logback/core/net/SyslogOutputStream;->flush()V

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/net/SyslogAppenderBase;->postProcess(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send diagram to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->syslogHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public abstract buildLayout()Lch/qos/logback/core/Layout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract createOutputStream()Lch/qos/logback/core/net/SyslogOutputStream;
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFacility()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->facilityStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Lch/qos/logback/core/Layout;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Layout<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->layout:Lch/qos/logback/core/Layout;

    return-object v0
.end method

.method public getLazy()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->lazyInit:Z

    return v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    return v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->port:I

    return v0
.end method

.method public abstract getSeverityForEvent(Ljava/lang/Object;)I
.end method

.method public getSuffixPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->suffixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getSyslogHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->syslogHost:Ljava/lang/String;

    return-object v0
.end method

.method public postProcess(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setFacility(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->facilityStr:Ljava/lang/String;

    return-void
.end method

.method public setLayout(Lch/qos/logback/core/Layout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Layout<",
            "TE;>;)V"
        }
    .end annotation

    const-string p1, "The layout of a SyslogAppender cannot be set directly. See also http://logback.qos.ch/codes.html#syslog_layout"

    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/ContextAwareBase;->addWarn(Ljava/lang/String;)V

    return-void
.end method

.method public setLazy(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->lazyInit:Z

    return-void
.end method

.method public setMaxMessageSize(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->maxMessageSize:I

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->port:I

    return-void
.end method

.method public setSuffixPattern(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->suffixPattern:Ljava/lang/String;

    return-void
.end method

.method public setSyslogHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->syslogHost:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->facilityStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "The Facility option is mandatory"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->charset:Ljava/nio/charset/Charset;

    :cond_1
    iget-boolean v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->lazyInit:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;->connect()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->layout:Lch/qos/logback/core/Layout;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;->buildLayout()Lch/qos/logback/core/Layout;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->layout:Lch/qos/logback/core/Layout;

    :cond_3
    if-nez v0, :cond_4

    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->start()V

    :cond_4
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/SyslogAppenderBase;->sos:Lch/qos/logback/core/net/SyslogOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/net/SyslogOutputStream;->close()V

    :cond_0
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->stop()V

    return-void
.end method
