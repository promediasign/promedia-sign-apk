.class public abstract Lorg/apache/poi/poifs/property/PropertyTableBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/BATManaged;


# static fields
.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

.field protected final _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/property/PropertyTableBase;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    new-instance p1, Lorg/apache/poi/poifs/property/RootProperty;

    invoke-direct {p1}, Lorg/apache/poi/poifs/property/RootProperty;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->addProperty(Lorg/apache/poi/poifs/property/Property;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/property/Property;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    iput-object p2, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/property/PropertyTableBase;->populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    return-void
.end method

.method private populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getChildIndex()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/Property;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/property/PropertyTableBase;->populatePropertyTree(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getPreviousChildIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/property/PropertyTableBase;->isValidIndex(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getNextChildIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/PropertyTableBase;->isValidIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addProperty(Lorg/apache/poi/poifs/property/Property;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRoot()Lorg/apache/poi/poifs/property/RootProperty;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/RootProperty;

    return-object v0
.end method

.method public getStartBlock()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getPropertyStart()I

    move-result v0

    return v0
.end method

.method public isValidIndex(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/property/Property;->isValidIndex(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    if-ltz p1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lt p1, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v0

    .line 22
    :cond_2
    :goto_0
    sget-object v1, Lorg/apache/poi/poifs/property/PropertyTableBase;->_logger:Lorg/apache/poi/util/POILogger;

    .line 23
    .line 24
    const-string v3, "Property index "

    .line 25
    .line 26
    const-string v4, "outside the valid range 0.."

    .line 27
    .line 28
    invoke-static {p1, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v3, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object p1, v0, v2

    .line 48
    .line 49
    const/4 p1, 0x5

    .line 50
    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return v2
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
.end method

.method public removeProperty(Lorg/apache/poi/poifs/property/Property;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStartBlock(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/property/PropertyTableBase;->_header_block:Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->setPropertyStart(I)V

    return-void
.end method
