.class public Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$impl$inst2xsd$util$TypeSystemHolder:Ljava/lang/Class;


# instance fields
.field _globalAttributes:Ljava/util/Map;

.field _globalElements:Ljava/util/Map;

.field _globalTypes:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->class$org$apache$xmlbeans$impl$inst2xsd$util$TypeSystemHolder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.inst2xsd.util.TypeSystemHolder"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->class$org$apache$xmlbeans$impl$inst2xsd$util$TypeSystemHolder:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalElements:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalAttributes:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalTypes:Ljava/util/Map;

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

.method private fillUpAttributesInComplexTypesComplexContent(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->addNewAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpLocalAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillUpAttributesInComplexTypesSimpleContent(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->addNewAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpLocalAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static fillUpElementDocumentation(Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;->addNewAnnotation()Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;->addNewDocumentation()Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/xmlbeans/XmlString$Factory;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlString;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    :cond_0
    return-void
.end method

.method private fillUpEnumeration(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;)V
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isEnumeration()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isComplexType()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Enumerations must be on simple types only."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->addNewSimpleType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalSimpleType;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleType;->addNewRestriction()Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->setBase(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isQNameEnumeration()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationQNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationQNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlQName$Factory;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlQName;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->addNewEnumeration()Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/XmlCursor;->prefixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    new-instance v3, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0, v4}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/xmlbeans/XmlQName$Factory;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlQName;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->setValue(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getEnumerationValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/RestrictionDocument$Restriction;->addNewEnumeration()Lorg/apache/xmlbeans/impl/xb/xsdschema/NoFixedFacet;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlString$Factory;->newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlString;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Facet;->setValue(Lorg/apache/xmlbeans/XmlAnySimpleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private fillUpGlobalAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getTopLevelSchemaElement(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewAttribute()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelAttribute;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->setType(Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private fillUpGlobalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getTopLevelSchemaElement(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewElement()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelElement;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isNillable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isNillable()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->setNillable(Z)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpElementDocumentation(Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpTypeOnElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;Ljava/lang/String;)V

    return-void
.end method

.method private fillUpGlobalType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getTopLevelSchemaElement(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->addNewComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/TopLevelComplexType;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpContentForComplexType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;Ljava/lang/String;)V

    return-void
.end method

.method private fillUpTypeOnElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean p3, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Global type must have a name."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->setType(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isEnumeration()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpEnumeration(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;)V

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->addNewComplexType()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalComplexType;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpContentForComplexType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static getSchemaDocumentForTNS(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Factory;->newInstance()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static getTopLevelSchemaElement(Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->addNewSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v0

    const-string p0, "unqualified"

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->setAttributeFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V

    const-string p0, "qualified"

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->setElementFormDefault(Lorg/apache/xmlbeans/impl/xb/xsdschema/FormChoice$Enum;)V

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->setTargetNamespace(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addGlobalAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->isRef()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addGlobalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isRef()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalElements:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addGlobalType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "type must be a global type before being added."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public fillUpContentForComplexType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->addNewSimpleContent()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;

    move-result-object p2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getExtensionType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getExtensionType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Extension type must exist and be named for a COMPLEX_TYPE_SIMPLE_CONTENT"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleContentDocument$SimpleContent;->addNewExtension()Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getExtensionType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ExtensionType;->setBase(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpAttributesInComplexTypesSimpleContent(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleExtensionType;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    invoke-interface {p2, v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->setMixed(Z)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getContentType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getTopParticleForComplexOrMixedContent()I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->addNewSequence()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getTopParticleForComplexOrMixedContent()I

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;->addNewChoice()Lorg/apache/xmlbeans/impl/xb/xsdschema/ExplicitGroup;

    move-result-object v0

    const-string v1, "unbounded"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;->setMaxOccurs(Ljava/lang/Object;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;->setMinOccurs(Ljava/math/BigInteger;)V

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    sget-boolean v3, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isGlobal()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Group;->addNewElement()Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalElement;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpLocalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalElement;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpAttributesInComplexTypesComplexContent(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/ComplexType;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown particle type in complex and mixed content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fillUpLocalAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->isRef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getRef()Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->setRef(Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_1

    :cond_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p3, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->setType(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;->isOptional()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use;->OPTIONAL:Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute;->setUse(Lorg/apache/xmlbeans/impl/xb/xsdschema/Attribute$Use$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public fillUpLocalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/xb/xsdschema/LocalElement;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpElementDocumentation(Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isRef()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpTypeOnElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->setRef(Lorg/apache/poi/javax/xml/namespace/QName;)V

    sget-boolean p3, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->$assertionsDisabled:Z

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isNillable()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getMaxOccurs()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_5

    const-string p3, "unbounded"

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->setMaxOccurs(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getMinOccurs()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_6

    new-instance p3, Ljava/math/BigInteger;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getMinOccurs()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->setMinOccurs(Ljava/math/BigInteger;)V

    :cond_6
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isNillable()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isNillable()Z

    move-result p1

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Element;->setNillable(Z)V

    :cond_7
    return-void
.end method

.method public getGlobalAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    return-object p1
.end method

.method public getGlobalAttributes()[Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    return-object v0
.end method

.method public getGlobalElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalElements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    return-object p1
.end method

.method public getGlobalElements()[Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    return-object v0
.end method

.method public getGlobalType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    return-object p1
.end method

.method public getGlobalTypes()[Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    return-object v0
.end method

.method public getSchemaDocuments()[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;
    .locals 6

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalElements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getSchemaDocumentForTNS(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalElements:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    invoke-direct {p0, v2, v4, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpGlobalElement(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getSchemaDocumentForTNS(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;

    invoke-direct {p0, v2, v4, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpGlobalAttribute(Lorg/apache/xmlbeans/impl/inst2xsd/util/Attribute;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getSchemaDocumentForTNS(Ljava/util/Map;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalTypes:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    invoke-direct {p0, v2, v4, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->fillUpGlobalType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    check-cast v0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TypeSystemHolder{\n\n_globalElements="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalElements:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n\n_globalAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n\n_globalTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->_globalTypes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
