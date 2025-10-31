.class public Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;
.super Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;,
        Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;,
        Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;,
        Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final OPTION_ATTTRIBUTE_VALIDATION_COMPAT_MODE:Ljava/lang/String; = "OPTION_ATTTRIBUTE_VALIDATION_COMPAT_MODE"

.field private static final XSI_NIL:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final XSI_NSL:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final XSI_SL:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final XSI_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

.field static synthetic class$org$apache$xmlbeans$impl$validator$ValidatingXMLStreamReader:Ljava/lang/Class;


# instance fields
.field private final STATE_ATTBUFFERING:I

.field private final STATE_ERROR:I

.field private final STATE_FIRSTEVENT:I

.field private final STATE_VALIDATING:I

.field private final _attEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;

.field private _attNamesList:Ljava/util/List;

.field private _attValuesList:Ljava/util/List;

.field private _contentType:Lorg/apache/xmlbeans/SchemaType;

.field private _depth:I

.field private final _elemEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;

.field private _errorListener:Ljava/util/Collection;

.field private _options:Lorg/apache/xmlbeans/XmlOptions;

.field private _packTextXmlStreamReader:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;

.field private final _simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

.field private _state:I

.field private _stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field protected _validator:Lorg/apache/xmlbeans/impl/validator/Validator;

.field private _xsiType:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->class$org$apache$xmlbeans$impl$validator$ValidatingXMLStreamReader:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.validator.ValidatingXMLStreamReader"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->class$org$apache$xmlbeans$impl$validator$ValidatingXMLStreamReader:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->$assertionsDisabled:Z

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "type"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "nil"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_NIL:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "schemaLocation"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_SL:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "noNamespaceSchemaLocation"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_NSL:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->STATE_FIRSTEVENT:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->STATE_VALIDATING:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->STATE_ATTBUFFERING:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->STATE_ERROR:I

    new-instance v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;-><init>(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$1;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_elemEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;

    new-instance v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;-><init>(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$1;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;

    new-instance v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;-><init>(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$1;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    new-instance v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;-><init>(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$1;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_packTextXmlStreamReader:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;

    return-void
.end method

.method private addError(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_errorListener:Ljava/util/Collection;

    invoke-static {p1, v1, v0}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_errorListener:Ljava/util/Collection;

    invoke-static {p1}, Lorg/apache/xmlbeans/XmlError;->forMessage(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
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

.method private initValidator(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 7

    sget-boolean v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v6, Lorg/apache/xmlbeans/impl/validator/Validator;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_options:Lorg/apache/xmlbeans/XmlOptions;

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_errorListener:Ljava/util/Collection;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/validator/Validator;-><init>(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaField;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Ljava/util/Collection;)V

    iput-object v6, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    return-void
.end method

.method private isSpecialAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_NIL:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_SL:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_NSL:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private pushBufferedAttributes()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_xsiType:Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_contentType:Lorg/apache/xmlbeans/SchemaType;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_xsiType:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Specified type \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_contentType:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\' not compatible with found xsi:type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_xsiType:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->addError(Ljava/lang/String;)V

    iput v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_contentType:Lorg/apache/xmlbeans/SchemaType;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "A schema global attribute with name \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "\' could not be found in the current schema type loader."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->addError(Ljava/lang/String;)V

    iput v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    return-void

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->initValidator(Lorg/apache/xmlbeans/SchemaType;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->validate_attributes(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attValuesList:Ljava/util/List;

    iput v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    return-void

    :cond_5
    const-string v0, "No content type provided for validation of a content model."

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->addError(Ljava/lang/String;)V

    iput v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    return-void
.end method

.method private typeForGlobalElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Schema document type not found for element \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->addError(Ljava/lang/String;)V

    const/4 p1, 0x3

    iput p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    :cond_2
    return-object v0
.end method

.method private validate_event(I)V
    .locals 5

    iget v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_depth:I

    if-ltz v2, :cond_11

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown event type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getAttributeCount()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ATT event must be only at the beggining of the stream."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getAttributeCount()I

    move-result v0

    if-ge p1, v0, :cond_7

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->XSI_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {v1, v4}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_xsiType:Lorg/apache/xmlbeans/SchemaType;

    :cond_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attValuesList:Ljava/util/List;

    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->isSpecialAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attValuesList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    iput v3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    goto/16 :goto_3

    :pswitch_1
    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_depth:I

    goto/16 :goto_3

    :pswitch_2
    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->pushBufferedAttributes()V

    :cond_8
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_contentType:Lorg/apache/xmlbeans/SchemaType;

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->isWhiteSpace()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const-string p1, "No content type provided for validation of a content model."

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->addError(Ljava/lang/String;)V

    iput v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    goto :goto_3

    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->initValidator(Lorg/apache/xmlbeans/SchemaType;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    invoke-virtual {p1, v4, v0}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    :cond_b
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_elemEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;

    invoke-virtual {p1, v1, v0}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    goto :goto_3

    :pswitch_3
    sub-int/2addr v2, v4

    iput v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_depth:I

    if-ne v0, v3, :cond_c

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->pushBufferedAttributes()V

    :cond_c
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_elemEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;

    invoke-virtual {p1, v3, v0}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    goto :goto_3

    :pswitch_4
    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_depth:I

    if-ne v0, v3, :cond_d

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->pushBufferedAttributes()V

    :cond_d
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    if-nez p1, :cond_10

    new-instance p1, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_contentType:Lorg/apache/xmlbeans/SchemaType;

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->typeForGlobalElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_contentType:Lorg/apache/xmlbeans/SchemaType;

    :cond_e
    iget p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    if-ne p1, v1, :cond_f

    goto :goto_3

    :cond_f
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_contentType:Lorg/apache/xmlbeans/SchemaType;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->initValidator(Lorg/apache/xmlbeans/SchemaType;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_elemEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;

    invoke-virtual {p1, v4, v0}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    :cond_10
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_elemEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;

    invoke-virtual {p1, v4, v0}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getAttributeCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->validate_attributes(I)V

    :goto_3
    :pswitch_5
    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ValidatingXMLStreamReader cannot go further than the subtree is was initialized on."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public init(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;ZLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Ljava/util/Collection;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_packTextXmlStreamReader:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;->init(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_packTextXmlStreamReader:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->setParent(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_contentType:Lorg/apache/xmlbeans/SchemaType;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iput-object p5, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_options:Lorg/apache/xmlbeans/XmlOptions;

    iput-object p6, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_errorListener:Ljava/util/Collection;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_elemEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_packTextXmlStreamReader:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;

    invoke-static {p1, p3}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;->access$400(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$ElementEventImpl;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_packTextXmlStreamReader:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;

    invoke-static {p1, p3}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->access$500(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_packTextXmlStreamReader:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$PackTextXmlStreamReader;

    invoke-static {p1, p3}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;->access$600(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    const/4 p3, 0x0

    iput p3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    iget-object p4, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->clear()V

    iget-object p4, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attValuesList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_xsiType:Lorg/apache/xmlbeans/SchemaType;

    iput p3, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_depth:I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->getEventType()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->validate_event(I)V

    :cond_1
    return-void
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/validator/Validator;->isValid()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->next()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->validate_event(I)V

    return v0
.end method

.method public validate_attribute(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attNamesList:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->access$700(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;I)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->isSpecialAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$AttributeEventImpl;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;->access$802(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/namespace/QName;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_attValuesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;->access$902(Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    return-void
.end method

.method public validate_attributes(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->validate_attribute(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_options:Lorg/apache/xmlbeans/XmlOptions;

    if-eqz p1, :cond_1

    const-string v0, "OPTION_ATTTRIBUTE_VALIDATION_COMPAT_MODE"

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_validator:Lorg/apache/xmlbeans/impl/validator/Validator;

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->_simpleEvent:Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader$SimpleEventImpl;

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/validator/Validator;->nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V

    :goto_1
    return-void
.end method
