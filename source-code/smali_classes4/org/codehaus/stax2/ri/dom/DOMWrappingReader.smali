.class public abstract Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/stax2/XMLStreamReader2;
.implements Lorg/codehaus/stax2/DTDInfo;
.implements Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamConstants;


# instance fields
.field protected _attrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected _cfgInternNames:Z

.field protected _cfgInternNsURIs:Z

.field protected final _cfgNsAware:Z

.field protected _coalescedText:Ljava/lang/String;

.field protected final _coalescing:Z

.field protected _currEvent:I

.field protected _currNode:Lorg/w3c/dom/Node;

.field protected _depth:I

.field protected _nsDeclList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _rootNode:Lorg/w3c/dom/Node;

.field protected final _systemId:Ljava/lang/String;

.field protected _textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/dom/DOMSource;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgInternNames:Z

    iput-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgInternNsURIs:Z

    const/4 v1, 0x7

    iput v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    iput v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_depth:I

    new-instance v0, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    invoke-direct {v0}, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;-><init>()V

    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean p2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgNsAware:Z

    iput-boolean p3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_coalescing:Z

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_systemId:Ljava/lang/String;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can not create an XMLStreamReader for a DOM node of type "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_rootNode:Lorg/w3c/dom/Node;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can not pass null Node for constructing a DOM-based XMLStreamReader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private _calcNsAndAttrLists(Z)V
    .locals 10

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    return-void

    :cond_1
    iget-boolean v2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgNsAware:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    :goto_1
    if-ge v3, v1, :cond_a

    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xmlns"

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz p1, :cond_9

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    sub-int v7, v1, v3

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_6
    :goto_3
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz p1, :cond_9

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    sub-int v7, v1, v3

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_2

    :cond_7
    move-object v7, v2

    :goto_4
    if-nez v5, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    sub-int v8, v1, v3

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_8
    invoke-virtual {p0, v7}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internNsURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    if-nez v4, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_b
    iput-object v4, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    if-nez v5, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :cond_c
    iput-object v5, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    return-void
.end method

.method private _constructQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internNsURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private _safeGetLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private handleIllegalAttrIndex(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 2
    .line 3
    check-cast v0, Lorg/w3c/dom/Element;

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "Illegal attribute index "

    .line 14
    .line 15
    const-string v3, "; element <"

    .line 16
    .line 17
    invoke-static {p1, v2, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "> has "

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const-string v0, "no"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    const-string v1, " attributes"

    .line 43
    .line 44
    invoke-static {v0, v1, p1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
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

.method private handleIllegalNsIndex(I)V
    .locals 2

    .line 1
    const-string v0, "Illegal namespace declaration index "

    .line 2
    .line 3
    const-string v1, " (has "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getNamespaceCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " ns declarations)"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
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
.method public _internName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgInternNames:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public _internNsURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgInternNsURIs:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public coalesceText(I)V
    .locals 3

    iget-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    invoke-virtual {p1}, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->reset()V

    iget-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->append(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    invoke-virtual {p1}, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->get()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_coalescedText:Ljava/lang/String;

    iput v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    return-void
.end method

.method public findErrorDesc(II)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p2}, Lorg/codehaus/stax2/ri/Stax2Util;->eventTypeDesc(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "Current event "

    .line 6
    .line 7
    const-string v1, "Current event ("

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string p2, "Internal error (unrecognized error type: "

    .line 13
    .line 14
    const-string v0, ")"

    .line 15
    .line 16
    invoke-static {p1, p2, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :pswitch_0
    const-string p1, ") has no local name"

    .line 22
    .line 23
    invoke-static {v1, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_1
    const-string p1, " not START_ELEMENT, END_ELEMENT, CHARACTERS or CDATA"

    .line 29
    .line 30
    invoke-static {v1, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_2
    const-string p1, ", needs to be one of CHARACTERS, CDATA, SPACE or COMMENT"

    .line 36
    .line 37
    invoke-static {v0, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_3
    const-string p1, ") not a textual event"

    .line 43
    .line 44
    invoke-static {v1, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_4
    const-string p1, ") needs to be PROCESSING_INSTRUCTION"

    .line 50
    .line 51
    invoke-static {v1, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :pswitch_5
    const-string p1, ", needs to be START_ELEMENT or END_ELEMENT"

    .line 57
    .line 58
    invoke-static {v0, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :pswitch_6
    const-string p1, ", needs to be START_ELEMENT"

    .line 64
    .line 65
    invoke-static {v0, p2, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public getAttributeCount()I
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_safeGetLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalAttrIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeName(I)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_safeGetLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_constructQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalAttrIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internNsURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalAttrIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalAttrIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "CDATA"

    return-object p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalAttrIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalAttrIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object p1, v1

    :cond_1
    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Attr;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLocation()Lorg/codehaus/stax2/XMLStreamLocation2;
    .locals 1

    sget-object v0, Lorg/codehaus/stax2/XMLStreamLocation2;->NOT_AVAILABLE:Lorg/codehaus/stax2/XMLStreamLocation2;

    return-object v0
.end method

.method public getDTDInfo()Lorg/codehaus/stax2/DTDInfo;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getDTDInternalSubset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDPublicId()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/DocumentType;

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDRootName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/DocumentType;

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDSystemId()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/DocumentType;

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportParseProblem(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_coalescing:Z

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x5

    .line 14
    const/4 v5, 0x2

    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->next()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-ne v6, v5, :cond_3

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    :cond_2
    return-object v0

    .line 29
    :cond_3
    if-eq v6, v4, :cond_1

    .line 30
    .line 31
    if-ne v6, v3, :cond_4

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    shl-int v6, v1, v6

    .line 35
    .line 36
    and-int/lit16 v6, v6, 0x1250

    .line 37
    .line 38
    if-nez v6, :cond_5

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportParseProblem(I)V

    .line 41
    .line 42
    .line 43
    :cond_5
    if-nez v0, :cond_6

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getText()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_6
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getText()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_7
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->reset()V

    .line 69
    .line 70
    .line 71
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->next()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v5, :cond_9

    .line 76
    .line 77
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->get()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :cond_9
    if-eq v0, v4, :cond_8

    .line 85
    .line 86
    if-ne v0, v3, :cond_a

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_a
    shl-int v0, v1, v0

    .line 90
    .line 91
    and-int/lit16 v0, v0, 0x1250

    .line 92
    .line 93
    if-nez v0, :cond_b

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportParseProblem(I)V

    .line 96
    .line 97
    .line 98
    :cond_b
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_textBuffer:Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;

    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getText()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v0, v6}, Lorg/codehaus/stax2/ri/Stax2Util$TextBuffer;->append(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1
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
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getCurrentLocation()Lorg/codehaus/stax2/XMLStreamLocation2;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_safeGetLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocation()Lorg/apache/poi/javax/xml/stream/Location;
    .locals 1

    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getStartLocation()Lorg/codehaus/stax2/XMLStreamLocation2;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_safeGetLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_constructQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 0

    return-object p0
.end method

.method public getNamespaceCount()I
    .locals 4

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgNsAware:Z

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_3
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgNsAware:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalNsIndex(I)V

    :cond_1
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_3
    if-ltz p1, :cond_4

    add-int v0, p1, p1

    iget-object v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalNsIndex(I)V

    :cond_5
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    add-int/2addr p1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internNsURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 3

    .line 2
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgNsAware:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalNsIndex(I)V

    :cond_1
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_calcNsAndAttrLists(Z)V

    :cond_3
    if-ltz p1, :cond_4

    add-int v0, p1, p1

    iget-object v2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalNsIndex(I)V

    :cond_5
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    add-int/2addr p1, p1

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 3
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xmlns"

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    if-nez v2, :cond_4

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNonTransientNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 1

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyNamespaceContext;->getInstance()Lorg/codehaus/stax2/ri/EmptyNamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_internName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xmlns"

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyIterator;->getInstance()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/codehaus/stax2/ri/SingletonIterator;->create(Ljava/lang/Object;)Lorg/codehaus/stax2/ri/SingletonIterator;

    move-result-object p1

    return-object p1
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartLocation()Lorg/codehaus/stax2/XMLStreamLocation2;
    .locals 1

    sget-object v0, Lorg/codehaus/stax2/XMLStreamLocation2;->NOT_AVAILABLE:Lorg/codehaus/stax2/XMLStreamLocation2;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_coalescedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    shl-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1a70

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    iget v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    shl-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1070

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p4, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p4

    :cond_1
    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return p4
.end method

.method public getTextCharacters()[C
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    shl-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1070

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    shl-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x1070

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasName()Z
    .locals 3

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0x1a70

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAttributeSpecified(I)Z
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->reportWrongState(I)V

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->handleIllegalAttrIndex(I)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result p1

    return p1
.end method

.method public isCharacters()Z
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndElement()Z
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandalone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStartElement()Z
    .locals 2

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteSpace()Z
    .locals 7

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public next()I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_coalescedText:Ljava/lang/String;

    .line 3
    .line 4
    iget v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 5
    .line 6
    const-string v2, "\'"

    .line 7
    .line 8
    const/16 v3, 0xb

    .line 9
    .line 10
    const/16 v4, 0x9

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    if-eq v1, v6, :cond_b

    .line 15
    .line 16
    const/16 v7, 0x8

    .line 17
    .line 18
    if-eq v1, v5, :cond_5

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    if-eq v1, v0, :cond_1

    .line 22
    .line 23
    if-eq v1, v7, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 27
    .line 28
    const-string v1, "Can not call next() after receiving END_DOCUMENT"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 35
    .line 36
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eq v0, v6, :cond_4

    .line 41
    .line 42
    if-eq v0, v4, :cond_3

    .line 43
    .line 44
    if-ne v0, v3, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "Internal error: unexpected DOM root node type "

    .line 52
    .line 53
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 57
    .line 58
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, " for node \'"

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 87
    .line 88
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 93
    .line 94
    if-nez v0, :cond_d

    .line 95
    .line 96
    iput v7, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 97
    .line 98
    return v7

    .line 99
    :cond_4
    iput v6, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 100
    .line 101
    return v6

    .line 102
    :cond_5
    iget v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_depth:I

    .line 103
    .line 104
    sub-int/2addr v1, v6

    .line 105
    iput v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_depth:I

    .line 106
    .line 107
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    .line 108
    .line 109
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    .line 110
    .line 111
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 112
    .line 113
    iget-object v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_rootNode:Lorg/w3c/dom/Node;

    .line 114
    .line 115
    if-ne v0, v1, :cond_6

    .line 116
    .line 117
    iput v7, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 118
    .line 119
    return v7

    .line 120
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 121
    .line 122
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 132
    .line 133
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 138
    .line 139
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-ne v0, v6, :cond_8

    .line 144
    .line 145
    iput v5, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 146
    .line 147
    return v5

    .line 148
    :cond_8
    iget-object v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 149
    .line 150
    iget-object v2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_rootNode:Lorg/w3c/dom/Node;

    .line 151
    .line 152
    if-ne v1, v2, :cond_a

    .line 153
    .line 154
    if-eq v0, v4, :cond_9

    .line 155
    .line 156
    if-ne v0, v3, :cond_a

    .line 157
    .line 158
    :cond_9
    iput v7, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 159
    .line 160
    return v7

    .line 161
    :cond_a
    new-instance v1, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    .line 162
    .line 163
    const-string v2, "Internal error: non-element parent node ("

    .line 164
    .line 165
    const-string v3, ") that is not the initial root node"

    .line 166
    .line 167
    invoke-static {v0, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {v1, v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v1

    .line 175
    :cond_b
    iget v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_depth:I

    .line 176
    .line 177
    add-int/2addr v1, v6

    .line 178
    iput v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_depth:I

    .line 179
    .line 180
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_attrList:Ljava/util/List;

    .line 181
    .line 182
    iget-object v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 183
    .line 184
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-nez v1, :cond_c

    .line 189
    .line 190
    iput v5, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 191
    .line 192
    return v5

    .line 193
    :cond_c
    iput-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_nsDeclList:Ljava/util/List;

    .line 194
    .line 195
    iput-object v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 196
    .line 197
    :cond_d
    :goto_2
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 198
    .line 199
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    packed-switch v0, :pswitch_data_0

    .line 204
    .line 205
    .line 206
    :pswitch_0
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    .line 207
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v3, "Internal error: unrecognized DOM node type "

    .line 211
    .line 212
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 216
    .line 217
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v3, ", for node \'"

    .line 225
    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 230
    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :pswitch_1
    iput v3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :pswitch_2
    const/4 v0, 0x5

    .line 249
    :goto_3
    iput v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :pswitch_3
    const/4 v0, 0x3

    .line 253
    goto :goto_3

    .line 254
    :pswitch_4
    iput v4, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :pswitch_5
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_coalescing:Z

    .line 258
    .line 259
    const/16 v1, 0xc

    .line 260
    .line 261
    if-eqz v0, :cond_e

    .line 262
    .line 263
    :goto_4
    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->coalesceText(I)V

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_e
    iput v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :pswitch_6
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_coalescing:Z

    .line 271
    .line 272
    const/4 v1, 0x4

    .line 273
    if-eqz v0, :cond_e

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :pswitch_7
    new-instance v0, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    .line 277
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v3, "Internal error: unexpected DOM node type "

    .line 281
    .line 282
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 286
    .line 287
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v3, " (attr/entity/notation?), for node \'"

    .line 295
    .line 296
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-object v3, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currNode:Lorg/w3c/dom/Node;

    .line 300
    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :pswitch_8
    iput v6, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 316
    .line 317
    :goto_5
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 318
    .line 319
    return v0

    .line 320
    nop

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
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
.end method

.method public nextTag()I
    .locals 3

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->next()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    return v0

    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Received non-all-whitespace CHARACTERS or CDATA event in nextTag()."

    invoke-virtual {p0, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/codehaus/stax2/ri/Stax2Util;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instead of START_ELEMENT or END_ELEMENT."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reportParseProblem(I)V
    .locals 1

    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->findErrorDesc(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;)V

    return-void
.end method

.method public reportWrongState(I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->findErrorDesc(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x4

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x6

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Required type "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lorg/codehaus/stax2/ri/Stax2Util;->eventTypeDesc(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ", current type "

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lorg/codehaus/stax2/ri/Stax2Util;->eventTypeDesc(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    const-string p1, ")"

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    const/4 v2, 0x1

    .line 55
    const-string v3, "\'."

    .line 56
    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    if-eq v0, v2, :cond_3

    .line 60
    .line 61
    if-eq v0, v1, :cond_3

    .line 62
    .line 63
    const/16 v4, 0x9

    .line 64
    .line 65
    if-eq v0, v4, :cond_3

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "Required a non-null local name, but current token not a START_ELEMENT, END_ELEMENT or ENTITY_REFERENCE (was "

    .line 70
    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v5, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_currEvent:I

    .line 75
    .line 76
    invoke-static {v5}, Lorg/codehaus/stax2/ri/Stax2Util;->eventTypeDesc(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {p0, v4}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getLocalName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-eq v4, p3, :cond_4

    .line 98
    .line 99
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_4

    .line 104
    .line 105
    const-string v5, "Required local name \'"

    .line 106
    .line 107
    const-string v6, "\'; current local name \'"

    .line 108
    .line 109
    invoke-static {v5, p3, v6, v4, v3}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p0, p3}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    if-eqz p2, :cond_7

    .line 117
    .line 118
    if-eq v0, v2, :cond_5

    .line 119
    .line 120
    if-eq v0, v1, :cond_5

    .line 121
    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "Required non-null NS URI, but current token not a START_ELEMENT or END_ELEMENT (was "

    .line 125
    .line 126
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lorg/codehaus/stax2/ri/Stax2Util;->eventTypeDesc(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getNamespaceURI()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    if-nez p3, :cond_6

    .line 155
    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-lez p2, :cond_7

    .line 163
    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string p3, "Required empty namespace, instead have \'"

    .line 167
    .line 168
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    :goto_2
    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_6
    if-eq p2, p1, :cond_7

    .line 186
    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    if-nez p3, :cond_7

    .line 192
    .line 193
    const-string p3, "Required namespace \'"

    .line 194
    .line 195
    const-string v0, "\'; have \'"

    .line 196
    .line 197
    invoke-static {p3, p2, v0, p1, v3}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    goto :goto_2

    .line 202
    :cond_7
    :goto_3
    return-void
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
.end method

.method public setInternNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgInternNames:Z

    return-void
.end method

.method public setInternNsURIs(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->_cfgInternNsURIs:Z

    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public throwStreamException(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->getErrorLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingReader;->throwStreamException(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    return-void
.end method

.method public abstract throwStreamException(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V
.end method
