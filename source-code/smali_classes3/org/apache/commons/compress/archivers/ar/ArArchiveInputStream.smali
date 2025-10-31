.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# static fields
.field private static final BSD_LONGNAME_PREFIX_LEN:I = 0x3


# instance fields
.field private closed:Z

.field private currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

.field private entryOffset:J

.field private final input:Ljava/io/InputStream;

.field private final metaData:[B

.field private namebuffer:[B

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    const/16 v0, 0x3a

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    return-void
.end method

.method private asInt([BII)I
    .locals 6

    .line 1
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p1

    return p1
.end method

.method private asInt([BIII)I
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p1

    return p1
.end method

.method private asInt([BIIIZ)I
    .locals 0

    .line 3
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private asInt([BIIZ)I
    .locals 6

    .line 4
    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p1

    return p1
.end method

.method private asLong([BII)J
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getBSDLongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->BSD_LONGNAME_PREFIX_LEN:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-array v0, p1, [B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    if-ne v1, p1, :cond_0

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private getExtendedName(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    move v0, p1

    .line 6
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    if-ge v0, v2, :cond_3

    .line 10
    .line 11
    aget-byte v2, v1, v0

    .line 12
    .line 13
    const/16 v3, 0xa

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    .line 24
    .line 25
    aget-byte v2, v1, v2

    .line 26
    .line 27
    const/16 v3, 0x2f

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    :cond_2
    sub-int/2addr v0, p1

    .line 34
    invoke-static {v1, p1, v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 40
    .line 41
    const-string v1, "Failed to read entry: "

    .line 42
    .line 43
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 52
    .line 53
    const-string v0, "Cannot process GNU long filename as no // record was found"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
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
.end method

.method private static isBSDLongName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "^#1/\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGNULongName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "^/\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isGNUStringTable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "//"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static matches([BI)Z
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    aget-byte p1, p0, v1

    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    aget-byte v0, p0, p1

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v2, 0x61

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v2, 0x72

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_0

    const/4 v0, 0x7

    aget-byte p0, p0, v0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private readGNUStringTable([BII)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BII)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-array p2, p1, [B

    .line 6
    .line 7
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 8
    .line 9
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p3, p2, v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    int-to-long v0, p2

    .line 17
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 18
    .line 19
    .line 20
    if-ne p2, p1, :cond_0

    .line 21
    .line 22
    new-instance p2, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 23
    .line 24
    const-string p3, "//"

    .line 25
    .line 26
    int-to-long v0, p1

    .line 27
    invoke-direct {p2, p3, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_0
    new-instance p3, Ljava/io/IOException;

    .line 32
    .line 33
    const-string v0, "Failed to read complete // record: expected="

    .line 34
    .line 35
    const-string v1, " read="

    .line 36
    .line 37
    invoke-static {v0, p1, v1, p2}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p3
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
.end method

.method private trackReadBytes(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    return-void
.end method

.method public getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    add-long/2addr v5, v3

    .line 15
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 16
    .line 17
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 18
    .line 19
    sub-long/2addr v5, v3

    .line 20
    invoke-static {v1, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 28
    .line 29
    :cond_0
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    const-string v1, "!<arch>\n"

    .line 38
    .line 39
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    array-length v3, v1

    .line 44
    new-array v3, v3, [B

    .line 45
    .line 46
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 47
    .line 48
    invoke-static {v4, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    int-to-long v7, v4

    .line 53
    invoke-direct {v0, v7, v8}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 54
    .line 55
    .line 56
    array-length v7, v1

    .line 57
    if-ne v4, v7, :cond_2

    .line 58
    .line 59
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v4, "Invalid header "

    .line 71
    .line 72
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "Failed to read header. Occured at byte: "

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_3
    :goto_0
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 115
    .line 116
    const-wide/16 v7, 0x2

    .line 117
    .line 118
    rem-long/2addr v3, v7

    .line 119
    cmp-long v1, v3, v5

    .line 120
    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-gez v1, :cond_4

    .line 130
    .line 131
    return-object v2

    .line 132
    :cond_4
    const-wide/16 v3, 0x1

    .line 133
    .line 134
    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 135
    .line 136
    .line 137
    :cond_5
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 138
    .line 139
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 140
    .line 141
    invoke-static {v1, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    int-to-long v3, v1

    .line 146
    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 147
    .line 148
    .line 149
    if-nez v1, :cond_6

    .line 150
    .line 151
    return-object v2

    .line 152
    :cond_6
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 153
    .line 154
    array-length v2, v2

    .line 155
    if-lt v1, v2, :cond_d

    .line 156
    .line 157
    const-string v1, "`\n"

    .line 158
    .line 159
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    array-length v2, v1

    .line 164
    new-array v2, v2, [B

    .line 165
    .line 166
    iget-object v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    .line 167
    .line 168
    invoke-static {v3, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    int-to-long v4, v3

    .line 173
    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 174
    .line 175
    .line 176
    array-length v4, v1

    .line 177
    if-ne v3, v4, :cond_c

    .line 178
    .line 179
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_b

    .line 184
    .line 185
    iget-wide v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    .line 186
    .line 187
    iput-wide v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 188
    .line 189
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 190
    .line 191
    const/4 v2, 0x0

    .line 192
    const/16 v3, 0x10

    .line 193
    .line 194
    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNUStringTable(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    const/16 v5, 0xa

    .line 207
    .line 208
    const/16 v6, 0x30

    .line 209
    .line 210
    if-eqz v4, :cond_7

    .line 211
    .line 212
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 213
    .line 214
    invoke-direct {v0, v1, v6, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->readGNUStringTable([BII)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 219
    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    return-object v1

    .line 225
    :cond_7
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 226
    .line 227
    invoke-direct {v0, v4, v6, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([BII)J

    .line 228
    .line 229
    .line 230
    move-result-wide v4

    .line 231
    const-string v6, "/"

    .line 232
    .line 233
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    const/4 v7, 0x1

    .line 238
    if-eqz v6, :cond_9

    .line 239
    .line 240
    invoke-static {v1, v7, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    :cond_8
    :goto_1
    move-object v13, v1

    .line 245
    move-wide v14, v4

    .line 246
    goto :goto_2

    .line 247
    :cond_9
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNULongName(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_a

    .line 252
    .line 253
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getExtendedName(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    goto :goto_1

    .line 266
    :cond_a
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isBSDLongName(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_8

    .line 271
    .line 272
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBSDLongName(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    int-to-long v8, v2

    .line 281
    sub-long/2addr v4, v8

    .line 282
    iget-wide v10, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 283
    .line 284
    add-long/2addr v10, v8

    .line 285
    iput-wide v10, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :goto_2
    new-instance v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 289
    .line 290
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 291
    .line 292
    const/16 v4, 0x1c

    .line 293
    .line 294
    const/4 v5, 0x6

    .line 295
    invoke-direct {v0, v2, v4, v5, v7}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIZ)I

    .line 296
    .line 297
    .line 298
    move-result v16

    .line 299
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 300
    .line 301
    const/16 v4, 0x22

    .line 302
    .line 303
    invoke-direct {v0, v2, v4, v5, v7}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIZ)I

    .line 304
    .line 305
    .line 306
    move-result v17

    .line 307
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 308
    .line 309
    const/16 v4, 0x28

    .line 310
    .line 311
    const/16 v5, 0x8

    .line 312
    .line 313
    invoke-direct {v0, v2, v4, v5, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIII)I

    .line 314
    .line 315
    .line 316
    move-result v18

    .line 317
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 318
    .line 319
    const/16 v4, 0xc

    .line 320
    .line 321
    invoke-direct {v0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([BII)J

    .line 322
    .line 323
    .line 324
    move-result-wide v19

    .line 325
    move-object v12, v1

    .line 326
    invoke-direct/range {v12 .. v20}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    .line 327
    .line 328
    .line 329
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 330
    .line 331
    return-object v1

    .line 332
    :cond_b
    new-instance v1, Ljava/io/IOException;

    .line 333
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    const-string v3, "Invalid entry trailer. not read the content? Occured at byte: "

    .line 337
    .line 338
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 342
    .line 343
    .line 344
    move-result-wide v3

    .line 345
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v1

    .line 356
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 357
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v3, "Failed to read entry trailer. Occured at byte: "

    .line 361
    .line 362
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    .line 366
    .line 367
    .line 368
    move-result-wide v3

    .line 369
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v1

    .line 380
    :cond_d
    new-instance v1, Ljava/io/IOException;

    .line 381
    .line 382
    const-string v2, "Truncated ar archive"

    .line 383
    .line 384
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v1
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
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v3

    add-long/2addr v3, v1

    if-ltz p3, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    cmp-long v2, v0, v3

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v5, p3

    sub-long/2addr v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current ar entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
