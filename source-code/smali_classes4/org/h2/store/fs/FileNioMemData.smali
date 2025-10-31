.class Lorg/h2/store/fs/FileNioMemData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/fs/FileNioMemData$CompressItem;,
        Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x10000

.field private static final BLOCK_SIZE_MASK:I = 0xffff

.field private static final BLOCK_SIZE_SHIFT:I = 0x10

.field private static final CACHE_MIN_SIZE:I = 0x8

.field private static final COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

.field private static final COMPRESS_OUT_BUF_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final LZF_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/h2/compress/CompressLZF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffers:[Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final compress:Z

.field private final compressLaterCache:Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/store/fs/FileNioMemData$CompressLaterCache<",
            "Lorg/h2/store/fs/FileNioMemData$CompressItem;",
            "Lorg/h2/store/fs/FileNioMemData$CompressItem;",
            ">;"
        }
    .end annotation
.end field

.field private final compressLaterCachePercent:F

.field private isLockedExclusive:Z

.field private isReadOnly:Z

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field final nameHashCode:I

.field private final rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private sharedLockCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/h2/store/fs/FileNioMemData$1;

    invoke-direct {v0}, Lorg/h2/store/fs/FileNioMemData$1;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FileNioMemData;->LZF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/h2/store/fs/FileNioMemData$2;

    invoke-direct {v0}, Lorg/h2/store/fs/FileNioMemData$2;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FileNioMemData;->COMPRESS_OUT_BUF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    const/high16 v0, 0x10000

    new-array v1, v0, [B

    const/high16 v2, 0x20000

    new-array v2, v2, [B

    new-instance v3, Lorg/h2/compress/CompressLZF;

    invoke-direct {v3}, Lorg/h2/compress/CompressLZF;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v2, v4}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lorg/h2/store/fs/FileNioMemData;->COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v4, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;-><init>(I)V

    iput-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->compressLaterCache:Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iput-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/h2/store/fs/FileNioMemData;->nameHashCode:I

    iput-boolean p2, p0, Lorg/h2/store/fs/FileNioMemData;->compress:Z

    iput p3, p0, Lorg/h2/store/fs/FileNioMemData;->compressLaterCachePercent:F

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->buffers:[Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/fs/FileNioMemData;->lastModified:J

    return-void
.end method

.method private addToCompressLaterCache(I)V
    .locals 1

    new-instance v0, Lorg/h2/store/fs/FileNioMemData$CompressItem;

    invoke-direct {v0, p0, p1}, Lorg/h2/store/fs/FileNioMemData$CompressItem;-><init>(Lorg/h2/store/fs/FileNioMemData;I)V

    iget-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->compressLaterCache:Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;

    invoke-virtual {p1, v0, v0}, Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private changeLength(J)V
    .locals 3

    iput-wide p1, p0, Lorg/h2/store/fs/FileNioMemData;->length:J

    const-wide/32 v0, 0x10000

    invoke-static {p1, p2, v0, v1}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide p1

    const/16 v0, 0x10

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->buffers:[Ljava/util/concurrent/atomic/AtomicReference;

    array-length v0, p1

    if-eq p2, v0, :cond_1

    new-array v0, p2, [Ljava/util/concurrent/atomic/AtomicReference;

    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->buffers:[Ljava/util/concurrent/atomic/AtomicReference;

    array-length p1, p1

    :goto_0
    if-ge p1, p2, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/h2/store/fs/FileNioMemData;->COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->buffers:[Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1
    iget-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->compressLaterCache:Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;

    int-to-float p2, p2

    iget v0, p0, Lorg/h2/store/fs/FileNioMemData;->compressLaterCachePercent:F

    mul-float p2, p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    float-to-int p2, p2

    const/16 v0, 0x8

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/h2/store/fs/FileNioMemData$CompressLaterCache;->setCacheSize(I)V

    return-void
.end method

.method private expandPage(I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->buffers:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/high16 v2, 0x10000

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lorg/h2/store/fs/FileNioMemData;->COMPRESSED_EMPTY_BLOCK:Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lorg/h2/compress/CompressLZF;->expand(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v2, p0, Lorg/h2/store/fs/FileNioMemData;->buffers:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    .line 48
    aget-object p1, v2, p1

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eq v2, v0, :cond_3

    .line 62
    .line 63
    :goto_0
    monitor-exit v0

    .line 64
    return-object v1

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
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


# virtual methods
.method public canWrite()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isReadOnly:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public compressPage(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->buffers:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/high16 v2, 0x10000

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sget-object v1, Lorg/h2/store/fs/FileNioMemData;->COMPRESS_OUT_BUF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, [B

    .line 31
    .line 32
    sget-object v2, Lorg/h2/store/fs/FileNioMemData;->LZF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lorg/h2/compress/CompressLZF;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v2, v0, v3, v1, v3}, Lorg/h2/compress/CompressLZF;->compress(Ljava/nio/ByteBuffer;I[BI)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMemData;->buffers:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    aget-object p1, v1, p1

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eq v1, v0, :cond_1

    .line 68
    .line 69
    :goto_0
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p1
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

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMemData;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMemData;->length:J

    return-wide v0
.end method

.method public declared-synchronized lockExclusive()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lockShared()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readWrite(JLjava/nio/ByteBuffer;IIZ)J
    .locals 7

    iget-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-eqz p6, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    int-to-long v1, p5

    add-long/2addr v1, p1

    :try_start_0
    iget-wide v3, p0, Lorg/h2/store/fs/FileNioMemData;->length:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    if-eqz p6, :cond_1

    invoke-direct {p0, v1, v2}, Lorg/h2/store/fs/FileNioMemData;->changeLength(J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    sub-long/2addr v3, p1

    long-to-int p5, v3

    :cond_2
    :goto_1
    if-lez p5, :cond_5

    int-to-long v1, p5

    const-wide/32 v3, 0xffff

    and-long/2addr v3, p1

    const-wide/32 v5, 0x10000

    sub-long/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x10

    ushr-long v5, p1, v1

    long-to-int v1, v5

    invoke-direct {p0, v1}, Lorg/h2/store/fs/FileNioMemData;->expandPage(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    long-to-int v4, v3

    if-eqz p6, :cond_3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int v6, p4, v2

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_2
    iget-boolean v3, p0, Lorg/h2/store/fs/FileNioMemData;->compress:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lorg/h2/store/fs/FileNioMemData;->addToCompressLaterCache(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/2addr p4, v2

    int-to-long v3, v2

    add-long/2addr p1, v3

    sub-int/2addr p5, v2

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide p1

    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->name:Ljava/lang/String;

    return-void
.end method

.method public setReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isReadOnly:Z

    return v0
.end method

.method public touch(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isReadOnly:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileNioMemData;->lastModified:J

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Read only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public truncate(J)V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/fs/FileNioMemData;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/h2/store/fs/FileNioMemData;->changeLength(J)V

    const-wide/32 v0, 0x10000

    invoke-static {p1, p2, v0, v1}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lorg/h2/store/fs/FileNioMemData;->expandPage(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/32 v2, 0xffff

    and-long/2addr p1, v2

    long-to-int p2, p1

    :goto_0
    const/high16 p1, 0x10000

    if-ge p2, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lorg/h2/store/fs/FileNioMemData;->compress:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lorg/h2/store/fs/FileNioMemData;->addToCompressLaterCache(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lorg/h2/store/fs/FileNioMemData;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lorg/h2/store/fs/FileNioMemData;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/h2/store/fs/FileNioMemData;->isLockedExclusive:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/h2/store/fs/FileNioMemData;->sharedLockCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
