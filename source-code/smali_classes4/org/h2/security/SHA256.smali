.class public Lorg/h2/security/SHA256;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HH:[I

.field private static final K:[I


# instance fields
.field private final hh:[I

.field private final result:[B

.field private final w:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/h2/security/SHA256;->K:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/h2/security/SHA256;->HH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.8080557E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.8175194E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data

    :array_1
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/h2/security/SHA256;->result:[B

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/security/SHA256;->w:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/security/SHA256;->hh:[I

    return-void
.end method

.method private calculateHMAC([B[BI[B[B[B[I)V
    .locals 3

    const/16 v0, 0x36

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-static {p4, v1, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p4, p1, v2}, Lorg/h2/security/SHA256;->xor([B[BI)V

    invoke-static {p2, v1, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, v2

    invoke-direct {p0, p4, p3, p6, p7}, Lorg/h2/security/SHA256;->calculateHash([BI[B[I)V

    const/16 p2, 0x5c

    invoke-static {p5, v1, v2, p2}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p5, p1, v2}, Lorg/h2/security/SHA256;->xor([B[BI)V

    iget-object p1, p0, Lorg/h2/security/SHA256;->result:[B

    const/16 p2, 0x20

    invoke-static {p1, v1, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x60

    invoke-direct {p0, p5, p1, p6, p7}, Lorg/h2/security/SHA256;->calculateHash([BI[B[I)V

    return-void
.end method

.method private calculateHash([BI[B[I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lorg/h2/security/SHA256;->w:[I

    iget-object v4, v0, Lorg/h2/security/SHA256;->hh:[I

    iget-object v5, v0, Lorg/h2/security/SHA256;->result:[B

    invoke-static/range {p2 .. p2}, Lorg/h2/security/SHA256;->getIntCount(I)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v8, p1

    invoke-static {v8, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, -0x80

    aput-byte v8, v2, v1

    add-int/lit8 v8, v1, 0x1

    mul-int/lit8 v9, v6, 0x4

    invoke-static {v2, v8, v9, v7}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    if-ge v8, v6, :cond_0

    invoke-static {v2, v9}, Lorg/h2/security/SHA256;->readInt([BI)I

    move-result v11

    aput v11, p4, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v6, -0x2

    ushr-int/lit8 v8, v1, 0x1d

    aput v8, p4, v2

    add-int/lit8 v2, v6, -0x1

    const/4 v8, 0x3

    shl-int/2addr v1, v8

    aput v1, p4, v2

    sget-object v1, Lorg/h2/security/SHA256;->HH:[I

    const/16 v2, 0x8

    invoke-static {v1, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    const/4 v9, 0x0

    :goto_2
    const/16 v11, 0x10

    if-ge v9, v11, :cond_1

    add-int v11, v1, v9

    aget v11, p4, v11

    aput v11, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    const/16 v9, 0x40

    const/4 v12, 0x7

    if-ge v11, v9, :cond_2

    add-int/lit8 v9, v11, -0x2

    aget v9, v3, v9

    const/16 v13, 0x11

    invoke-static {v9, v13}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v13

    const/16 v14, 0x13

    invoke-static {v9, v14}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v14

    xor-int/2addr v13, v14

    ushr-int/lit8 v9, v9, 0xa

    xor-int/2addr v9, v13

    add-int/lit8 v13, v11, -0xf

    aget v13, v3, v13

    invoke-static {v13, v12}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v12

    const/16 v14, 0x12

    invoke-static {v13, v14}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v14

    xor-int/2addr v12, v14

    ushr-int/2addr v13, v8

    xor-int/2addr v12, v13

    add-int/lit8 v13, v11, -0x7

    aget v13, v3, v13

    add-int/2addr v9, v13

    add-int/2addr v9, v12

    add-int/lit8 v12, v11, -0x10

    aget v12, v3, v12

    add-int/2addr v9, v12

    aput v9, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    aget v11, v4, v7

    const/4 v13, 0x1

    aget v14, v4, v13

    const/4 v15, 0x2

    aget v16, v4, v15

    aget v17, v4, v8

    aget v18, v4, v10

    const/16 v19, 0x5

    aget v20, v4, v19

    const/4 v2, 0x6

    aget v21, v4, v2

    aget v22, v4, v12

    move/from16 v12, v18

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_3

    invoke-static {v12, v2}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v23

    const/16 v9, 0xb

    invoke-static {v12, v9}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v9

    xor-int v9, v23, v9

    const/16 v2, 0x19

    invoke-static {v12, v2}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v2

    xor-int/2addr v2, v9

    add-int v22, v22, v2

    and-int v2, v12, v20

    not-int v9, v12

    and-int v9, v9, v21

    xor-int/2addr v2, v9

    add-int v22, v22, v2

    sget-object v2, Lorg/h2/security/SHA256;->K:[I

    aget v2, v2, v10

    add-int v22, v22, v2

    aget v2, v3, v10

    add-int v22, v22, v2

    invoke-static {v11, v15}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v2

    const/16 v9, 0xd

    invoke-static {v11, v9}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v9

    xor-int/2addr v2, v9

    const/16 v9, 0x16

    invoke-static {v11, v9}, Lorg/h2/security/SHA256;->rot(II)I

    move-result v9

    xor-int/2addr v2, v9

    and-int v9, v11, v14

    and-int v24, v11, v16

    xor-int v9, v9, v24

    and-int v24, v14, v16

    xor-int v9, v9, v24

    add-int/2addr v2, v9

    add-int v9, v17, v22

    add-int v2, v22, v2

    add-int/lit8 v10, v10, 0x1

    move/from16 v17, v16

    move/from16 v22, v21

    move/from16 v16, v14

    move/from16 v21, v20

    move v14, v11

    move/from16 v20, v12

    move v11, v2

    move v12, v9

    const/4 v2, 0x6

    const/16 v9, 0x40

    goto :goto_4

    :cond_3
    aget v2, v4, v7

    add-int/2addr v2, v11

    aput v2, v4, v7

    aget v2, v4, v13

    add-int/2addr v2, v14

    aput v2, v4, v13

    aget v2, v4, v15

    add-int v2, v2, v16

    aput v2, v4, v15

    aget v2, v4, v8

    add-int v2, v2, v17

    aput v2, v4, v8

    const/4 v2, 0x4

    aget v9, v4, v2

    add-int/2addr v9, v12

    aput v9, v4, v2

    aget v9, v4, v19

    add-int v9, v9, v20

    aput v9, v4, v19

    const/4 v9, 0x6

    aget v10, v4, v9

    add-int v10, v10, v21

    aput v10, v4, v9

    const/4 v9, 0x7

    aget v10, v4, v9

    add-int v10, v10, v22

    aput v10, v4, v9

    add-int/lit8 v1, v1, 0x10

    const/16 v2, 0x8

    const/4 v10, 0x4

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x8

    :goto_5
    if-ge v7, v1, :cond_5

    mul-int/lit8 v2, v7, 0x4

    aget v3, v4, v7

    invoke-static {v5, v2, v3}, Lorg/h2/security/SHA256;->writeInt([BII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private fillWithNull()V
    .locals 2

    iget-object v0, p0, Lorg/h2/security/SHA256;->w:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lorg/h2/security/SHA256;->hh:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public static getHMAC([B[B)[B
    .locals 8

    invoke-static {p0}, Lorg/h2/security/SHA256;->normalizeKeyForHMAC([B)[B

    move-result-object v1

    array-length v3, p1

    const/16 p0, 0x20

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x40

    invoke-static {p0}, Lorg/h2/security/SHA256;->getIntCount(I)I

    move-result p0

    mul-int/lit8 v0, p0, 0x4

    new-array v6, v0, [B

    new-array v7, p0, [I

    new-instance p0, Lorg/h2/security/SHA256;

    invoke-direct {p0}, Lorg/h2/security/SHA256;-><init>()V

    add-int/lit8 v0, v3, 0x40

    new-array v4, v0, [B

    const/16 v0, 0x60

    new-array v5, v0, [B

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/h2/security/SHA256;->calculateHMAC([B[BI[B[B[B[I)V

    iget-object p0, p0, Lorg/h2/security/SHA256;->result:[B

    return-object p0
.end method

.method public static getHash([BZ)[B
    .locals 4

    array-length v0, p0

    invoke-static {v0}, Lorg/h2/security/SHA256;->getIntCount(I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [B

    new-array v1, v1, [I

    new-instance v3, Lorg/h2/security/SHA256;

    invoke-direct {v3}, Lorg/h2/security/SHA256;-><init>()V

    invoke-direct {v3, p0, v0, v2, v1}, Lorg/h2/security/SHA256;->calculateHash([BI[B[I)V

    if-eqz p1, :cond_0

    invoke-direct {v3}, Lorg/h2/security/SHA256;->fillWithNull()V

    const/4 p1, 0x0

    invoke-static {v1, p1}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v2, p1}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    iget-object p0, v3, Lorg/h2/security/SHA256;->result:[B

    return-object p0
.end method

.method public static getHashWithSalt([B[B)[B
    .locals 3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static getIntCount(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x48

    div-int/lit8 p0, p0, 0x40

    mul-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getKeyPasswordHash(Ljava/lang/String;[C)[B
    .locals 8

    .line 1
    const-string v0, "@"

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    array-length v1, p1

    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v3, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    add-int/lit8 v6, v4, 0x1

    .line 31
    .line 32
    shr-int/lit8 v7, v5, 0x8

    .line 33
    .line 34
    int-to-byte v7, v7

    .line 35
    aput-byte v7, v0, v4

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x2

    .line 38
    .line 39
    int-to-byte v5, v5

    .line 40
    aput-byte v5, v0, v6

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    array-length p0, p1

    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_1
    if-ge v1, p0, :cond_1

    .line 48
    .line 49
    aget-char v3, p1, v1

    .line 50
    .line 51
    add-int/lit8 v5, v4, 0x1

    .line 52
    .line 53
    shr-int/lit8 v6, v3, 0x8

    .line 54
    .line 55
    int-to-byte v6, v6

    .line 56
    aput-byte v6, v0, v4

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x2

    .line 59
    .line 60
    int-to-byte v3, v3

    .line 61
    aput-byte v3, v0, v5

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    invoke-static {v0, p0}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
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

.method public static getPBKDF2([B[BII)[B
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p3

    new-array v2, v1, [B

    invoke-static/range {p0 .. p0}, Lorg/h2/security/SHA256;->normalizeKeyForHMAC([B)[B

    move-result-object v11

    new-instance v12, Lorg/h2/security/SHA256;

    invoke-direct {v12}, Lorg/h2/security/SHA256;-><init>()V

    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    const/16 v13, 0x20

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v3, 0x40

    new-array v14, v4, [B

    invoke-static {v4}, Lorg/h2/security/SHA256;->getIntCount(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    new-array v15, v5, [B

    new-array v10, v4, [I

    add-int/lit16 v3, v3, 0x80

    new-array v9, v3, [B

    const/16 v3, 0x60

    new-array v8, v3, [B

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v1, :cond_3

    move/from16 v4, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    if-nez v3, :cond_0

    array-length v13, v0

    invoke-static {v0, v7, v14, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v0

    invoke-static {v14, v13, v6}, Lorg/h2/security/SHA256;->writeInt([BII)V

    array-length v13, v0

    add-int/lit8 v13, v13, 0x4

    move v0, v3

    goto :goto_2

    :cond_0
    iget-object v13, v12, Lorg/h2/security/SHA256;->result:[B

    const/16 v0, 0x20

    invoke-static {v13, v7, v14, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    const/16 v13, 0x20

    :goto_2
    move-object v3, v12

    move-object v4, v11

    move/from16 v16, v5

    move-object v5, v14

    move/from16 v17, v6

    move v6, v13

    const/4 v13, 0x0

    move-object v7, v9

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object v9, v15

    move-object/from16 v20, v10

    invoke-direct/range {v3 .. v10}, Lorg/h2/security/SHA256;->calculateHMAC([B[BI[B[B[B[I)V

    const/16 v3, 0x20

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_1

    add-int v5, v7, v16

    if-ge v5, v1, :cond_1

    aget-byte v4, v2, v5

    iget-object v6, v12, Lorg/h2/security/SHA256;->result:[B

    aget-byte v6, v6, v7

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, p2

    move v3, v0

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    const/4 v7, 0x0

    const/16 v13, 0x20

    move-object/from16 v0, p1

    goto :goto_1

    :cond_2
    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const/16 v3, 0x20

    const/4 v13, 0x0

    add-int/lit8 v6, v17, 0x1

    add-int/lit8 v5, v16, 0x20

    move-object/from16 v0, p1

    const/4 v7, 0x0

    const/16 v13, 0x20

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    const/4 v13, 0x0

    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v11, v13}, Ljava/util/Arrays;->fill([BB)V

    return-object v2
.end method

.method private static normalizeKeyForHMAC([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object p0

    :cond_0
    array-length v0, p0

    if-ge v0, v1, :cond_1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static readInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private static rot(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method

.method private static writeInt([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method private static xor([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
