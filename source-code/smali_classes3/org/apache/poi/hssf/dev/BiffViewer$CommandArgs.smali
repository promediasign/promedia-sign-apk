.class final Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/dev/BiffViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandArgs"
.end annotation


# instance fields
.field private final _biffhex:Z

.field private final _file:Ljava/io/File;

.field private final _noHeader:Z

.field private final _noint:Z

.field private final _out:Z

.field private final _rawhex:Z


# direct methods
.method private constructor <init>(ZZZZZLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_biffhex:Z

    iput-boolean p2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noint:Z

    iput-boolean p3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_out:Z

    iput-boolean p4, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_rawhex:Z

    iput-object p6, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_file:Ljava/io/File;

    iput-boolean p5, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noHeader:Z

    return-void
.end method

.method public static parse([Ljava/lang/String;)Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v8, v2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_9

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    const-string v9, "--"

    .line 15
    .line 16
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v9

    .line 20
    if-eqz v9, :cond_6

    .line 21
    .line 22
    const-string v9, "--biffhex"

    .line 23
    .line 24
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    const/4 v10, 0x1

    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string v9, "--noint"

    .line 34
    .line 35
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-eqz v9, :cond_1

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string v9, "--out"

    .line 44
    .line 45
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const-string v9, "--escher"

    .line 54
    .line 55
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_3

    .line 60
    .line 61
    const-string v2, "poi.deserialize.escher"

    .line 62
    .line 63
    const-string v9, "true"

    .line 64
    .line 65
    invoke-static {v2, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string v9, "--rawhex"

    .line 70
    .line 71
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_4

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const-string v7, "--noheader"

    .line 80
    .line 81
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    const/4 v7, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    .line 90
    .line 91
    const-string v0, "Unexpected option \'"

    .line 92
    .line 93
    const-string v1, "\'"

    .line 94
    .line 95
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_6
    new-instance v8, Ljava/io/File;

    .line 104
    .line 105
    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_8

    .line 113
    .line 114
    add-int/lit8 v2, v1, 0x1

    .line 115
    .line 116
    if-lt v2, v0, :cond_7

    .line 117
    .line 118
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_7
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    .line 122
    .line 123
    const-string v0, "File name must be the last arg"

    .line 124
    .line 125
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_8
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    .line 130
    .line 131
    const-string v0, "Specified file \'"

    .line 132
    .line 133
    const-string v1, "\' does not exist"

    .line 134
    .line 135
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_9
    if-eqz v8, :cond_a

    .line 144
    .line 145
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;

    .line 146
    .line 147
    move-object v2, p0

    .line 148
    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;-><init>(ZZZZZLjava/io/File;)V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_a
    new-instance p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    .line 153
    .line 154
    const-string v0, "Biff viewer needs a filename"

    .line 155
    .line 156
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0
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
.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_file:Ljava/io/File;

    return-object v0
.end method

.method public shouldDumpBiffHex()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_biffhex:Z

    return v0
.end method

.method public shouldDumpRecordInterpretations()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noint:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldOutputRawHexOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_rawhex:Z

    return v0
.end method

.method public shouldOutputToFile()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_out:Z

    return v0
.end method

.method public suppressHeader()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noHeader:Z

    return v0
.end method
