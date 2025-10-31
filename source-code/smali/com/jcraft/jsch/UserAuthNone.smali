.class Lcom/jcraft/jsch/UserAuthNone;
.super Lcom/jcraft/jsch/UserAuth;
.source "SourceFile"


# instance fields
.field private methods:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethods()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return-object v0
.end method

.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 16
    .line 17
    const-string v1, "ssh-userauth"

    .line 18
    .line 19
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "SSH_MSG_SERVICE_REQUEST sent"

    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v2, 0x6

    .line 64
    const/4 v3, 0x0

    .line 65
    if-ne v0, v2, :cond_1

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v4, "SSH_MSG_SERVICE_ACCEPT received"

    .line 85
    .line 86
    invoke-interface {v2, v1, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    if-nez v0, :cond_3

    .line 90
    .line 91
    return v3

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 104
    .line 105
    const/16 v4, 0x32

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 116
    .line 117
    const-string v2, "ssh-connection"

    .line 118
    .line 119
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 127
    .line 128
    const-string v2, "none"

    .line 129
    .line 130
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    and-int/lit16 v0, v0, 0xff

    .line 155
    .line 156
    const/16 v2, 0x34

    .line 157
    .line 158
    if-ne v0, v2, :cond_5

    .line 159
    .line 160
    return v1

    .line 161
    :cond_5
    const/16 v2, 0x35

    .line 162
    .line 163
    if-ne v0, v2, :cond_6

    .line 164
    .line 165
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 196
    .line 197
    if-eqz v2, :cond_4

    .line 198
    .line 199
    :try_start_0
    invoke-interface {v2, v0}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catch_0
    nop

    .line 204
    goto :goto_1

    .line 205
    :cond_6
    const/16 p1, 0x33

    .line 206
    .line 207
    if-ne v0, p1, :cond_7

    .line 208
    .line 209
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 233
    .line 234
    .line 235
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iput-object p1, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    .line 240
    .line 241
    return v3

    .line 242
    :cond_7
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 243
    .line 244
    const-string v1, "USERAUTH fail ("

    .line 245
    .line 246
    const-string v2, ")"

    .line 247
    .line 248
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

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
