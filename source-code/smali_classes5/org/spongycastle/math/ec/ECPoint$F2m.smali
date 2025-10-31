.class public Lorg/spongycastle/math/ec/ECPoint$F2m;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-ne v2, v0, :cond_3

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object p3, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-static {p2, p3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object p2, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of the field elements is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 26
    .line 27
    iget-object v5, p1, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 28
    .line 29
    if-eqz v2, :cond_15

    .line 30
    .line 31
    if-eq v2, v1, :cond_e

    .line 32
    .line 33
    const/4 v6, 0x6

    .line 34
    if-ne v2, v6, :cond_d

    .line 35
    .line 36
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_2
    invoke-virtual {p1, p0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 59
    .line 60
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 61
    .line 62
    aget-object v6, v6, v0

    .line 63
    .line 64
    iget-object v7, p1, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 65
    .line 66
    iget-object p1, p1, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 67
    .line 68
    aget-object p1, p1, v0

    .line 69
    .line 70
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-nez v8, :cond_4

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    move-object v9, v5

    .line 86
    move-object v10, v7

    .line 87
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-nez v11, :cond_5

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    move-object v12, v2

    .line 103
    :goto_1
    invoke-virtual {v12, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v3, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    if-eqz v13, :cond_7

    .line 116
    .line 117
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :cond_6
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :cond_7
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_9

    .line 138
    .line 139
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v3, v3, v2}, LA/g;->u(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-eqz v6, :cond_8

    .line 176
    .line 177
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 178
    .line 179
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-boolean v1, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 188
    .line 189
    invoke-direct {p1, v4, v5, v0, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 190
    .line 191
    .line 192
    return-object p1

    .line 193
    :cond_8
    invoke-static {v2, v5, v3, v5, p1}, LA/g;->v(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 206
    .line 207
    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    move-object v6, p1

    .line 212
    goto :goto_3

    .line 213
    :cond_9
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v10, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v10, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    if-eqz v9, :cond_a

    .line 234
    .line 235
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 236
    .line 237
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget-boolean v1, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 246
    .line 247
    invoke-direct {p1, v4, v3, v0, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 248
    .line 249
    .line 250
    return-object p1

    .line 251
    :cond_a
    invoke-virtual {v10, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    if-nez v11, :cond_b

    .line 256
    .line 257
    invoke-virtual {v9, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    goto :goto_2

    .line 262
    :cond_b
    move-object p1, v9

    .line 263
    :goto_2
    invoke-virtual {v7, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v5, p1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    if-nez v8, :cond_c

    .line 276
    .line 277
    invoke-virtual {p1, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    :cond_c
    move-object v6, v2

    .line 282
    move-object v5, v3

    .line 283
    move-object v2, p1

    .line 284
    :goto_3
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 285
    .line 286
    new-array v7, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 287
    .line 288
    aput-object v2, v7, v0

    .line 289
    .line 290
    iget-boolean v8, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 291
    .line 292
    move-object v3, p1

    .line 293
    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 294
    .line 295
    .line 296
    return-object p1

    .line 297
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 298
    .line 299
    const-string v0, "unsupported coordinate system"

    .line 300
    .line 301
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :cond_e
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 306
    .line 307
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 308
    .line 309
    aget-object v6, v6, v0

    .line 310
    .line 311
    iget-object v7, p1, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 312
    .line 313
    iget-object p1, p1, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 314
    .line 315
    aget-object p1, p1, v0

    .line 316
    .line 317
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    if-eqz v8, :cond_f

    .line 326
    .line 327
    move-object v9, v2

    .line 328
    goto :goto_4

    .line 329
    :cond_f
    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    :goto_4
    invoke-virtual {v7, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    invoke-virtual {v6, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    if-eqz v8, :cond_10

    .line 342
    .line 343
    move-object v9, v3

    .line 344
    goto :goto_5

    .line 345
    :cond_10
    invoke-virtual {v3, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    :goto_5
    invoke-virtual {v5, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    if-eqz v9, :cond_12

    .line 358
    .line 359
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-eqz p1, :cond_11

    .line 364
    .line 365
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    return-object p1

    .line 370
    :cond_11
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    return-object p1

    .line 375
    :cond_12
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-virtual {v9, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    if-eqz v8, :cond_13

    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_13
    invoke-virtual {v6, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    :goto_6
    invoke-virtual {v7, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 391
    .line 392
    .line 393
    move-result-object v11

    .line 394
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    invoke-virtual {v11, v7, v9, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 399
    .line 400
    .line 401
    move-result-object v12

    .line 402
    invoke-virtual {v12, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 403
    .line 404
    .line 405
    move-result-object v12

    .line 406
    invoke-virtual {v12, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    invoke-virtual {v5, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    if-eqz v8, :cond_14

    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_14
    invoke-virtual {v9, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    :goto_7
    invoke-virtual {v7, v3, v5, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p1, v9, v11, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {v10, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    new-instance v9, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 434
    .line 435
    new-array v7, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 436
    .line 437
    aput-object v2, v7, v0

    .line 438
    .line 439
    iget-boolean v8, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 440
    .line 441
    move-object v3, v9

    .line 442
    move-object v5, v13

    .line 443
    move-object v6, p1

    .line 444
    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 445
    .line 446
    .line 447
    return-object v9

    .line 448
    :cond_15
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 449
    .line 450
    iget-object p1, p1, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 451
    .line 452
    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_17

    .line 465
    .line 466
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 467
    .line 468
    .line 469
    move-result p1

    .line 470
    if-eqz p1, :cond_16

    .line 471
    .line 472
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    return-object p1

    .line 477
    :cond_16
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    return-object p1

    .line 482
    :cond_17
    invoke-virtual {p1, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-static {p1, p1, v1}, LA/g;->u(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-static {v3, v1, p1, v1, v0}, LA/g;->v(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 503
    .line 504
    iget-boolean v2, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 505
    .line 506
    invoke-direct {v0, v4, v1, p1, v2}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 507
    .line 508
    .line 509
    return-object v0
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
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
.end method

.method public getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v3
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v2

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v0

    new-instance v9, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    new-array v7, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v3, v7, v0

    iget-boolean v8, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v9

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    new-instance v1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v1, v2, v5, v0, v3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    :cond_4
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v0

    new-instance v9, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v2, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    new-array v7, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v3, v7, v0

    iget-boolean v8, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v9

    :cond_5
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    new-instance v1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v1, v2, v5, v0, v3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 17
    .line 18
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    return-object v1

    .line 29
    :cond_1
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_10

    .line 34
    .line 35
    if-eq v4, v1, :cond_d

    .line 36
    .line 37
    const/4 v6, 0x6

    .line 38
    if-ne v4, v6, :cond_c

    .line 39
    .line 40
    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 41
    .line 42
    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 43
    .line 44
    aget-object v6, v6, v2

    .line 45
    .line 46
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_2

    .line 51
    .line 52
    move-object v8, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    :goto_0
    if-eqz v7, :cond_3

    .line 59
    .line 60
    move-object v9, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    :goto_1
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    move-object v11, v10

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {v10, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    :goto_2
    invoke-static {v4, v8, v11}, LA/g;->u(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    if-eqz v13, :cond_5

    .line 87
    .line 88
    new-instance v1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 89
    .line 90
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-boolean v3, v0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 99
    .line 100
    invoke-direct {v1, v5, v12, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_5
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    if-eqz v7, :cond_6

    .line 109
    .line 110
    move-object v14, v12

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    invoke-virtual {v12, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    :goto_3
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    .line 125
    .line 126
    .line 127
    move-result v16

    .line 128
    move-object/from16 v17, v5

    .line 129
    .line 130
    shr-int/lit8 v5, v16, 0x1

    .line 131
    .line 132
    if-ge v2, v5, :cond_a

    .line 133
    .line 134
    invoke-virtual {v4, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    invoke-virtual {v11, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v11, v15, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    :goto_4
    invoke-virtual {v2, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_8

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_8
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_9

    .line 197
    .line 198
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    :cond_9
    :goto_5
    move-object v7, v2

    .line 211
    goto :goto_8

    .line 212
    :cond_a
    if-eqz v7, :cond_b

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_b
    invoke-virtual {v3, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    :goto_6
    invoke-virtual {v3, v12, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :goto_7
    invoke-virtual {v2, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    goto :goto_5

    .line 232
    :goto_8
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 233
    .line 234
    new-array v8, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 235
    .line 236
    const/4 v1, 0x0

    .line 237
    aput-object v14, v8, v1

    .line 238
    .line 239
    iget-boolean v9, v0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 240
    .line 241
    move-object v4, v2

    .line 242
    move-object/from16 v5, v17

    .line 243
    .line 244
    move-object v6, v13

    .line 245
    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 246
    .line 247
    .line 248
    return-object v2

    .line 249
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 250
    .line 251
    const-string v2, "unsupported coordinate system"

    .line 252
    .line 253
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v1

    .line 257
    :cond_d
    move-object/from16 v17, v5

    .line 258
    .line 259
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 260
    .line 261
    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 262
    .line 263
    const/4 v5, 0x0

    .line 264
    aget-object v4, v4, v5

    .line 265
    .line 266
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-eqz v5, :cond_e

    .line 271
    .line 272
    move-object v6, v3

    .line 273
    goto :goto_9

    .line 274
    :cond_e
    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    :goto_9
    if-eqz v5, :cond_f

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_f
    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    :goto_a
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-virtual {v5, v2, v4, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v6, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v3, v6, v2, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    new-instance v10, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 326
    .line 327
    new-array v8, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 328
    .line 329
    const/4 v1, 0x0

    .line 330
    aput-object v3, v8, v1

    .line 331
    .line 332
    iget-boolean v9, v0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 333
    .line 334
    move-object v4, v10

    .line 335
    move-object/from16 v5, v17

    .line 336
    .line 337
    move-object v6, v7

    .line 338
    move-object v7, v2

    .line 339
    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 340
    .line 341
    .line 342
    return-object v10

    .line 343
    :cond_10
    move-object/from16 v17, v5

    .line 344
    .line 345
    iget-object v1, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 346
    .line 347
    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v2, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v3, v2, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 380
    .line 381
    iget-boolean v4, v0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    .line 382
    .line 383
    invoke-direct {v3, v5, v2, v1, v4}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 384
    .line 385
    .line 386
    return-object v3
.end method
