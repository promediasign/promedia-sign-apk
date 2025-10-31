.class public Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaParticle;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final _maxint:Ljava/math/BigInteger;

.field static synthetic class$org$apache$xmlbeans$impl$schema$SchemaParticleImpl:Ljava/lang/Class;


# instance fields
.field private _defaultText:Ljava/lang/String;

.field private _defaultValue:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private _excludeNextSet:Lorg/apache/xmlbeans/QNameSet;

.field private _intMaxOccurs:I

.field private _intMinOccurs:I

.field private _isDefault:Z

.field private _isDeterministic:Z

.field private _isFixed:Z

.field private _isImmutable:Z

.field private _isNillable:Z

.field private _isSkippable:Z

.field private _maxOccurs:Ljava/math/BigInteger;

.field private _minOccurs:Ljava/math/BigInteger;

.field protected _parseObject:Lorg/apache/xmlbeans/XmlObject;

.field private _particleChildren:[Lorg/apache/xmlbeans/SchemaParticle;

.field private _particleType:I

.field private _qName:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _startSet:Lorg/apache/xmlbeans/QNameSet;

.field private _typeref:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _userData:Ljava/lang/Object;

.field private _wildcardProcess:I

.field private _wildcardSet:Lorg/apache/xmlbeans/QNameSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->class$org$apache$xmlbeans$impl$schema$SchemaParticleImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaParticleImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->class$org$apache$xmlbeans$impl$schema$SchemaParticleImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->$assertionsDisabled:Z

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_maxint:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private static final pegBigInteger(Ljava/math/BigInteger;)I
    .locals 2

    const v0, 0x7fffffff

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_maxint:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_startSet:Lorg/apache/xmlbeans/QNameSet;

    return-object v0
.end method

.method public canStartWithElement(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_startSet:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public countOfParticleChild()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_particleChildren:[Lorg/apache/xmlbeans/SchemaParticle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getDefaultText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_defaultText:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_defaultValue:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;->get()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_defaultText:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/xmlbeans/XmlAnySimpleType;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/XmlQName;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_defaultText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaType;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_defaultText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaType;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExcludeNextSet()Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_excludeNextSet:Lorg/apache/xmlbeans/QNameSet;

    return-object v0
.end method

.method public getIntMaxOccurs()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_intMaxOccurs:I

    return v0
.end method

.method public getIntMinOccurs()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_intMinOccurs:I

    return v0
.end method

.method public getMaxOccurs()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_maxOccurs:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getMinOccurs()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_minOccurs:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_qName:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_particleChildren:[Lorg/apache/xmlbeans/SchemaParticle;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_particleChildren:[Lorg/apache/xmlbeans/SchemaParticle;

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_particleType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/xmlbeans/SchemaParticle;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getParticleType()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_particleType:I

    return v0
.end method

.method public getType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_typeref:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getWildcardProcess()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_wildcardProcess:I

    return v0
.end method

.method public getWildcardSet()Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_wildcardSet:Lorg/apache/xmlbeans/QNameSet;

    return-object v0
.end method

.method public hasTransitionNotes()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_excludeNextSet:Lorg/apache/xmlbeans/QNameSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransitionRules()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_startSet:Lorg/apache/xmlbeans/QNameSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttribute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isDefault:Z

    return v0
.end method

.method public isDeterministic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isDeterministic:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isFixed:Z

    return v0
.end method

.method public isNillable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isNillable:Z

    return v0
.end method

.method public isSingleton()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_maxOccurs:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_minOccurs:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSkippable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isSkippable:Z

    return v0
.end method

.method public isTypeResolved()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_typeref:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mutate()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isImmutable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public resolveTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_typeref:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_typeref:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setDefault(Ljava/lang/String;ZLorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_defaultText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isDefault:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isFixed:Z

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public setDefaultValue(Lorg/apache/xmlbeans/impl/schema/XmlValueRef;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_defaultValue:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-void
.end method

.method public setImmutable()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isImmutable:Z

    return-void
.end method

.method public setMaxOccurs(Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_maxOccurs:Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->pegBigInteger(Ljava/math/BigInteger;)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_intMaxOccurs:I

    return-void
.end method

.method public setMinOccurs(Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_minOccurs:Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->pegBigInteger(Ljava/math/BigInteger;)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_intMinOccurs:I

    return-void
.end method

.method public setNameAndTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_qName:Lorg/apache/poi/javax/xml/namespace/QName;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_typeref:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setNillable(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isNillable:Z

    return-void
.end method

.method public setParticleChildren([Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_particleChildren:[Lorg/apache/xmlbeans/SchemaParticle;

    return-void
.end method

.method public setParticleType(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_particleType:I

    return-void
.end method

.method public setTransitionNotes(Lorg/apache/xmlbeans/QNameSet;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_excludeNextSet:Lorg/apache/xmlbeans/QNameSet;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isDeterministic:Z

    return-void
.end method

.method public setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_startSet:Lorg/apache/xmlbeans/QNameSet;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_isSkippable:Z

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_userData:Ljava/lang/Object;

    return-void
.end method

.method public setWildcardProcess(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_wildcardProcess:I

    return-void
.end method

.method public setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_wildcardSet:Lorg/apache/xmlbeans/QNameSet;

    return-void
.end method
