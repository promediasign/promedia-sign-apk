.class public Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/inst2xsd/XsdGenStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final _xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

.field static final _xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

.field static synthetic class$org$apache$xmlbeans$impl$inst2xsd$RussianDollStrategy:Ljava/lang/Class;


# instance fields
.field private _validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->class$org$apache$xmlbeans$impl$inst2xsd$RussianDollStrategy:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.inst2xsd.RussianDollStrategy"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->class$org$apache$xmlbeans$impl$inst2xsd$RussianDollStrategy:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->$assertionsDisabled:Z

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "nil"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v3, "xsi"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "type"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;-><init>(Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

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
.method public addGlobalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getGlobalElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->addGlobalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v1

    invoke-virtual {p0, p2, v1, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineElementComments(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    return-object v0
.end method

.method public checkIfAttributeReferenceIsNeeded(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-direct {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->setGlobal(Z)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->setType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    invoke-virtual {p3, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->addGlobalAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;)V

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->setRef(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;)V

    :cond_0
    return-void
.end method

.method public checkIfElementReferenceIsNeeded(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-direct {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setGlobal(Z)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isNillable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setNillable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setNillable(Z)V

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->addGlobalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setRef(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    :cond_1
    return-void
.end method

.method public checkIfReferenceToGlobalTypeIsNeeded(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V
    .locals 0

    return-void
.end method

.method public combineAttributesOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v3

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineToMoreGeneralSimpleType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->addAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->setOptional(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public combineElementComments(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V
    .locals 2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getComment()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setComment(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getComment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public combineElementsOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;ZLorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getTopParticleForComplexOrMixedContent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getTopParticleForComplexOrMixedContent()I

    move-result v3

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    :goto_2
    if-nez v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    move v13, v9

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-virtual {v12}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v15

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v14

    invoke-virtual {v15, v14}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v10, v13

    goto :goto_4

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v10, v9, :cond_4

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMinOccurs(I)V

    const/4 v13, -0x1

    goto/16 :goto_9

    :cond_4
    move v13, v9

    :goto_5
    if-ge v13, v10, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    add-int/lit8 v15, v8, 0x1

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v11, v15

    goto :goto_7

    :cond_5
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    :goto_7
    if-ge v11, v8, :cond_b

    :goto_8
    if-ge v9, v10, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMinOccurs(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_8
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getMinOccurs()I

    move-result v7

    if-gtz v7, :cond_9

    invoke-virtual {v12, v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMinOccurs(I)V

    :cond_9
    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getMaxOccurs()I

    move-result v7

    const/4 v13, -0x1

    if-ne v7, v13, :cond_a

    invoke-virtual {v12, v13}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMaxOccurs(I)V

    :cond_a
    invoke-virtual {v12}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v9

    invoke-virtual {v0, v7, v9, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    invoke-virtual {v0, v12, v5}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineElementComments(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    add-int/lit8 v9, v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v13, -0x1

    const/4 v3, 0x1

    :goto_9
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_c
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_d

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMinOccurs(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_d
    if-eqz v3, :cond_12

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setTopParticleForComplexOrMixedContent(I)V

    const/4 v3, 0x0

    :goto_b
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    const/4 v6, 0x0

    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMinOccurs(I)V

    invoke-virtual {v7, v8}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMaxOccurs(I)V

    if-ne v7, v5, :cond_e

    :goto_d
    const/4 v6, 0x1

    goto :goto_e

    :cond_e
    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v8

    invoke-virtual {v0, v6, v8, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    invoke-virtual {v0, v7, v5}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineElementComments(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    goto :goto_d

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_10
    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->addElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMinOccurs(I)V

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMaxOccurs(I)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_11
    return-void

    :cond_12
    invoke-virtual {v1, v6}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setElements(Ljava/util/List;)V

    return-void
.end method

.method public combineSimpleTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Invalid arguments"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineToMoreGeneralSimpleType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->isUseEnumerations()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->addAllEnumerationsFrom(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->getUseEnumerations()I

    move-result p3

    if-le p2, p3, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->closeEnumeration()V

    :cond_2
    return-void
.end method

.method public combineToMoreGeneralSimpleType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 6

    invoke-virtual {p1, p2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/XmlShort;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    :cond_1
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    sget-object v1, Lorg/apache/xmlbeans/XmlInt;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    return-object p2

    :cond_4
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    return-object p1

    :cond_6
    sget-object v2, Lorg/apache/xmlbeans/XmlLong;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    return-object p2

    :cond_8
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    return-object p1

    :cond_a
    sget-object v3, Lorg/apache/xmlbeans/XmlInteger;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    return-object p2

    :cond_c
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v4, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    return-object p1

    :cond_e
    sget-object v4, Lorg/apache/xmlbeans/XmlFloat;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    sget-object v5, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    return-object p2

    :cond_10
    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    :cond_11
    return-object p1

    :cond_12
    sget-object p1, Lorg/apache/xmlbeans/XmlString;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public combineTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V
    .locals 6

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineSimpleTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_3
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v1, :cond_b

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineAttributesOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineElementsOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;ZLorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v5, 0x4

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v2, :cond_a

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v1, :cond_a

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v4, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-ne v0, v5, :cond_8

    :cond_7
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v1, :cond_9

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v2, :cond_9

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    if-ne v0, v5, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown content type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_0
    invoke-virtual {p1, v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineAttributesOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineElementsOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;ZLorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    return-void

    :cond_a
    :goto_1
    invoke-virtual {p1, v5}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineAttributesOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineElementsOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;ZLorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    return-void

    :cond_b
    :goto_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isComplexType()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getExtensionType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    :goto_3
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isComplexType()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getExtensionType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    goto :goto_4

    :cond_d
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    invoke-virtual {p0, p3, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineToMoreGeneralSimpleType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isComplexType()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p3, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->createNamedType(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setExtensionType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    goto :goto_5

    :cond_e
    invoke-virtual {p1, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    :goto_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineAttributesOfTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    return-void
.end method

.method public processAttribute(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "xc not on attribute"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processSimpleContentType(Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->createNamedType(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object p1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->setType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->checkIfAttributeReferenceIsNeeded(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)V

    return-object v0
.end method

.method public processAttributesInComplexType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Ljava/util/List;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isComplexType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->addAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public processDoc([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->isStart()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->isComment()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->isEnddoc()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processElement(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setGlobal(Z)V

    invoke-virtual {p0, v1, p3, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->addGlobalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public processElement(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    sget-boolean v2, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/XmlCursor;->isStart()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v9, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-direct {v9}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setGlobal(Z)V

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->createUnnamedType(I)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->intValue()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown TokenType."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v13

    sget-object v14, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v14}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v7, v2, v8}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processAttribute(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v14, v13}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v9, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setNillable(Z)V

    goto :goto_2

    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/XmlCursor;->getChars()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :pswitch_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2, v7, v8}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processElement(Lorg/apache/xmlbeans/XmlCursor;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    :pswitch_4
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x3

    invoke-static {v2, v13}, Lorg/apache/xmlbeans/impl/common/XmlWhitespace;->collapse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-nez v14, :cond_6

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v5, v14, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setComment(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v10, v13}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    :goto_4
    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processElementsInComplexType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Ljava/util/List;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    invoke-virtual {v6, v10, v12}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processAttributesInComplexType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Ljava/util/List;)V

    goto :goto_6

    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v7, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processSimpleContentType(Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->createNamedType(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setExtensionType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V

    invoke-virtual {v6, v10, v12}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processAttributesInComplexType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Ljava/util/List;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setContentType(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v7, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->processSimpleContentType(Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    sget-object v1, Lorg/apache/xmlbeans/XmlString;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v10, v2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->addEnumerationValue(Ljava/lang/String;Lorg/apache/xmlbeans/XmlCursor;)V

    :goto_5
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :goto_6
    invoke-virtual {v6, v9, v8, v7}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->checkIfReferenceToGlobalTypeIsNeeded(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public processElementsInComplexType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Ljava/util/List;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    if-nez v1, :cond_0

    :goto_1
    invoke-virtual {p0, v2, p3, p4, p5}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->checkIfElementReferenceIsNeeded(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->addElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p5}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineElementComments(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMinOccurs(I)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->setMaxOccurs(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p5}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineTypes(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->combineElementComments(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->setTopParticleForComplexOrMixedContent(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public processSimpleContentType(Ljava/lang/String;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->getSimpleContentTypes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    sget-object p1, Lorg/apache/xmlbeans/XmlString;->type:Lorg/apache/xmlbeans/SchemaType;

    :goto_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->getSimpleContentTypes()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexByte(Ljava/lang/CharSequence;)B

    sget-object p2, Lorg/apache/xmlbeans/XmlByte;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexShort(Ljava/lang/CharSequence;)S

    sget-object p2, Lorg/apache/xmlbeans/XmlShort;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :try_start_2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInt(Ljava/lang/CharSequence;)I

    sget-object p2, Lorg/apache/xmlbeans/XmlInt;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    :try_start_3
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexLong(Ljava/lang/CharSequence;)J

    sget-object p2, Lorg/apache/xmlbeans/XmlLong;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    :catch_3
    :try_start_4
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;

    sget-object p2, Lorg/apache/xmlbeans/XmlInteger;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object p1

    :catch_4
    :try_start_5
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/XsTypeConverter;->lexFloat(Ljava/lang/CharSequence;)F

    sget-object p2, Lorg/apache/xmlbeans/XmlFloat;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object p1

    :catch_5
    nop

    sget-object p2, Lorg/apache/xmlbeans/XmlDate;->type:Lorg/apache/xmlbeans/SchemaType;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-static {p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->resetToValid()V

    sget-object p2, Lorg/apache/xmlbeans/XmlDateTime;->type:Lorg/apache/xmlbeans/SchemaType;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-static {p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->resetToValid()V

    sget-object p2, Lorg/apache/xmlbeans/XmlTime;->type:Lorg/apache/xmlbeans/SchemaType;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-static {p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/JavaGDateHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDate;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->resetToValid()V

    sget-object p2, Lorg/apache/xmlbeans/XmlDuration;->type:Lorg/apache/xmlbeans/SchemaType;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-static {p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/JavaGDurationHolderEx;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/common/ValidationContext;)Lorg/apache/xmlbeans/GDuration;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->resetToValid()V

    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "www."

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_6
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/values/JavaUriHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->isValid()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p1, Lorg/apache/xmlbeans/XmlAnyURI;->type:Lorg/apache/xmlbeans/SchemaType;

    goto/16 :goto_1

    :cond_7
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->resetToValid()V

    :cond_8
    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-ne v0, p2, :cond_0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v0, p2, :cond_0

    new-instance p2, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$1;

    invoke-direct {p2, p0, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$1;-><init>(Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;Lorg/apache/xmlbeans/XmlCursor;)V

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-static {p1, p3, p2}, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/poi/javax/xml/namespace/QName;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->isValid()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lorg/apache/xmlbeans/XmlQName;->type:Lorg/apache/xmlbeans/SchemaType;

    goto/16 :goto_1

    :cond_9
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;->_validationContext:Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy$SCTValidationContext;->resetToValid()V

    goto/16 :goto_0

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string v0, "Unknown value for Inst2XsdOptions.getSimpleContentTypes() :"

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->getSimpleContentTypes()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
