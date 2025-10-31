.class public Lorg/h2/server/web/WebServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient server:Lorg/h2/server/web/WebServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private allow(Ljavax/servlet/http/HttpServletRequest;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getAllowOthers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private getAllowedFile(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/server/web/WebServlet;->allow(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "notAllowed.jsp"

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "index.do"

    return-object p1

    :cond_1
    return-object p2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->stop()V

    return-void
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5

    .line 1
    const-string v0, "utf-8"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->setCharacterEncoding(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "/"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/h2/server/web/WebServlet;->getAllowedFile(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/Properties;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getAttributeNames()Ljava/util/Enumeration;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v1, v3, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getParameterNames()Ljava/util/Enumeration;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v1, v3, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const-string v2, "jsessionid"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    iget-object v3, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Lorg/h2/server/web/WebServer;->getSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const/4 v2, 0x0

    .line 123
    :goto_2
    new-instance v3, Lorg/h2/server/web/WebApp;

    .line 124
    .line 125
    iget-object v4, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 126
    .line 127
    invoke-direct {v3, v4}, Lorg/h2/server/web/WebApp;-><init>(Lorg/h2/server/web/WebServer;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v2, v1}, Lorg/h2/server/web/WebApp;->setSession(Lorg/h2/server/web/WebSession;Ljava/util/Properties;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "if-modified-since"

    .line 134
    .line 135
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v3, v0, p1}, Lorg/h2/server/web/WebApp;->processRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getSession()Lorg/h2/server/web/WebSession;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getMimeType()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v3}, Lorg/h2/server/web/WebApp;->getCache()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_5

    .line 160
    .line 161
    iget-object v4, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 162
    .line 163
    invoke-virtual {v4}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_5

    .line 172
    .line 173
    const/16 p1, 0x130

    .line 174
    .line 175
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_5
    iget-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 180
    .line 181
    invoke-virtual {v1, p1}, Lorg/h2/server/web/WebServer;->getFile(Ljava/lang/String;)[B

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_6

    .line 186
    .line 187
    const/16 v0, 0x194

    .line 188
    .line 189
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 190
    .line 191
    .line 192
    const-string v0, "File not found: "

    .line 193
    .line 194
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    goto :goto_4

    .line 205
    :cond_6
    if-eqz v0, :cond_7

    .line 206
    .line 207
    const-string v4, ".jsp"

    .line 208
    .line 209
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_7

    .line 214
    .line 215
    new-instance p1, Ljava/lang/String;

    .line 216
    .line 217
    sget-object v4, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    .line 218
    .line 219
    invoke-direct {p1, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, v0, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    .line 223
    .line 224
    invoke-static {p1, v0}, Lorg/h2/server/web/PageParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    :cond_7
    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string p1, "Cache-Control"

    .line 236
    .line 237
    if-nez v3, :cond_8

    .line 238
    .line 239
    const-string v0, "no-cache"

    .line 240
    .line 241
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_8
    const-string v0, "max-age=10"

    .line 246
    .line 247
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    .line 251
    .line 252
    invoke-virtual {p1}, Lorg/h2/server/web/WebServer;->getStartDateTime()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    const-string v0, "Last-Modified"

    .line 257
    .line 258
    invoke-interface {p2, v0, p1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :goto_3
    move-object p1, v1

    .line 262
    :goto_4
    if-eqz p1, :cond_9

    .line 263
    .line 264
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-virtual {p2, p1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    .line 269
    .line 270
    .line 271
    :cond_9
    return-void
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

.method public doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/h2/server/web/WebServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public init()V
    .locals 7

    invoke-virtual {p0}, Lorg/h2/server/web/WebServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lorg/h2/server/web/WebServer;

    invoke-direct {v1}, Lorg/h2/server/web/WebServer;-><init>()V

    iput-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebServer;->setAllowChunked(Z)V

    iget-object v1, p0, Lorg/h2/server/web/WebServlet;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->init([Ljava/lang/String;)V

    return-void
.end method
