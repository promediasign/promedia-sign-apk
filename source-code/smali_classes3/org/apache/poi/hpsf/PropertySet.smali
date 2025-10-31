.class public Lorg/apache/poi/hpsf/PropertySet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OS_MACINTOSH:I = 0x1

.field public static final OS_WIN16:I = 0x0

.field public static final OS_WIN32:I = 0x2


# instance fields
.field private byteOrder:I

.field private classID:Lorg/apache/poi/hpsf/ClassID;

.field private format:I

.field private osVersion:I

.field private final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const v0, 0xfffe

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    const v0, 0x20a04

    iput v0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    new-instance v0, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {p1}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setByteOrder(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setFormat(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setOSVersion(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->setClassID(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    iget-object v1, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v2, v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>(Lorg/apache/poi/hpsf/Section;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpsf/PropertySet;->init([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/hpsf/NoPropertySetStreamException;

    invoke-direct {p1}, Lorg/apache/poi/hpsf/NoPropertySetStreamException;-><init>()V

    throw p1
.end method

.method public static getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    check-cast p0, [B

    array-length v0, p0

    const-string v1, ""

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v0, 0x4e4

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_2
    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getUInt([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init([BII)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    .line 6
    .line 7
    add-int/lit8 p3, p2, 0x2

    .line 8
    .line 9
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    .line 14
    .line 15
    add-int/lit8 p3, p2, 0x4

    .line 16
    .line 17
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-int p3, v0

    .line 22
    iput p3, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    .line 23
    .line 24
    add-int/lit8 p3, p2, 0x8

    .line 25
    .line 26
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    .line 27
    .line 28
    invoke-direct {v0, p1, p3}, Lorg/apache/poi/hpsf/ClassID;-><init>([BI)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 32
    .line 33
    add-int/lit8 p3, p2, 0x18

    .line 34
    .line 35
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    add-int/lit8 p2, p2, 0x1c

    .line 40
    .line 41
    if-ltz p3, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-ge v0, p3, :cond_0

    .line 45
    .line 46
    new-instance v1, Lorg/apache/poi/hpsf/MutableSection;

    .line 47
    .line 48
    invoke-direct {v1, p1, p2}, Lorg/apache/poi/hpsf/MutableSection;-><init>([BI)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p2, p2, 0x14

    .line 52
    .line 53
    iget-object v2, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance p1, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    .line 63
    .line 64
    const-string p2, "Section count "

    .line 65
    .line 66
    const-string v0, " is negative."

    .line 67
    .line 68
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
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
.end method

.method public static isPropertySetStream(Ljava/io/InputStream;)Z
    .locals 2

    .line 1
    const/16 v0, 0x32

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->peekFirstNBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream([BII)Z

    move-result p0
    :try_end_0
    .catch Lorg/apache/poi/EmptyFileException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public static isPropertySetStream([BII)Z
    .locals 3

    .line 2
    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    add-int/lit8 v0, p1, 0x2

    const v1, 0xfffe

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x18

    invoke-static {p0, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-ltz p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static varargs matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p0}, Lorg/apache/poi/hpsf/ClassID;->equalsInverted(Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V
    .locals 3

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hpsf/ClassID;->write([BI)V

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public addSection(Lorg/apache/poi/hpsf/Section;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearSections()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lorg/apache/poi/hpsf/PropertySet;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/poi/hpsf/PropertySet;

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v8

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v10

    if-ne v1, v2, :cond_2

    invoke-virtual {v3, v4}, Lorg/apache/poi/hpsf/ClassID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v5, v6, :cond_2

    if-ne v7, v8, :cond_2

    if-eq v9, v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public getByteOrder()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return v0
.end method

.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-object v0
.end method

.method public getFirstSection()Lorg/apache/poi/hpsf/Section;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/Section;

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/MissingSectionException;

    const-string v1, "Property set does not contain any sections."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/MissingSectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return v0
.end method

.method public getOSVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    return v0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getProperty(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyBooleanValue(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/Section;->getPropertyBooleanValue(I)Z

    move-result p1

    return p1
.end method

.method public getPropertyIntValue(I)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/Section;->getPropertyIntValue(J)I

    move-result p1

    return p1
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/PropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/hpsf/PropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSingleSection()Lorg/apache/poi/hpsf/Section;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/apache/poi/hpsf/Section;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v1, Lorg/apache/poi/hpsf/NoSingleSectionException;

    .line 19
    .line 20
    const-string v2, "Property set contains "

    .line 21
    .line 22
    const-string v3, " sections."

    .line 23
    .line 24
    invoke-static {v0, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/NoSingleSectionException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1
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
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FIXME: Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDocumentSummaryInformation()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[Lorg/apache/poi/hpsf/ClassID;

    invoke-static {v0, v1}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSummaryInformation()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/poi/hpsf/PropertySet;->sections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    new-array v3, v1, [Lorg/apache/poi/hpsf/ClassID;

    sget-object v4, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:Lorg/apache/poi/hpsf/ClassID;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lorg/apache/poi/hpsf/PropertySet;->matchesSummary(Lorg/apache/poi/hpsf/ClassID;[Lorg/apache/poi/hpsf/ClassID;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public remove1stProperty(J)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/Section;->removeProperty(J)V

    return-void
.end method

.method public set1stProperty(JI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(II)V

    return-void
.end method

.method public set1stProperty(JLjava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/String;)V

    return-void
.end method

.method public set1stProperty(JZ)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(IZ)V

    return-void
.end method

.method public set1stProperty(J[B)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    long-to-int p2, p1

    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/hpsf/Section;->setProperty(ILjava/lang/Object;)V

    return-void
.end method

.method public setByteOrder(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->byteOrder:I

    return-void
.end method

.method public setClassID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hpsf/PropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->format:I

    return-void
.end method

.method public setOSVersion(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/PropertySet;->osVersion:I

    return-void
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/PropertySet;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[byteOrder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", classID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", OSVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sectionCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sections: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/Section;->toString(Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasNull()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Section;->wasNull()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSectionCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v1

    int-to-short v1, v1

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->putShort(Ljava/io/OutputStream;S)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/poi/hpsf/PropertySet;->putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x1c

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Section;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {p1, v3}, Lorg/apache/poi/hpsf/PropertySet;->putClassId(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)V

    int-to-long v3, v0

    invoke-static {v3, v4, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/Section;->getSize()I

    move-result v2
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;->getReason()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/io/UnsupportedEncodingException;

    if-eqz v1, :cond_0

    new-instance p1, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    invoke-direct {p1, v0}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/hpsf/NoFormatIDException;

    invoke-direct {p1}, Lorg/apache/poi/hpsf/NoFormatIDException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hpsf/Section;->write(Ljava/io/OutputStream;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/PropertySet;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method
