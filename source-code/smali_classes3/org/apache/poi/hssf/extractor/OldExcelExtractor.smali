.class public Lorg/apache/poi/hssf/extractor/OldExcelExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private biffVersion:I

.field private fileType:I

.field private ris:Lorg/apache/poi/hssf/record/RecordInputStream;

.field private toClose:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;
    :try_end_1
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_2
    nop

    move-object v0, v1

    goto :goto_3

    :catch_3
    nop

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    goto :goto_1

    :catch_6
    nop

    goto :goto_3

    :catch_7
    nop

    goto :goto_5

    :goto_0
    :try_start_2
    throw p1

    :goto_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    throw p1

    :goto_3
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_1

    :goto_4
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    :goto_6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_3
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8

    return-void

    :catch_8
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1

    :catch_9
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "   OldExcelExtractor <filename>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;-><init>(Ljava/io/File;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->close()V

    return-void
.end method

.method private open(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->hasPOIFSHeader(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw p1

    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    :goto_1
    return-void
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2

    .line 2
    :try_start_0
    const-string v0, "Book"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No Excel 5/95 Book stream found"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/16 v1, 0x209

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0x409

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x809

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v2, "File does not begin with a BOF, found sid of "

    .line 43
    .line 44
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    const/4 v0, 0x4

    .line 53
    :goto_0
    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v0, 0x3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v0, 0x2

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    .line 61
    .line 62
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string v1, "File contains no records!"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
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


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    :cond_0
    return-void
.end method

.method public getBiffVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    const/4 v4, 0x4

    const/16 v5, 0xa

    if-eq v3, v4, :cond_9

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_8

    const/16 v4, 0x42

    if-eq v3, v4, :cond_7

    const/16 v4, 0x85

    if-eq v3, v4, :cond_6

    const/16 v4, 0x27e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x406

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    const/16 v4, 0x203

    if-eq v3, v4, :cond_1

    const/16 v4, 0x204

    if-eq v3, v4, :cond_9

    const/16 v4, 0x206

    if-eq v3, v4, :cond_3

    const/16 v4, 0x207

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/apache/poi/hssf/record/NumberRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v3

    goto :goto_2

    :cond_2
    new-instance v3, Lorg/apache/poi/hssf/record/OldStringRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldStringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldStringRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    new-instance v3, Lorg/apache/poi/hssf/record/FormulaRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v5}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v3

    :goto_2
    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Lorg/apache/poi/hssf/record/OldFormulaRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getCachedResultType()I

    move-result v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v5}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getValue()D

    move-result-wide v3

    goto :goto_2

    :cond_5
    new-instance v3, Lorg/apache/poi/hssf/record/RKRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v3

    goto :goto_2

    :cond_6
    new-instance v3, Lorg/apache/poi/hssf/record/OldSheetRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldSheetRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    const-string v4, "Sheet: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    new-instance v2, Lorg/apache/poi/hssf/record/CodepageRecord;

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Encryption not supported for Old Excel files"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v3, Lorg/apache/poi/hssf/record/OldLabelRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldLabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldLabelRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->close()V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleNumericCell(Ljava/lang/StringBuffer;D)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
