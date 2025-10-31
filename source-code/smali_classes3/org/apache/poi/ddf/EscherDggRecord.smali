.class public final Lorg/apache/poi/ddf/EscherDggRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    }
.end annotation


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtDgg"

.field public static final RECORD_ID:S = -0xffas


# instance fields
.field private field_1_shapeIdMax:I

.field private field_3_numShapesSaved:I

.field private field_4_drawingsSaved:I

.field private final field_5_fileIdClusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;",
            ">;"
        }
    .end annotation
.end field

.field private maxDgId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    return-void
.end method

.method private sortCluster()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ddf/EscherDggRecord$1;

    invoke-direct {v1, p0}, Lorg/apache/poi/ddf/EscherDggRecord$1;-><init>(Lorg/apache/poi/ddf/EscherDggRecord;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addCluster(II)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object p1

    return-object p1
.end method

.method public addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(II)V

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->sortCluster()V

    :cond_0
    return-object v0
.end method

.method public allocateShapeId(Lorg/apache/poi/ddf/EscherDgRecord;Z)I
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDgRecord;->getDrawingGroupId()S

    move-result v0

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x400

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v6

    if-ge v6, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/poi/ddf/EscherDggRecord;->addCluster(IIZ)Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    move-result-object v4

    iget p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    :cond_2
    mul-int/lit16 v3, v3, 0x400

    invoke-virtual {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {v4}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$000(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDgRecord;->getNumShapes()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherDgRecord;->setNumShapes(I)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/ddf/EscherDgRecord;->setLastMSOSPID(I)V

    iget p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    return p2
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    add-int/lit8 v0, p2, 0x8

    .line 6
    .line 7
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    .line 12
    .line 13
    add-int/lit8 v1, p2, 0x10

    .line 14
    .line 15
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x14

    .line 22
    .line 23
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    .line 28
    .line 29
    iget-object p2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p3, -0x10

    .line 35
    .line 36
    div-int/lit8 p2, p2, 0x8

    .line 37
    .line 38
    const/16 v1, 0x10

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, p2, :cond_0

    .line 42
    .line 43
    add-int v3, v0, v1

    .line 44
    .line 45
    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/lit8 v3, v3, 0x4

    .line 50
    .line 51
    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    new-instance v5, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    .line 56
    .line 57
    invoke-direct {v5, v4, v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;-><init>(II)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    iget v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 66
    .line 67
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput v3, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x8

    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    sub-int/2addr p3, v1

    .line 79
    if-nez p3, :cond_1

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x8

    .line 82
    .line 83
    return v1

    .line 84
    :cond_1
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    .line 85
    .line 86
    const-string p2, "Expecting no remaining data but got "

    .line 87
    .line 88
    const-string v0, " byte(s)."

    .line 89
    .line 90
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
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

.method public findNewDrawingGroupId()S
    .locals 4

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "FileId Clusters"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Group"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$100(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->access$200(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "ShapeIdMax"

    aput-object v6, v5, v1

    aput-object v4, v5, v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumIdClusters()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "NumIdClusters"

    aput-object v7, v6, v1

    aput-object v4, v6, v0

    iget v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "NumShapesSaved"

    aput-object v8, v7, v1

    aput-object v4, v7, v0

    iget v4, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "DrawingsSaved"

    aput-object v9, v8, v1

    aput-object v4, v8, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [[Ljava/lang/Object;

    aput-object v5, v4, v1

    aput-object v6, v4, v0

    aput-object v7, v4, v2

    const/4 v0, 0x3

    aput-object v8, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    return-object v4
.end method

.method public getDrawingsSaved()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    return v0
.end method

.method public getFileIdClusters()[Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    return-object v0
.end method

.method public getMaxDrawingGroupId()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->maxDgId:I

    return v0
.end method

.method public getNumIdClusters()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getNumShapesSaved()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    const/16 v0, -0xffa

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "Dgg"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getShapeIdMax()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getNumIdClusters()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x14

    iget v1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p1, p1, 0x18

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v2

    invoke-static {p2, p1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result v1

    invoke-static {p2, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordId()S

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p1, p2, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDggRecord;->getRecordSize()I

    move-result p1

    return p1
.end method

.method public setDrawingsSaved(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_4_drawingsSaved:I

    return-void
.end method

.method public setFileIdClusters([Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_5_fileIdClusters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setNumShapesSaved(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_3_numShapesSaved:I

    return-void
.end method

.method public setShapeIdMax(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDggRecord;->field_1_shapeIdMax:I

    return-void
.end method
