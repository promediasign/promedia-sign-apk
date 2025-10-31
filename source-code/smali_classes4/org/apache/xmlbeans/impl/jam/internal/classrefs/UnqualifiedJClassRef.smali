.class public Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRef;


# instance fields
.field private mContext:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;

.field private mQualifiedClassname:Ljava/lang/String;

.field private mUnqualifiedClassname:Ljava/lang/String;


# direct methods
.method private checkAlreadyQualified(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->isUnresolvedType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private checkExplicitImport(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;->getImportSpecs()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->lastSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, v0, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private checkJavaLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "java.lang."

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->isUnresolvedType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private checkSamePackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->isUnresolvedType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static create(Ljava/lang/String;Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;)Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRef;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unqualified names currently disabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static lastSegment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private qualifyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->checkExplicitImport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->checkJavaLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->checkSamePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->checkAlreadyQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getQualifiedName()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mQualifiedClassname:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mUnqualifiedClassname:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v1, 0x5b

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mUnqualifiedClassname:Ljava/lang/String;

    .line 17
    .line 18
    if-eq v0, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x0

    .line 25
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 26
    .line 27
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mUnqualifiedClassname:Ljava/lang/String;

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v5, 0x0

    .line 39
    :goto_0
    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->qualifyName(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    if-lez v5, :cond_4

    .line 46
    .line 47
    new-instance v2, Ljava/io/StringWriter;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 50
    .line 51
    .line 52
    :goto_1
    if-ge v3, v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/io/StringWriter;->write(I)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/16 v1, 0x4c

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/io/StringWriter;->write(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/16 v0, 0x3b

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->write(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_4
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mQualifiedClassname:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mQualifiedClassname:Ljava/lang/String;

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v1, "unable to handle unqualified java type reference \'"

    .line 85
    .line 86
    const-string v2, " ["

    .line 87
    .line 88
    invoke-static {v1, v4, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mUnqualifiedClassname:Ljava/lang/String;

    .line 93
    .line 94
    const-string v3, "]\'. This is still partially NYI."

    .line 95
    .line 96
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
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

.method public getRefClass()Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRefContext;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/UnqualifiedJClassRef;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v0

    return-object v0
.end method
