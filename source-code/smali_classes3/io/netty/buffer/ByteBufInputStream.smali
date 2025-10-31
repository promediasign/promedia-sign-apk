.class public Lio/netty/buffer/ByteBufInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final buffer:Lio/netty/buffer/ByteBuf;

.field private closed:Z

.field private final endIndex:I

.field private lineBuf:Ljava/lang/StringBuilder;

.field private final releaseOnClose:Z

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;IZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gez p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "length: "

    .line 3
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-le p2, v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Too many bytes to be read - Needs "

    const-string v1, ", maximum is "

    .line 5
    invoke-static {p2, v0, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3
    iput-boolean p3, p0, Lio/netty/buffer/ByteBufInputStream;->releaseOnClose:Z

    iput-object p1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p3

    iput p3, p0, Lio/netty/buffer/ByteBufInputStream;->startIndex:I

    add-int/2addr p3, p2

    iput p3, p0, Lio/netty/buffer/ByteBufInputStream;->endIndex:I

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Z)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;IZ)V

    return-void
.end method

.method private checkAvailable(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 11
    .line 12
    const-string v1, "fieldSize is too long! Length is "

    .line 13
    .line 14
    const-string v2, ", but maximum is "

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 36
    .line 37
    const-string v0, "fieldSize cannot be a negative number"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
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
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lio/netty/buffer/ByteBufInputStream;->endIndex:I

    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lio/netty/buffer/ByteBufInputStream;->releaseOnClose:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/netty/buffer/ByteBufInputStream;->closed:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lio/netty/buffer/ByteBufInputStream;->closed:Z

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lio/netty/buffer/ByteBufInputStream;->releaseOnClose:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lio/netty/buffer/ByteBufInputStream;->closed:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Lio/netty/buffer/ByteBufInputStream;->closed:Z

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_1
    throw v1
.end method

.method public mark(I)V
    .locals 0

    iget-object p1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    return p3
.end method

.method public readBoolean()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->read()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readBytes()I
    .locals 2

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/ByteBufInputStream;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readChar()C
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/buffer/ByteBufInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    .line 2
    invoke-direct {p0, p3}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public readInt()I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    iget-object v1, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v1

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v3, 0xd

    if-eq v1, v3, :cond_3

    iget-object v2, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v0

    int-to-char v0, v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    :cond_4
    :goto_0
    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public readLong()J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/buffer/ByteBufInputStream;->checkAvailable(I)V

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public skip(J)J
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBufInputStream;->skipBytes(I)I

    move-result p1

    :goto_0
    int-to-long p1, p1

    return-wide p1

    :cond_0
    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBufInputStream;->skipBytes(I)I

    move-result p1

    goto :goto_0
.end method

.method public skipBytes(I)I
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBufInputStream;->available()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lio/netty/buffer/ByteBufInputStream;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return p1
.end method
