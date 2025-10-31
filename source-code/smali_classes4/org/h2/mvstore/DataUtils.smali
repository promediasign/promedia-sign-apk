.class public Lorg/h2/mvstore/DataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/DataUtils$MapEntry;
    }
.end annotation


# static fields
.field public static final COMPRESSED_VAR_INT_MAX:I = 0x1fffff

.field public static final COMPRESSED_VAR_LONG_MAX:J = 0x1ffffffffffffL

.field private static final EMPTY_BYTES:[B

.field public static final ERROR_BLOCK_NOT_FOUND:I = 0x32

.field public static final ERROR_CHUNK_NOT_FOUND:I = 0x9

.field public static final ERROR_CLOSED:I = 0x4

.field public static final ERROR_FILE_CORRUPT:I = 0x6

.field public static final ERROR_FILE_LOCKED:I = 0x7

.field public static final ERROR_INTERNAL:I = 0x3

.field public static final ERROR_READING_FAILED:I = 0x1

.field public static final ERROR_SERIALIZATION:I = 0x8

.field public static final ERROR_TOO_MANY_OPEN_TRANSACTIONS:I = 0x66

.field public static final ERROR_TRANSACTION_CORRUPT:I = 0x64

.field public static final ERROR_TRANSACTION_ILLEGAL_STATE:I = 0x67

.field public static final ERROR_TRANSACTION_LOCKED:I = 0x65

.field public static final ERROR_UNSUPPORTED_FORMAT:I = 0x5

.field public static final ERROR_WRITING_FAILED:I = 0x2

.field public static final LATIN:Ljava/nio/charset/Charset;

.field public static final MAX_VAR_INT_LEN:I = 0x5

.field public static final MAX_VAR_LONG_LEN:I = 0xa

.field public static final PAGE_COMPRESSED:I = 0x2

.field public static final PAGE_COMPRESSED_HIGH:I = 0x6

.field public static final PAGE_LARGE:I = 0x200000

.field public static final PAGE_MEMORY:I = 0x80

.field public static final PAGE_MEMORY_CHILD:I = 0x10

.field public static final PAGE_TYPE_LEAF:I = 0x0

.field public static final PAGE_TYPE_NODE:I = 0x1

.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/DataUtils;->UTF8:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/h2/mvstore/DataUtils;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendMap(Ljava/lang/StringBuilder;Ljava/util/HashMap;)Ljava/lang/StringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2c

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/16 v0, 0x22

    if-gez p2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_4

    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static copyExcept(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 1

    if-lez p3, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-ge p3, p2, :cond_1

    add-int/lit8 v0, p3, 0x1

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, v0, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public static copyWithGap(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 1

    if-lez p3, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-ge p3, p2, :cond_1

    add-int/lit8 v0, p3, 0x1

    sub-int/2addr p2, p3

    invoke-static {p0, p3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public static encodeLength(I)I
    .locals 2

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    shl-int/2addr p0, v1

    add-int/2addr v0, v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    shl-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    rsub-int/lit8 p0, v0, 0x34

    const/16 v0, 0x1f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static varargs formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    aget-object v2, p2, v1

    instance-of v3, v2, Ljava/lang/Exception;

    if-nez v3, :cond_2

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    aput-object v2, p2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [1.4.196/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCheckValue(I)S
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static getErrorCode(Ljava/lang/String;)I
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "]"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x2f

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    invoke-static {p0, v1, v0}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
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

.method public static getFletcher32([BI)I
    .locals 8

    div-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const v1, 0xffff

    const/4 v2, 0x0

    const v3, 0xffff

    const v4, 0xffff

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit16 v5, v2, 0x2d0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_0

    add-int/lit8 v6, v2, 0x1

    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v2, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    and-int v5, v4, v1

    ushr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v5

    and-int v5, v3, v1

    ushr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    if-ge v2, p1, :cond_2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v4, p0

    add-int/2addr v3, v4

    :cond_2
    and-int p0, v4, v1

    ushr-int/lit8 p1, v4, 0x10

    add-int/2addr p0, p1

    and-int p1, v3, v1

    ushr-int/lit8 v0, v3, 0x10

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static getPageChunkId(J)I
    .locals 1

    const/16 v0, 0x26

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static getPageMaxLength(J)I
    .locals 3

    const/4 v0, 0x1

    shr-long/2addr p0, v0

    const-wide/16 v1, 0x1f

    and-long/2addr p0, v1

    long-to-int p1, p0

    const/16 p0, 0x1f

    if-ne p1, p0, :cond_0

    const/high16 p0, 0x200000

    return p0

    :cond_0
    and-int/lit8 p0, p1, 0x1

    add-int/lit8 p0, p0, 0x2

    shr-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    shl-int/2addr p0, p1

    return p0
.end method

.method public static getPageOffset(J)I
    .locals 1

    const/4 v0, 0x6

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static getPagePos(IIII)J
    .locals 3

    int-to-long v0, p0

    const/16 p0, 0x26

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const/4 v2, 0x6

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p2}, Lorg/h2/mvstore/DataUtils;->encodeLength(I)I

    move-result p2

    shl-int/lit8 p2, p2, 0x1

    int-to-long v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static getPageType(J)I
    .locals 0

    long-to-int p1, p0

    and-int/lit8 p0, p1, 0x1

    return p0
.end method

.method public static getVarIntLen(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static getVarLongLen(J)I
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static varargs initCause(Ljava/lang/Exception;[Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    array-length v0, p1

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method

.method public static newBytes(I)[B
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lorg/h2/mvstore/DataUtils;->EMPTY_BYTES:[B

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    :try_start_0
    new-array p0, p0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/OutOfMemoryError;

    .line 11
    .line 12
    const-string v2, "Requested memory: "

    .line 13
    .line 14
    invoke-static {p0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v1, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22
    .line 23
    .line 24
    throw v1
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

.method public static newConcurrentModificationException(Ljava/lang/String;)Ljava/util/ConcurrentModificationException;
    .locals 3

    new-instance v0, Ljava/util/ConcurrentModificationException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    invoke-static {v1, p0, p1}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/h2/mvstore/DataUtils;->initCause(Ljava/lang/Exception;[Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalArgumentException;

    return-object p0
.end method

.method public static varargs newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0, p1, p2}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/h2/mvstore/DataUtils;->initCause(Ljava/lang/Exception;[Ljava/lang/Object;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalStateException;

    return-object p0
.end method

.method public static newUnsupportedOperationException(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseHexInt(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x10

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing the value {0}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const/4 p0, 0x6

    invoke-static {p0, v1, v2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static parseHexLong(Ljava/lang/String;)J
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    or-long/2addr v0, v3

    return-wide v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :goto_0
    const-string v2, "Error parsing the value {0}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    aput-object v1, v3, p0

    const/4 p0, 0x6

    invoke-static {p0, v2, v3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static parseMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    const/16 v5, 0x3a

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const-string v6, "Not a map: {0}"

    const/4 v7, 0x6

    if-ltz v5, :cond_7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v8, v2, :cond_6

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x2c

    if-ne v8, v10, :cond_0

    move v8, v9

    goto :goto_5

    :cond_0
    const/16 v10, 0x22

    if-ne v8, v10, :cond_5

    :goto_2
    if-ge v9, v2, :cond_4

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_2

    if-eq v8, v2, :cond_1

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_3

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v7, v6, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_2
    if-ne v11, v10, :cond_3

    goto :goto_1

    :cond_3
    move v9, v8

    :goto_3
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    :goto_4
    move v8, v9

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v8

    goto :goto_0

    :cond_7
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v7, v6, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0

    :cond_8
    return-object v1
.end method

.method public static readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    if-ltz v1, :cond_1

    int-to-long v1, v1

    add-long/2addr p1, v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-wide/16 v2, -0x1

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, p2, v3

    aput-object v2, p2, v0

    const/4 p0, 0x2

    aput-object p3, p2, p0

    const/4 p0, 0x3

    aput-object p1, p2, p0

    const/4 p0, 0x4

    aput-object v1, p2, p0

    const-string p0, "Reading from {0} failed; file length {1} read length {2} at {3}"

    invoke-static {v0, p0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :try_start_0
    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p1, p0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Error parsing the value {0}"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x6

    invoke-static {p0, p2, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static readHexLong(Ljava/util/Map;Ljava/lang/String;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    :try_start_0
    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->parseHexLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    const-string p2, "Error parsing the value {0}"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p3, v0

    const/4 p0, 0x1

    aput-object p1, p3, p0

    const/4 p0, 0x6

    invoke-static {p0, p2, p3}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 5

    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v3, v2, 0xff

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    int-to-char v2, v3

    aput-char v2, v0, v1

    goto :goto_1

    :cond_0
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static readVarInt(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-static {p0, v0}, Lorg/h2/mvstore/DataUtils;->readVarIntRest(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method private static readVarIntRest(Ljava/nio/ByteBuffer;I)I
    .locals 1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ltz v0, :cond_0

    shl-int/lit8 p0, v0, 0x7

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ltz v0, :cond_1

    shl-int/lit8 p0, v0, 0xe

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p1, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ltz v0, :cond_2

    shl-int/lit8 p0, v0, 0x15

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    shl-int/lit8 p0, p0, 0x1c

    or-int/2addr p0, v0

    goto :goto_0
.end method

.method public static readVarLong(Ljava/nio/ByteBuffer;)J
    .locals 11

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x7f

    and-long/2addr v0, v4

    const/4 v6, 0x7

    :goto_0
    const/16 v7, 0x40

    if-ge v6, v7, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    int-to-long v7, v7

    and-long v9, v7, v4

    shl-long/2addr v9, v6

    or-long/2addr v0, v9

    cmp-long v9, v7, v2

    if-ltz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x7

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static writeFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    int-to-long v3, v2

    add-long/2addr v3, p1

    :try_start_0
    invoke-virtual {p0, p3, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v3, :cond_0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v1

    const/4 p0, 0x1

    aput-object p3, p2, p0

    aput-object p1, p2, v0

    const/4 p0, 0x3

    aput-object v2, p2, p0

    const-string p0, "Writing to {0} failed; length {1} at {2}"

    invoke-static {v0, p0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static writeStringData(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    :goto_1
    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_0
    const/16 v2, 0x800

    if-lt v1, v2, :cond_1

    shr-int/lit8 v2, v1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    :goto_2
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    goto :goto_1

    :cond_1
    shr-int/lit8 v2, v1, 0x6

    or-int/lit16 v2, v2, 0xc0

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static writeVarInt(Ljava/io/OutputStream;I)V
    .locals 1

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeVarInt(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 2
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static writeVarLong(Ljava/io/OutputStream;J)V
    .locals 5

    .line 1
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeVarLong(Ljava/nio/ByteBuffer;J)V
    .locals 5

    .line 2
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
