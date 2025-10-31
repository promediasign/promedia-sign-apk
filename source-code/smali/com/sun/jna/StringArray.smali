.class public Lcom/sun/jna/StringArray;
.super Lcom/sun/jna/Memory;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/Function$PostCallRead;


# instance fields
.field private encoding:Ljava/lang/String;

.field private natives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/jna/NativeString;",
            ">;"
        }
    .end annotation
.end field

.field private original:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/sun/jna/WString;)V
    .locals 1

    .line 1
    const-string v0, "--WIDE-STRING--"

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int v0, v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/StringArray;->natives:Ljava/util/List;

    iput-object p1, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/jna/StringArray;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sun/jna/NativeString;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p2}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/jna/StringArray;->natives:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/sun/jna/NativeString;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    :cond_0
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int v1, v1, v0

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4, v2}, Lcom/sun/jna/Memory;->setPointer(JLcom/sun/jna/Pointer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget p2, Lcom/sun/jna/Native;->POINTER_SIZE:I

    array-length p1, p1

    mul-int p2, p2, p1

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/sun/jna/Memory;->setPointer(JLcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .line 5
    if-eqz p2, :cond_0

    const-string p2, "--WIDE-STRING--"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 7

    iget-object v0, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    instance-of v0, v0, [Lcom/sun/jna/WString;

    const-string v1, "--WIDE-STRING--"

    iget-object v2, p0, Lcom/sun/jna/StringArray;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget v3, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int v3, v3, v2

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/sun/jna/Memory;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v3

    if-eqz v3, :cond_1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v3, v4, v5}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/sun/jna/StringArray;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v0, :cond_2

    new-instance v4, Lcom/sun/jna/WString;

    invoke-direct {v4, v3}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "--WIDE-STRING--"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/sun/jna/StringArray;->encoding:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "const wchar_t*[]"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "const char*[]"

    .line 15
    .line 16
    :goto_0
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/sun/jna/StringArray;->original:[Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
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
.end method
