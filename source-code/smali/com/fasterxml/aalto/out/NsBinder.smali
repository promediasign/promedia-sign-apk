.class final Lcom/fasterxml/aalto/out/NsBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _nsStrings:[Ljava/lang/String;

.field _scopeEnd:I

.field final _scopeStart:I


# direct methods
.method private constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    iput p1, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeStart:I

    iput-object p2, p0, Lcom/fasterxml/aalto/out/NsBinder;->_nsStrings:[Ljava/lang/String;

    return-void
.end method

.method public static createEmpty()Lcom/fasterxml/aalto/out/NsBinder;
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "xml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "xmlns"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://www.w3.org/2000/xmlns/"

    aput-object v2, v0, v1

    new-instance v1, Lcom/fasterxml/aalto/out/NsBinder;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/aalto/out/NsBinder;-><init>(I[Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/aalto/out/NsBinder;->_nsStrings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeStart:I

    iget v3, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    if-eq v4, p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v5, v1, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    aget-object p1, v0, v2

    aput-object p2, v0, v2

    return-object p1

    :cond_2
    iget v1, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    array-length v2, v0

    if-lt v1, v2, :cond_3

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/out/NsBinder;->_nsStrings:[Ljava/lang/String;

    :cond_3
    iget v1, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    add-int/lit8 v2, v1, 0x1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    aput-object p2, v0, v2

    const/4 p1, 0x0

    return-object p1
.end method

.method public createChild()Lcom/fasterxml/aalto/out/NsBinder;
    .locals 3

    new-instance v0, Lcom/fasterxml/aalto/out/NsBinder;

    iget v1, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    iget-object v2, p0, Lcom/fasterxml/aalto/out/NsBinder;->_nsStrings:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/aalto/out/NsBinder;-><init>(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public findPrefixByUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/fasterxml/aalto/out/NsBinder;->_nsStrings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_4

    aget-object v3, v0, v2

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    add-int/lit8 v3, v2, -0x1

    aget-object v4, v0, v3

    iget v5, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeStart:I

    if-ge v2, v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget v6, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v7, v0, v2

    if-eq v7, v4, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-ne v8, v5, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_3
    return-object v4

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public findUriByPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/fasterxml/aalto/out/NsBinder;->_nsStrings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    add-int/lit8 v2, v2, -0x2

    :goto_0
    if-ltz v2, :cond_2

    aget-object v3, v0, v2

    if-eq v3, p1, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v1, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    aget-object p1, v0, v2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public generatePrefix(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;[I)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/fasterxml/aalto/out/NsBinder;->_nsStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget v2, p3, v1

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget v5, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    add-int/lit8 v5, v5, -0x2

    :goto_1
    if-ltz v5, :cond_2

    aget-object v6, v0, v5

    if-eq v6, v3, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-ne v7, v4, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, -0x2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2, v3}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    aput v2, p3, v1

    return-object v3
.end method

.method public getPrefixesBoundToUri(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/aalto/out/NsBinder;->_nsStrings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_5

    aget-object v3, v0, v2

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v1, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    add-int/lit8 v3, v2, -0x1

    aget-object v4, v0, v3

    iget v5, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeStart:I

    if-ge v2, v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget v6, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v0, v2

    if-eq v7, v4, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-ne v8, v5, :cond_1

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_5
    return-object p2
.end method

.method public localSize()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    iget v1, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeStart:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/out/NsBinder;->_scopeEnd:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/fasterxml/aalto/out/NsBinder;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "; "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/NsBinder;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " entries; of which "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/aalto/out/NsBinder;->localSize()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, " local]"

    .line 39
    .line 40
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
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
.end method
