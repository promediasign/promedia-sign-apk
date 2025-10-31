.class public Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;
.super Lorg/apache/velocity/runtime/parser/node/SetExecutor;
.source "SourceFile"


# instance fields
.field private final introspector:Lorg/apache/velocity/util/introspection/Introspector;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->discover(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public discover(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p3, v0, v1

    .line 6
    .line 7
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "set"

    .line 10
    .line 11
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, p1, v2, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->setMethod(Ljava/lang/reflect/Method;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_0
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :catch_1
    move-exception p1

    .line 58
    goto :goto_3

    .line 59
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    goto :goto_0

    .line 64
    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {v1, p1, p3, v0}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->setMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :goto_2
    const-string p3, "Exception while looking for property setter for \'"

    .line 79
    .line 80
    invoke-static {p3, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iget-object p3, p0, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->log:Lorg/slf4j/Logger;

    .line 85
    .line 86
    invoke-static {p3, p2, p1, p2, p1}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    throw p1

    .line 91
    :goto_3
    throw p1
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

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getIntrospector()Lorg/apache/velocity/util/introspection/Introspector;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-object v0
.end method
