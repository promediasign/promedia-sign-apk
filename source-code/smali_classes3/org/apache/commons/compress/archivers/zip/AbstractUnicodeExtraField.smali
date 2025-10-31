.class public abstract Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# instance fields
.field private data:[B

.field private nameCRC32:J

.field private unicodeName:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    :try_start_0
    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "FATAL: UTF-8 encoding not supported."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private assembleData()V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    invoke-static {v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    const/4 v5, 0x4

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    array-length v4, v0

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->assembleData()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->assembleData()V

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    if-eqz v1, :cond_1

    array-length v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public abstract synthetic getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
.end method

.method public getLocalFileDataData()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getCentralDirectoryData()[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getNameCRC32()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    return-wide v0
.end method

.method public getUnicodeName()[B
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p3, v0, :cond_1

    .line 3
    .line 4
    aget-byte v1, p1, p2

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, p2, 0x1

    .line 10
    .line 11
    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    .line 16
    .line 17
    sub-int/2addr p3, v0

    .line 18
    new-array v1, p3, [B

    .line 19
    .line 20
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    .line 21
    .line 22
    add-int/2addr p2, v0

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    .line 32
    .line 33
    const-string p2, "Unsupported version ["

    .line 34
    .line 35
    const-string p3, "] for UniCode path extra data."

    .line 36
    .line 37
    invoke-static {v1, p2, p3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    .line 46
    .line 47
    const-string p2, "UniCode path extra data must have at least 5 bytes."

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
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

.method public setNameCRC32(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->nameCRC32:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    return-void
.end method

.method public setUnicodeName([B)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->unicodeName:[B

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->data:[B

    return-void
.end method
