.class public final Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;
.super Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
.source "SourceFile"


# instance fields
.field private _closed:Z

.field private _currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

.field private _current_offset:I

.field private final _document:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

.field private final _document_size:I

.field private _marked_offset:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>()V

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    const-string v1, "Cannot open internal document storage"

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_marked_offset:I

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    if-ltz p1, :cond_0

    iput-boolean v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;->getDocument()Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "document_size cannot be < 0"

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_marked_offset:I

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->getSize()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    return-void
.end method

.method private atEOD()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkAvaliable(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v1, "Buffer underrun - requested "

    .line 16
    .line 17
    const-string v2, " bytes but "

    .line 18
    .line 19
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    .line 24
    .line 25
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    .line 26
    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " was available"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "cannot perform requested operation on a closed stream"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
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

.method private dieIfClosed()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_closed:Z

    return-void
.end method

.method public mark(I)V
    .locals 0

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_marked_offset:I

    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->dieIfClosed()V

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->atEOD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUByte()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v1

    if-ge v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->dieIfClosed()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->atEOD()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->available()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->readFully([BII)V

    return p3

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "can\'t read past buffer boundaries"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->readUByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([BII)V
    .locals 4

    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    if-le v0, p3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readFully([BII)V

    iget p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    return-void

    :cond_0
    :goto_0
    if-lez p3, :cond_5

    if-lt p3, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v3, p1, p2, v2}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readFully([BII)V

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    iget v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    if-eqz v1, :cond_0

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    if-ne v3, v0, :cond_4

    if-gtz p3, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "reached end of document stream unexpectedly"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-direct {p0, v3}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v0

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public readInt()I
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readIntLE()I

    move-result v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v2

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readIntLE()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readIntLE(Lorg/apache/poi/poifs/storage/DataInputBlock;I)I

    move-result v1

    :goto_0
    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    :goto_1
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    return v1
.end method

.method public readLong()J
    .locals 5

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readLongLE()J

    move-result-wide v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v2

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readLongLE()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readLongLE(Lorg/apache/poi/poifs/storage/DataInputBlock;I)J

    move-result-wide v3

    :goto_0
    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-wide v1, v3

    :goto_1
    iget v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    return-wide v1
.end method

.method public readShort()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->readUShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUByte()I

    move-result v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v2

    if-ge v2, v0, :cond_0

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    :cond_0
    return v1
.end method

.method public readUShort()I
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->checkAvaliable(I)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->available()I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUShortLE()I

    move-result v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v2

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUShortLE()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/storage/DataInputBlock;->readUShortLE(Lorg/apache/poi/poifs/storage/DataInputBlock;)I

    move-result v1

    :goto_0
    iput-object v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    :goto_1
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    return v1
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_marked_offset:I

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    return-void
.end method

.method public skip(J)J
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->dieIfClosed()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    long-to-int p2, p1

    add-int/2addr p2, v0

    if-ge p2, v0, :cond_1

    iget p2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_document_size:I

    if-le p2, p1, :cond_2

    move p2, p1

    :cond_2
    :goto_0
    sub-int p1, p2, v0

    int-to-long v0, p1

    iput p2, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_current_offset:I

    invoke-direct {p0, p2}, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->getDataInputBlock(I)Lorg/apache/poi/poifs/storage/DataInputBlock;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/ODocumentInputStream;->_currentBlock:Lorg/apache/poi/poifs/storage/DataInputBlock;

    return-wide v0
.end method
