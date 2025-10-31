.class public Lorg/apache/poi/hpsf/DocumentSummaryInformation;
.super Lorg/apache/poi/hpsf/SpecialPropertySet;
.source "SourceFile"


# static fields
.field public static final DEFAULT_STREAM_NAME:Ljava/lang/String; = "\u0005DocumentSummaryInformation"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->isDocumentSummaryInformation()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not a "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureSection2()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>()V

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setFormatID(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    :cond_0
    return-void
.end method

.method private notYetImplemented(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, " is not yet implemented."

    .line 4
    .line 5
    invoke-static {p1, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
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
.end method


# virtual methods
.method public getApplicationVersion()I
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getByteCount()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharCountWithSpaces()I
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentStatus()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    new-instance v0, Lorg/apache/poi/hpsf/CustomProperties;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/CustomProperties;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v7, v1, v5

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    goto :goto_1

    :cond_0
    if-lez v12, :cond_1

    add-int/lit8 v6, v6, 0x1

    new-instance v10, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v7, v8}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v10}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperties;->size()I

    move-result v1

    if-eq v1, v6, :cond_4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hpsf/CustomProperties;->setPure(Z)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getDocparts()[B
    .locals 1

    const-string v0, "Reading byte arrays"

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getDocumentVersion()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeadingPair()[B
    .locals 1

    const-string v0, "Reading byte arrays "

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHiddenCount()I
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getHyperlinksChanged()Z
    .locals 1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getLinksDirty()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method public getMMClipCount()I
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getManager()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoteCount()I
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getParCount()I
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getPresentationFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method

.method public getScale()Z
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method public getSlideCount()I
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getVBADigitalSignature()[B
    .locals 2

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    check-cast v0, [B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeApplicationVersion()V
    .locals 2

    const-wide/16 v0, 0x17

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeByteCount()V
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeCategory()V
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeCharCountWithSpaces()V
    .locals 2

    const-wide/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeCompany()V
    .locals 2

    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeContentStatus()V
    .locals 2

    const-wide/16 v0, 0x1b

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeContentType()V
    .locals 2

    const-wide/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeCustomProperties()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->clearSections()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/hpsf/PropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    const-string v1, "Illegal internal format of Document SummaryInformation stream: second section is missing."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeDocparts()V
    .locals 2

    const-wide/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeDocumentVersion()V
    .locals 2

    const-wide/16 v0, 0x1d

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeHeadingPair()V
    .locals 2

    const-wide/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeHiddenCount()V
    .locals 2

    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeHyperlinksChanged()V
    .locals 2

    const-wide/16 v0, 0x16

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeLanguage()V
    .locals 2

    const-wide/16 v0, 0x1c

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeLineCount()V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeLinksDirty()V
    .locals 2

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeMMClipCount()V
    .locals 2

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeManager()V
    .locals 2

    const-wide/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeNoteCount()V
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeParCount()V
    .locals 2

    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removePresentationFormat()V
    .locals 2

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeScale()V
    .locals 2

    const-wide/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeSlideCount()V
    .locals 2

    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public removeVBADigitalSignature()V
    .locals 2

    const-wide/16 v0, 0x18

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->remove1stProperty(J)V

    return-void
.end method

.method public setApplicationVersion(I)V
    .locals 2

    const-wide/16 v0, 0x17

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setByteCount(I)V
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    return-void
.end method

.method public setCharCountWithSpaces(I)V
    .locals 2

    const-wide/16 v0, 0x11

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setContentStatus(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1b

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1a

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setCustomProperties(Lorg/apache/poi/hpsf/CustomProperties;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->ensureSection2()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->getDictionary()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->getCodepage()I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getCodepage()I

    move-result v2

    :cond_0
    if-gez v2, :cond_1

    const/16 v2, 0x4e4

    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/Section;->setCodepage(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setDictionary(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->properties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/Section;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDocparts([B)V
    .locals 0

    const-string p1, "Writing byte arrays"

    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    return-void
.end method

.method public setDocumentVersion(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1d

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setHeadingPair([B)V
    .locals 0

    const-string p1, "Writing byte arrays "

    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    return-void
.end method

.method public setHiddenCount(I)V
    .locals 2

    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setHyperlinksChanged(Z)V
    .locals 2

    const-wide/16 v0, 0x16

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JZ)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x1c

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setLineCount(I)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setLinksDirty(Z)V
    .locals 2

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JZ)V

    return-void
.end method

.method public setMMClipCount(I)V
    .locals 2

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0xe

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JLjava/lang/String;)V

    return-void
.end method

.method public setNoteCount(I)V
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setParCount(I)V
    .locals 2

    const-wide/16 v0, 0x6

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setPresentationFormat(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    return-void
.end method

.method public setScale(Z)V
    .locals 2

    const-wide/16 v0, 0xb

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JZ)V

    return-void
.end method

.method public setSlideCount(I)V
    .locals 2

    const-wide/16 v0, 0x7

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(JI)V

    return-void
.end method

.method public setVBADigitalSignature([B)V
    .locals 2

    const-wide/16 v0, 0x18

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hpsf/PropertySet;->set1stProperty(J[B)V

    return-void
.end method
