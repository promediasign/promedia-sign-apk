.class public Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$impl$values$XmlComplexContentImpl:Ljava/lang/Class;


# instance fields
.field private _schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->class$org$apache$xmlbeans$impl$values$XmlComplexContentImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.values.XmlComplexContentImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->class$org$apache$xmlbeans$impl$values$XmlComplexContentImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->initComplexType(ZZ)V

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
.method public arraySetterHelper([BLorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 1
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 2
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([BLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 4
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 5
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([DLorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 7
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 8
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([DLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 10
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 11
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([FLorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 13
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 14
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([FLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 16
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 17
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([ILorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 19
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 20
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([ILorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 22
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 23
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([JLorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 25
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 26
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([JLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 28
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 29
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 31
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 32
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 34
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 35
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigDecimal;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 37
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 38
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/math/BigDecimal;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigDecimal;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 40
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 41
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/math/BigDecimal;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigInteger;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 43
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 44
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/math/BigInteger;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/math/BigInteger;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 46
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 47
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/math/BigInteger;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/Calendar;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 49
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 50
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/Calendar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/Calendar;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 52
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 53
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/Calendar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/Date;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 55
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 56
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/Date;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/Date;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 58
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 59
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/Date;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/List;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 61
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 62
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Ljava/util/List;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 64
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 65
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 67
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 68
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/poi/javax/xml/namespace/QName;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 70
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 71
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/poi/javax/xml/namespace/QName;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDate;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 73
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 74
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/GDateSpecification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDate;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 76
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 77
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/GDateSpecification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDuration;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 79
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 80
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/GDurationSpecification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/GDuration;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 82
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 83
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/GDurationSpecification;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/StringEnumAbstractBase;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 85
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 86
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/StringEnumAbstractBase;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 88
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 89
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-interface {v6, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    if-ne v4, p0, :cond_2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_8

    invoke-interface {v6, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    aget-object v4, p1, v2

    if-ne v3, v4, :cond_8

    :goto_3
    if-ge v0, v2, :cond_4

    invoke-interface {v6, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v2

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_7

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    if-ne v3, p0, :cond_6

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v6, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    aget-object v3, p1, v0

    if-ne v2, v3, :cond_7

    goto :goto_6

    :cond_6
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v6, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :goto_6
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v6, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v7, v0

    move v9, v7

    move v8, v1

    move v1, v2

    goto :goto_7

    :cond_8
    move v9, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7
    move v0, v9

    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_9

    invoke-interface {v6, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    move v4, v1

    :goto_9
    sub-int v0, v9, v7

    add-int/2addr v0, v8

    if-le v4, v0, :cond_a

    const/4 v1, 0x1

    const/4 v5, -0x1

    move v0, v4

    move-object v2, v6

    move-object v3, p2

    .line 91
    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v4

    goto :goto_9

    :cond_a
    :goto_a
    if-ge v7, v9, :cond_c

    if-lt v8, v4, :cond_b

    .line 92
    invoke-interface {v6, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    goto :goto_b

    :cond_b
    invoke-interface {v6, p2, v8}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    :goto_b
    check-cast v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v1, p1, v7

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_c
    return-void

    :cond_d
    :goto_c
    invoke-interface {v6, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result p1

    :goto_d
    if-lez p1, :cond_e

    invoke-interface {v6, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    :cond_e
    return-void
.end method

.method public arraySetterHelper([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-interface {v6, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    if-ne v4, p0, :cond_2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_8

    invoke-interface {v6, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v3

    aget-object v4, p1, v2

    if-ne v3, v4, :cond_8

    :goto_3
    if-ge v0, v2, :cond_4

    invoke-interface {v6, p3, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/xmlbeans/QNameSet;Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v2

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_7

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    if-ne v3, p0, :cond_6

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v6, p3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    aget-object v3, p1, v0

    if-ne v2, v3, :cond_7

    goto :goto_6

    :cond_6
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-interface {v6, p3, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->insert_element_user(Lorg/apache/xmlbeans/QNameSet;Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :goto_6
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v6, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v7, v0

    move v9, v7

    move v8, v1

    move v1, v2

    goto :goto_7

    :cond_8
    move v9, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7
    move v0, v9

    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_9

    invoke-interface {v6, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    move v4, v1

    :goto_9
    sub-int v0, v9, v7

    add-int/2addr v0, v8

    if-le v4, v0, :cond_a

    const/4 v1, 0x1

    const/4 v5, -0x1

    move v0, v4

    move-object v2, v6

    move-object v3, p3

    .line 94
    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v4

    goto :goto_9

    :cond_a
    :goto_a
    if-ge v7, v9, :cond_c

    if-lt v8, v4, :cond_b

    .line 95
    invoke-interface {v6, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    goto :goto_b

    :cond_b
    invoke-interface {v6, p3, v8}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    :goto_b
    check-cast v0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v1, p1, v7

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_c
    return-void

    :cond_d
    :goto_c
    invoke-interface {v6, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result p1

    :goto_d
    if-lez p1, :cond_e

    invoke-interface {v6, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->remove_element(Lorg/apache/xmlbeans/QNameSet;I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    :cond_e
    return-void
.end method

.method public arraySetterHelper([SLorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 97
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 98
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-short v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([SLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 100
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 101
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-short v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([ZLorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 103
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 104
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-boolean v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([ZLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 106
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 107
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-boolean v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([[BLorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 109
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 110
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper([[BLorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 112
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 113
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public arraySetterHelper(ILorg/apache/poi/javax/xml/namespace/QName;)[Lorg/apache/xmlbeans/SimpleValue;
    .locals 8

    new-array v0, p1, [Lorg/apache/xmlbeans/SimpleValue;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v7

    invoke-interface {v7, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v1

    move v5, v1

    :goto_0
    if-le v5, p1, :cond_0

    const/4 v2, 0x1

    const/4 v6, -0x1

    move v1, v5

    move-object v3, v7

    move-object v4, p2

    .line 115
    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    if-lt v1, v5, :cond_1

    .line 116
    invoke-interface {v7, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-interface {v7, p2, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_2
    check-cast v2, Lorg/apache/xmlbeans/SimpleValue;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public arraySetterHelper(ILorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)[Lorg/apache/xmlbeans/SimpleValue;
    .locals 8

    new-array v0, p1, [Lorg/apache/xmlbeans/SimpleValue;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v7

    invoke-interface {v7, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v1

    move v5, v1

    :goto_0
    if-le v5, p1, :cond_0

    const/4 v2, 0x1

    const/4 v6, -0x1

    move v1, v5

    move-object v3, v7

    move-object v4, p3

    .line 118
    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    if-lt v1, v5, :cond_1

    .line 119
    invoke-interface {v7, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-interface {v7, p3, v1}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_2
    check-cast v2, Lorg/apache/xmlbeans/SimpleValue;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public get_default_attribute_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_default_attribute_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get_default_element_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get_elementflags(Lorg/apache/poi/javax/xml/namespace/QName;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaType;->getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    :goto_1
    or-int/2addr v1, v3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :goto_2
    or-int p1, v1, v0

    return p1

    :cond_5
    :goto_3
    const/4 p1, -0x1

    return p1
.end method

.method public is_child_element_order_sensitive()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isOrderSensitive()Z

    move-result v0

    return v0
.end method

.method public new_visitor()Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;-><init>(Lorg/apache/xmlbeans/SchemaParticle;)V

    return-object v0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object v0
.end method

.method public final set_String(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type does not allow for textual content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->set_String(Ljava/lang/String;)V

    return-void
.end method

.method public set_nil()V
    .locals 0

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 1

    sget-boolean p1, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->$assertionsDisabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getContentType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->_schemaType:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isNoType()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public unionArraySetterHelper([Ljava/lang/Object;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p2

    .line 1
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->a(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/poi/javax/xml/namespace/QName;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 2
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objectSet(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public unionArraySetterHelper([Ljava/lang/Object;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v8

    invoke-interface {v8, p3}, Lorg/apache/xmlbeans/impl/values/TypeStore;->count_elements(Lorg/apache/xmlbeans/QNameSet;)I

    move-result v2

    move v6, v2

    :goto_1
    if-le v6, v1, :cond_1

    const/4 v3, 0x1

    const/4 v7, -0x1

    move v2, v6

    move-object v4, v8

    move-object v5, p3

    .line 4
    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/main/a;->b(IILorg/apache/xmlbeans/impl/values/TypeStore;Lorg/apache/xmlbeans/QNameSet;II)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v1, :cond_3

    if-lt v0, v6, :cond_2

    .line 5
    invoke-interface {v8, p2}, Lorg/apache/xmlbeans/impl/values/TypeStore;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    goto :goto_3

    :cond_2
    invoke-interface {v8, p3, v0}, Lorg/apache/xmlbeans/impl/values/TypeStore;->find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v2

    :goto_3
    check-cast v2, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->objectSet(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public update_from_complex_content()V
    .locals 0

    return-void
.end method

.method public value_hash_code()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Complex types cannot be used as hash keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
