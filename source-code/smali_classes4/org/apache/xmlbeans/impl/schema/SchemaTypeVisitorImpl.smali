.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$impl$schema$SchemaTypeVisitorImpl:Ljava/lang/Class;


# instance fields
.field private _isValid:Z

.field private _matchedParticle:Lorg/apache/xmlbeans/SchemaParticle;

.field private _rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

.field private _rollbackIndex:I

.field _rollbackSize:I

.field private _stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

.field _stackSize:I

.field private _top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeVisitorImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeVisitorImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeVisitorImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->init(Lorg/apache/xmlbeans/SchemaParticle;)V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
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


# virtual methods
.method public addParticle(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    array-length v1, v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->init(Lorg/apache/xmlbeans/SchemaParticle;)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    return-void
.end method

.method public commit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    return-void
.end method

.method public currentParticle()Lorg/apache/xmlbeans/SchemaParticle;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_matchedParticle:Lorg/apache/xmlbeans/SchemaParticle;

    return-object v0
.end method

.method public expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    new-array v1, v0, [Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    array-length v2, p1

    :goto_1
    if-ge v2, v0, :cond_3

    new-instance p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$1;)V

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public get_default_text()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public get_elementflags()I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->isNillable()Z

    move-result v3

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    or-int/2addr v3, v4

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    :cond_2
    or-int v0, v3, v1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public get_schema_field()Lorg/apache/xmlbeans/SchemaField;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xmlbeans/SchemaField;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaField;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->push(Lorg/apache/xmlbeans/SchemaParticle;)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    :cond_2
    return-void
.end method

.method public isAllValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_isValid:Z

    return v0
.end method

.method public notValid()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_isValid:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_matchedParticle:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->rollback()V

    return v0
.end method

.method public ok(Lorg/apache/xmlbeans/SchemaParticle;Z)Z
    .locals 0

    if-nez p2, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_matchedParticle:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->commit()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->rollback()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public pop()Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->prepare()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->topRef()Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    return v1
.end method

.method public prepare()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->topRef()Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->saveCopy(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)V

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    return v1
.end method

.method public push(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->addParticle(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->topRef()Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    return-void
.end method

.method public rollback()V
    .locals 6

    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    aget-object v3, v1, v2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    aget-object v5, v4, v0

    aput-object v5, v1, v2

    aput-object v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    return-void
.end method

.method public saveCopy(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    array-length v1, v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->copy(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    return-void
.end method

.method public testValid(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->visit(Lorg/apache/poi/javax/xml/namespace/QName;Z)Z

    move-result p1

    return p1
.end method

.method public topRef()Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public visit(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->visit(Lorg/apache/poi/javax/xml/namespace/QName;Z)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/apache/poi/javax/xml/namespace/QName;Z)Z
    .locals 8

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->prepare()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, -0x2

    const/4 v1, -0x2

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v4, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-le v3, v4, :cond_2

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    if-ne v1, v0, :cond_2

    iget v0, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMax:I

    iput v0, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    :cond_2
    iget v0, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    :cond_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v4, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMax:I

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->pop()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_7

    :cond_4
    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_11

    const/4 v5, 0x2

    if-eq v2, v5, :cond_e

    const/4 v5, 0x3

    if-eq v2, v5, :cond_9

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->$assertionsDisabled:Z

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v3, v2, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p1

    return p1

    :cond_7
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v0, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v0, v4

    iput v0, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->ok(Lorg/apache/xmlbeans/SchemaParticle;Z)Z

    move-result p1

    return p1

    :cond_8
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v3, v2, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p1

    return p1

    :cond_9
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    :goto_3
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v6, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_childCount:I

    if-ge v2, v6, :cond_d

    iget-object v5, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v5, v2}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->push(Lorg/apache/xmlbeans/SchemaParticle;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    if-nez v3, :cond_b

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v3, v2, :cond_16

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p1

    return p1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    iget v2, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v2, v4

    iput v2, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iput v3, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    goto/16 :goto_0

    :cond_e
    :goto_4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v5, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_childCount:I

    if-ge v3, v5, :cond_10

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v5, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v5, v4

    iput v5, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->push(Lorg/apache/xmlbeans/SchemaParticle;)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_10
    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v4, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v3, v4, :cond_16

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p1

    return p1

    :cond_11
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    const/4 v5, 0x0

    :goto_5
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v7, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_childCount:I

    if-ge v5, v7, :cond_15

    iget-object v7, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_seen:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_12

    goto :goto_6

    :cond_12
    iget-object v6, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v6, v5}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_seen:[Z

    aput-boolean v4, v2, v5

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->push(Lorg/apache/xmlbeans/SchemaParticle;)V

    goto/16 :goto_0

    :cond_13
    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v6

    if-eqz v6, :cond_14

    add-int/lit8 v2, v2, 0x1

    :cond_14
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_15
    if-ge v2, v7, :cond_18

    iget v2, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v3, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v2, v3, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p1

    return p1

    :cond_16
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->pop()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_7
    if-nez p1, :cond_17

    const/4 p1, 0x0

    goto/16 :goto_2

    :cond_17
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p1

    return p1

    :cond_18
    iget v2, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v2, v4

    iput v2, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iput v3, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    iget-object v2, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_seen:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    goto/16 :goto_0
.end method
