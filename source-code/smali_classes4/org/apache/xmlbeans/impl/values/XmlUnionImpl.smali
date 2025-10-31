.class public Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlAnySimpleType;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$impl$values$XmlUnionImpl:Ljava/lang/Class;


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/SchemaType;

.field private _textvalue:Ljava/lang/String;

.field private _value:Lorg/apache/xmlbeans/XmlAnySimpleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->class$org$apache$xmlbeans$impl$values$XmlUnionImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.values.XmlUnionImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->class$org$apache$xmlbeans$impl$values$XmlUnionImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

    return-void
.end method

.method private static check(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3, p0}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v0
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

.method private static logical_overlap(Lorg/apache/xmlbeans/SchemaType;I)Z
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/16 v1, 0x2e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt p1, v1, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_4
    packed-switch p1, :pswitch_data_0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "missing case"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    return v2

    :pswitch_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eq p1, v2, :cond_7

    return v3

    :cond_7
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_8

    const/4 p1, 0x5

    if-eq p0, p1, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eq p1, v2, :cond_9

    return v3

    :cond_9
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    packed-switch p0, :pswitch_data_1

    return v3

    :pswitch_3
    return v2

    :pswitch_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eq p1, v2, :cond_a

    return v3

    :cond_a
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_b

    const/16 p1, 0x10

    if-eq p0, p1, :cond_b

    return v3

    :cond_b
    return v2

    :pswitch_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eq p1, v2, :cond_c

    return v3

    :cond_c
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p0

    const/16 p1, 0x12

    if-eq p0, p1, :cond_d

    const/16 p1, 0x14

    if-eq p0, p1, :cond_d

    const/16 p1, 0x15

    if-eq p0, p1, :cond_d

    packed-switch p0, :pswitch_data_2

    return v3

    :cond_d
    :pswitch_6
    return v2

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private set_primitive(ILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    sget-boolean v3, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/impl/values/TypeStore;)V

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_3
    :goto_3
    const/4 v5, 0x0

    :goto_4
    array-length v6, v2

    if-ge v5, v6, :cond_7

    aget-object v6, v2, v5

    invoke-static {v6, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->logical_overlap(Lorg/apache/xmlbeans/SchemaType;I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_6

    :try_start_1
    aget-object v6, v2, v5

    check-cast v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v6, p2, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->stringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_4
    return-void

    :catch_0
    move-exception v6

    :try_start_3
    sget-boolean v7, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unexpected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_6
    :goto_5
    add-int/2addr v5, v1

    goto :goto_4

    :cond_7
    if-nez v4, :cond_a

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_9
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    aput-object v2, v3, v1

    const-string p2, "cvc-datatype-valid.1.2.3"

    invoke-direct {p1, p2, v3}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    :goto_6
    if-eqz v3, :cond_b

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_b
    throw p1
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p1

    return p1
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getBooleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getByteArrayValue()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getByteArrayValue()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getByteValue()B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getByteValue()B

    move-result v0

    :goto_0
    return v0
.end method

.method public getCalendarValue()Ljava/util/Calendar;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getCalendarValue()Ljava/util/Calendar;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getDateValue()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getDoubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getFloatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getGDateValue()Lorg/apache/xmlbeans/GDate;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGDurationValue()Lorg/apache/xmlbeans/GDuration;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getListValue()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getListValue()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLongValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getLongValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getShortValue()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->getShortValue()S

    move-result v0

    :goto_0
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public get_wscanon_rule()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public instanceType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->instanceType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_text(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_ByteArray([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_Calendar(Ljava/util/Calendar;)V
    .locals 1

    const/16 v0, 0x31

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_Date(Ljava/util/Date;)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_GDate(Lorg/apache/xmlbeans/GDateSpecification;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/GDateSpecification;->getBuiltinTypeCode()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>()V

    throw p1
.end method

.method public set_GDuration(Lorg/apache/xmlbeans/GDurationSpecification;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_QName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_b64([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_boolean(Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_byte(B)V
    .locals 1

    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_double(D)V
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_enum(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_float(F)V
    .locals 1

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_hex([B)V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_int(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_list(Ljava/util/List;)V
    .locals 1

    const/16 v0, 0x33

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_long(J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    return-void
.end method

.method public set_short(S)V
    .locals 1

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    const/16 p1, 0x2f

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3, p1}, Lorg/apache/xmlbeans/SchemaType;->matchPatternFacet(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "string"

    aput-object v6, v5, v1

    aput-object p1, v5, v2

    aput-object v4, v5, v0

    const-string p1, "cvc-datatype-valid.1.1"

    invoke-direct {v3, p1, v5}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    sget-boolean v5, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;-><init>(Lorg/apache/xmlbeans/impl/values/TypeStore;)V

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->_validateOnSet()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_5
    :goto_4
    const/4 v7, 0x0

    :goto_5
    array-length v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v7, v8, :cond_8

    :try_start_1
    aget-object v8, v4, v7

    check-cast v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v8, p1, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->newValue(Ljava/lang/Object;Z)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v8, v9}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->check(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    iput-object v8, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_7

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_7
    return-void

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Troublesome union exception caused by unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :goto_6
    add-int/2addr v7, v2

    goto :goto_5

    :cond_8
    if-nez v6, :cond_b

    :cond_9
    if-eqz v5, :cond_a

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_a
    iput-object v3, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_textvalue:Ljava/lang/String;

    new-instance v3, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_schemaType:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object v4, v0, v2

    const-string p1, "cvc-datatype-valid.1.2.3"

    invoke-direct {v3, p1, v0}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    :goto_7
    if-eqz v5, :cond_c

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->pop()V

    :cond_c
    throw p1
.end method

.method public set_xmldate(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldatetime(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldecimal(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmldouble(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlduration(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlfloat(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgday(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgmonth(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgmonthday(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgyear(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmlgyearmonth(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public set_xmltime(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->set_primitive(ILjava/lang/Object;)V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "\' does not match any of the member types for "

    .line 4
    .line 5
    const-string v3, "\'"

    .line 6
    .line 7
    const-string v4, "union"

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    invoke-static {v3, p1, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p1, v1, v0

    .line 38
    .line 39
    invoke-interface {p2, v4, v1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    check-cast v5, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    .line 44
    .line 45
    invoke-virtual {v5, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->validate_simpleval(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    invoke-static {v3, p1, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p1, v1, v0

    .line 71
    .line 72
    invoke-interface {p2, v4, v1}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
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
.end method

.method public value_hash_code()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public xgetListValue()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlUnionImpl;->_value:Lorg/apache/xmlbeans/XmlAnySimpleType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SimpleValue;

    invoke-interface {v0}, Lorg/apache/xmlbeans/SimpleValue;->xgetListValue()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
