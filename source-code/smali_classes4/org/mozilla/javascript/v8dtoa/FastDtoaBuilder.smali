.class public Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final digits:[C


# instance fields
.field final chars:[C

.field end:I

.field formatted:Z

.field point:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->digits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    iput-boolean v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->formatted:Z

    return-void
.end method

.method private toExponentialFormat(II)V
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int v1, v0, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    add-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v3, v1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    const/16 v0, 0x2e

    aput-char v0, p1, v1

    iget p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    const/16 v3, 0x65

    aput-char v3, p1, v0

    sub-int/2addr p2, v2

    if-gez p2, :cond_1

    neg-int p2, p2

    const/16 v2, 0x2d

    goto :goto_0

    :cond_1
    const/16 v2, 0x2b

    :goto_0
    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    aput-char v2, p1, v1

    const/16 p1, 0x63

    if-le p2, p1, :cond_2

    add-int/lit8 v3, v0, 0x4

    goto :goto_1

    :cond_2
    const/16 p1, 0x9

    if-le p2, p1, :cond_3

    add-int/lit8 v3, v0, 0x3

    :cond_3
    :goto_1
    add-int/lit8 p1, v3, 0x1

    iput p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    :goto_2
    rem-int/lit8 p1, p2, 0xa

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    add-int/lit8 v1, v3, -0x1

    sget-object v2, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->digits:[C

    aget-char p1, v2, p1

    aput-char p1, v0, v3

    div-int/lit8 p2, p2, 0xa

    if-nez p2, :cond_4

    return-void

    :cond_4
    move v3, v1

    goto :goto_2
.end method

.method private toFixedFormat(II)V
    .locals 6

    iget v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    const/16 v2, 0x30

    if-ge v0, v1, :cond_2

    const/16 v3, 0x2e

    if-lez p2, :cond_0

    iget-object p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    add-int/lit8 p2, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget p2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    aput-char v3, p1, p2

    iget p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p1, 0x2

    sub-int v4, v0, p2

    iget-object v5, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    sub-int/2addr v1, p1

    invoke-static {v5, p1, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    aput-char v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    aput-char v3, v1, p1

    if-gez p2, :cond_1

    invoke-static {v1, v0, v4, v2}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    rsub-int/lit8 p2, p2, 0x2

    :goto_0
    add-int/2addr p2, p1

    iput p2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    goto :goto_1

    :cond_2
    if-le v0, v1, :cond_3

    iget-object p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    invoke-static {p1, v1, v0, v2}, Ljava/util/Arrays;->fill([CIIC)V

    iget p1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    iget p2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    sub-int/2addr p2, p1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    aput-char p1, v0, v1

    return-void
.end method

.method public decreaseLast()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    add-int/lit8 v1, v1, -0x1

    aget-char v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    int-to-char v2, v2

    aput-char v2, v0, v1

    return-void
.end method

.method public format()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->formatted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    aget-char v0, v0, v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    sub-int/2addr v2, v0

    const/4 v4, -0x5

    if-lt v2, v4, :cond_2

    const/16 v4, 0x15

    if-le v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->toFixedFormat(II)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->toExponentialFormat(II)V

    :goto_2
    iput-boolean v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->formatted:Z

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    iget v3, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    iput-boolean v0, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->formatted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[chars:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->chars:[C

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iget v4, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    .line 14
    .line 15
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", point:"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    .line 27
    .line 28
    const-string v2, "]"

    .line 29
    .line 30
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
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
.end method
