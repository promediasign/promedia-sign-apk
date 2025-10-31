.class public Lorg/apache/xmlbeans/impl/values/NamespaceContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/common/PrefixResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$impl$values$NamespaceContext:Ljava/lang/Class;

.field private static tl_namespaceContextStack:Ljava/lang/ThreadLocal;


# instance fields
.field private _code:I

.field private _obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->class$org$apache$xmlbeans$impl$values$NamespaceContext:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.values.NamespaceContext"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->class$org$apache$xmlbeans$impl$values$NamespaceContext:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->$assertionsDisabled:Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->tl_namespaceContextStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_code:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_code:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/common/PrefixResolver;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_code:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/values/TypeStore;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_code:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/xml/stream/StartElement;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_code:I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

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

.method public static getCurrent()Lorg/apache/xmlbeans/impl/common/PrefixResolver;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->getNamespaceContextStack()Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->current:Lorg/apache/xmlbeans/impl/values/NamespaceContext;

    return-object v0
.end method

.method private static getNamespaceContextStack()Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->tl_namespaceContextStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;-><init>(Lorg/apache/xmlbeans/impl/values/NamespaceContext$1;)V

    sget-object v1, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->tl_namespaceContextStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static pop()V
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->getNamespaceContextStack()Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->pop()V

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->tl_namespaceContextStack:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->getNamespaceContextStack()Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/values/NamespaceContext$NamespaceContextStack;->push(Lorg/apache/xmlbeans/impl/values/NamespaceContext;)V

    return-void
.end method


# virtual methods
.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_code:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    sget-boolean p1, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->$assertionsDisabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Improperly initialized NamespaceContext."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/impl/common/PrefixResolver;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/common/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/xml/stream/StartElement;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/xml/stream/StartElement;->getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    :cond_5
    instance-of v1, v0, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/common/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ATTR:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    if-ne v1, v2, :cond_7

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    :cond_7
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlCursor;->namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1

    :cond_8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_9
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xmlbeans/impl/values/TypeStore;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/common/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
