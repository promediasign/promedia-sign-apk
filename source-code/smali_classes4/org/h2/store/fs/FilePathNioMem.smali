.class public Lorg/h2/store/fs/FilePathNioMem;
.super Lorg/h2/store/fs/FilePath;
.source "SourceFile"


# static fields
.field private static final MEMORY_FILES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/h2/store/fs/FileNioMemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field compressLaterCachePercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/fs/FilePath;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/h2/store/fs/FilePathNioMem;->compressLaterCachePercent:F

    return-void
.end method

.method public static getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x5c

    .line 2
    .line 3
    const/16 v1, 0x2f

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0x3a

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-le v2, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eq v2, v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const-string v3, "/"

    .line 36
    .line 37
    invoke-static {p0, v2, v0, v1, v3}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0, v1}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :cond_0
    return-object p0
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

.method private getMemoryFile()Lorg/h2/store/fs/FileNioMemData;
    .locals 5

    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/store/fs/FileNioMemData;

    if-nez v1, :cond_0

    new-instance v1, Lorg/h2/store/fs/FileNioMemData;

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->compressed()Z

    move-result v3

    iget v4, p0, Lorg/h2/store/fs/FilePathNioMem;->compressLaterCachePercent:F

    invoke-direct {v1, v2, v3, v4}, Lorg/h2/store/fs/FileNioMemData;-><init>(Ljava/lang/String;ZF)V

    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->canWrite()Z

    move-result v0

    return v0
.end method

.method public compressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createDirectory()V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (a file with this name already exists)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fce

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public createFile()Z
    .locals 2

    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete()V
    .locals 2

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public exists()Z
    .locals 3

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic getParent()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->getParent()Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/h2/store/fs/FilePathNioMem;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/store/fs/FilePathNioMem;

    invoke-direct {v0}, Lorg/h2/store/fs/FilePathNioMem;-><init>()V

    invoke-static {p1}, Lorg/h2/store/fs/FilePathNioMem;->getCanonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "nioMemFS"

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->isRoot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRoot()Z
    .locals 3

    iget-object v0, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveTo(Lorg/h2/store/fs/FilePath;Z)V
    .locals 2

    sget-object v0, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v0

    if-nez p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (exists)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    const p2, 0x15fa8

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object p2

    iget-object v1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/h2/store/fs/FileNioMemData;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public newDirectoryStream()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/h2/store/fs/FilePath;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lorg/h2/store/fs/FilePathNioMem;->MEMORY_FILES:Ljava/util/TreeMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/store/fs/FilePath;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/h2/store/fs/FilePathNioMem;->getPath(Ljava/lang/String;)Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    new-instance v0, Lorg/h2/store/fs/FileChannelInputStream;

    invoke-direct {v0, v1, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public newOutputStream(Z)Ljava/io/OutputStream;
    .locals 3

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    new-instance v0, Lorg/h2/store/fs/FileChannelOutputStream;

    invoke-direct {v0, v1, p1}, Lorg/h2/store/fs/FileChannelOutputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v0
.end method

.method public open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;
    .locals 3

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    new-instance v1, Lorg/h2/store/fs/FileNioMem;

    const-string v2, "r"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v1, v0, p1}, Lorg/h2/store/fs/FileNioMem;-><init>(Lorg/h2/store/fs/FileNioMemData;Z)V

    return-object v1
.end method

.method public setReadOnly()Z
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->setReadOnly()Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2

    invoke-direct {p0}, Lorg/h2/store/fs/FilePathNioMem;->getMemoryFile()Lorg/h2/store/fs/FileNioMemData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/fs/FileNioMemData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toRealPath()Lorg/h2/store/fs/FilePath;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/store/fs/FilePathNioMem;->toRealPath()Lorg/h2/store/fs/FilePathNioMem;

    move-result-object v0

    return-object v0
.end method

.method public toRealPath()Lorg/h2/store/fs/FilePathNioMem;
    .locals 0

    .line 2
    return-object p0
.end method
