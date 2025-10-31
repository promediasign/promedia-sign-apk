.class final Lorg/apache/xmlbeans/impl/store/Validate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$impl$store$Validate:Ljava/lang/Class;


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _hasText:Z

.field private _oneChunk:Z

.field private _sink:Lorg/apache/xmlbeans/impl/common/ValidatorListener;

.field private _textCur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _textSb:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Validate;->class$org$apache$xmlbeans$impl$store$Validate:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Validate"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Validate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Validate;->class$org$apache$xmlbeans$impl$store$Validate:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Validate;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/common/ValidatorListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_sink:Lorg/apache/xmlbeans/impl/common/ValidatorListener;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Validate;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_sink:Lorg/apache/xmlbeans/impl/common/ValidatorListener;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-void

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_sink:Lorg/apache/xmlbeans/impl/common/ValidatorListener;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Inappropriate location to validate"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
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
.end method

.method private doAttrs()V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Validate;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormalAttr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_sink:Lorg/apache/xmlbeans/impl/common/ValidatorListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p0}, Lorg/apache/xmlbeans/impl/common/ValidatorListener;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_sink:Lorg/apache/xmlbeans/impl/common/ValidatorListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0}, Lorg/apache/xmlbeans/impl/common/ValidatorListener;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    return-void
.end method

.method private emitEvent(I)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Validate;->$assertionsDisabled:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_sink:Lorg/apache/xmlbeans/impl/common/ValidatorListener;

    invoke-interface {v0, v1, p0}, Lorg/apache/xmlbeans/impl/common/ValidatorListener;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_sink:Lorg/apache/xmlbeans/impl/common/ValidatorListener;

    invoke-interface {v0, p1, p0}, Lorg/apache/xmlbeans/impl/common/ValidatorListener;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    return-void
.end method

.method private emitText()V
    .locals 7

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Validate;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :goto_1
    if-nez v0, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v4, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v6, v5, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v5, v5, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-static {v1, v4, v6, v5}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    iput-boolean v3, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    :cond_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v3, v2, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-static {v0, v1, v3, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    :goto_4
    return-void
.end method

.method private process()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Validate;->emitEvent(I)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Validate;->emitText()V

    goto :goto_3

    :cond_0
    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Validate;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Validate;->doAttrs()V

    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOfLastPush()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_7

    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unexpected kind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Validate;->emitEvent(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Validate;->emitText()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Validate;->emitEvent(I)V

    goto :goto_1

    :cond_8
    :goto_3
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Validate;->emitEvent(I)V

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationAsCursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtLastPush()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Validate;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharsAsString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getValueAsString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Validate;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharsAsString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->applyWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXsiLoc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiLoc:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getAttrValue(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXsiNil()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getAttrValue(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXsiNoLoc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNoLoc:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getAttrValue(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXsiType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getAttrValue(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public textIsWhitespace()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getFirstChars()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v3, v2, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(Ljava/lang/Object;II)Z

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Validate;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_hasText:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_oneChunk:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textCur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v3, v2, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(Ljava/lang/Object;II)Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_textSb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Validate;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
