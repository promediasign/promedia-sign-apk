.class public Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtSplitMenuColors"

.field public static final RECORD_ID:S = -0xee2s


# instance fields
.field private field_1_color1:I

.field private field_2_color2:I

.field private field_3_color3:I

.field private field_4_color4:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

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
    move-result v0

    .line 11
    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    .line 12
    .line 13
    add-int/lit8 v0, p2, 0xc

    .line 14
    .line 15
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    .line 20
    .line 21
    add-int/lit8 v0, p2, 0x10

    .line 22
    .line 23
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    .line 28
    .line 29
    add-int/lit8 p2, p2, 0x14

    .line 30
    .line 31
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    .line 36
    .line 37
    add-int/lit8 p1, p3, -0x10

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    add-int/lit8 p3, p3, 0x8

    .line 42
    .line 43
    return p3

    .line 44
    :cond_0
    new-instance p2, Lorg/apache/poi/util/RecordFormatException;

    .line 45
    .line 46
    const-string p3, "Expecting no remaining data but got "

    .line 47
    .line 48
    const-string v0, " byte(s)."

    .line 49
    .line 50
    invoke-static {p1, p3, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
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
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Color1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Color2"

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "Color3"

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "Color4"

    aput-object v8, v7, v4

    aput-object v0, v7, v3

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/Object;

    aput-object v2, v0, v4

    aput-object v5, v0, v3

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    return-object v0
.end method

.method public getColor1()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    return v0
.end method

.method public getColor2()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    return v0
.end method

.method public getColor3()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    return v0
.end method

.method public getColor4()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    const/16 v0, -0xee2

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "SplitMenuColors"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x14

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p1, 0x18

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v0

    sub-int p1, p2, p1

    invoke-interface {p3, p2, v0, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordSize()I

    move-result p1

    return p1
.end method

.method public setColor1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    return-void
.end method

.method public setColor2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    return-void
.end method

.method public setColor3(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    return-void
.end method

.method public setColor4(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    return-void
.end method
