.class public Lorg/apache/xmlbeans/impl/common/SystemCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;


# instance fields
.field private tl_saxLoaders:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "Could not instantiate class "

    .line 2
    .line 3
    const-string v1, "Value for system property \"xmlbean.systemcacheimpl\" points to a class ("

    .line 4
    .line 5
    new-instance v2, Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/common/SystemCache;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v2, Lorg/apache/xmlbeans/impl/common/SystemCache;->INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 11
    .line 12
    const-string v2, "xmlbean.systemcacheimpl"

    .line 13
    .line 14
    invoke-static {v2}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    instance-of v4, v3, Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_0
    new-instance v3, Ljava/lang/ClassCastException;

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuffer;

    .line 36
    .line 37
    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    const-string v1, ") which does not derive from SystemCache"

    .line 44
    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v3, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    .line 59
    goto :goto_1

    .line 60
    :catch_2
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    const-string v4, " as specified by \"xmlbean.systemcacheimpl\". A public empty constructor may be missing."

    .line 65
    .line 66
    invoke-static {v0, v2, v4}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v3

    .line 74
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    const-string v4, " as specified by \"xmlbean.systemcacheimpl\". An empty constructor may be missing."

    .line 77
    .line 78
    invoke-static {v0, v2, v4}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v3

    .line 86
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    const-string v3, "Cache class "

    .line 89
    .line 90
    const-string v4, " specified by \"xmlbean.systemcacheimpl\" was not found."

    .line 91
    .line 92
    invoke-static {v3, v2, v4}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_1
    const/4 v3, 0x0

    .line 101
    :goto_3
    if-eqz v3, :cond_2

    .line 102
    .line 103
    check-cast v3, Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 104
    .line 105
    sput-object v3, Lorg/apache/xmlbeans/impl/common/SystemCache;->INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 106
    .line 107
    :cond_2
    return-void
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

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/SystemCache;->tl_saxLoaders:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final get()Lorg/apache/xmlbeans/impl/common/SystemCache;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/SystemCache;->INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;

    return-object v0
.end method

.method public static final declared-synchronized set(Lorg/apache/xmlbeans/impl/common/SystemCache;)V
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/common/SystemCache;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/apache/xmlbeans/impl/common/SystemCache;->INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addToTypeLoaderCache(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public getFromTypeLoaderCache(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSaxLoader()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/SystemCache;->tl_saxLoaders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setSaxLoader(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/SystemCache;->tl_saxLoaders:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
