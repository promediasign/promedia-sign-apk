.class public Lorg/h2/value/ValueEnum;
.super Lorg/h2/value/ValueEnumBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/value/ValueEnum$Validation;
    }
.end annotation


# instance fields
.field private final enumerators:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;I)V
    .locals 1

    aget-object v0, p1, p2

    invoke-direct {p0, v0, p2}, Lorg/h2/value/ValueEnumBase;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/h2/value/ValueEnum;->enumerators:[Ljava/lang/String;

    return-void
.end method

.method public static final check([Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/h2/value/ValueEnum$1;->$SwitchMap$org$h2$value$ValueEnum$Validation:[I

    invoke-static {p0}, Lorg/h2/value/ValueEnum;->validate([Ljava/lang/String;)Lorg/h2/value/ValueEnum$Validation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const v0, 0x15f98

    invoke-static {p0}, Lorg/h2/value/ValueEnum;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_0
    const/16 v0, 0x5611

    invoke-static {p0}, Lorg/h2/value/ValueEnum;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p0, 0x5610

    invoke-static {p0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_2
    return-void
.end method

.method private static final check([Ljava/lang/String;Lorg/h2/value/Value;)V
    .locals 2

    .line 2
    invoke-static {p0}, Lorg/h2/value/ValueEnum;->check([Ljava/lang/String;)V

    sget-object v0, Lorg/h2/value/ValueEnum$1;->$SwitchMap$org$h2$value$ValueEnum$Validation:[I

    invoke-static {p0, p1}, Lorg/h2/value/ValueEnum;->validate([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum$Validation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/h2/value/ValueEnum;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x560f

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static get([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum;
    .locals 2

    invoke-static {p0, p1}, Lorg/h2/value/ValueEnum;->check([Ljava/lang/String;Lorg/h2/value/Value;)V

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->isStringType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/h2/value/ValueEnum;

    invoke-direct {p1, p0, v0}, Lorg/h2/value/ValueEnum;-><init>([Ljava/lang/String;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p0, 0xc350

    const-string p1, "Unexpected error"

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance v0, Lorg/h2/value/ValueEnum;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueEnum;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public static isValid([Ljava/lang/String;Lorg/h2/value/Value;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/h2/value/ValueEnum;->validate([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum$Validation;

    move-result-object p0

    sget-object p1, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static sanitize([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 2
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    const-string v2, "\'"

    .line 8
    .line 9
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    aget-object v3, p0, v1

    .line 14
    .line 15
    invoke-static {v3, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v2, p0

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    const-string v2, ", "

    .line 25
    .line 26
    invoke-static {v0, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p0, ")"

    .line 34
    .line 35
    invoke-static {v0, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
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

.method private static validate([Ljava/lang/String;)Lorg/h2/value/ValueEnum$Validation;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/h2/value/ValueEnum;->sanitize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-object v1, p0, v0

    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v0

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->DUPLICATE:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->EMPTY:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_5
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_6
    :goto_3
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->EMPTY:Lorg/h2/value/ValueEnum$Validation;

    return-object p0
.end method

.method private static validate([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum$Validation;
    .locals 3

    .line 2
    invoke-static {p0}, Lorg/h2/value/ValueEnum;->validate([Ljava/lang/String;)Lorg/h2/value/ValueEnum$Validation;

    move-result-object v0

    sget-object v1, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->isStringType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->INVALID:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    if-ltz p1, :cond_5

    array-length p0, p0

    if-lt p1, p0, :cond_4

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->INVALID:Lorg/h2/value/ValueEnum$Validation;

    return-object p0
.end method


# virtual methods
.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    iget-object p2, p0, Lorg/h2/value/ValueEnum;->enumerators:[Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/h2/value/ValueEnum;->get([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/value/ValueEnumBase;->getInt()I

    move-result p2

    invoke-virtual {p1}, Lorg/h2/value/ValueEnumBase;->getInt()I

    move-result p1

    invoke-static {p2, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1
.end method

.method public getEnumerators()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueEnum;->enumerators:[Ljava/lang/String;

    return-object v0
.end method
