.class public Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field private identifier:Ljava/lang/String;

.field protected strictRef:Z

.field protected uberInfo:Lorg/apache/velocity/util/introspection/Info;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->strictRef:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->strictRef:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v4, v1}, Lorg/apache/velocity/context/InternalContextAdapter;->icacheGet(Ljava/lang/Object;)Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v3, v0, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->contextData:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-ne v3, v5, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->thingy:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lorg/apache/velocity/util/introspection/VelPropertyGet;

    .line 26
    .line 27
    :cond_0
    :goto_0
    move-object v9, v0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :catch_1
    move-exception v0

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    iget-object v0, v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 36
    .line 37
    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v5, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 44
    .line 45
    invoke-interface {v0, v2, v3, v5}, Lorg/apache/velocity/util/introspection/Uberspect;->getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-interface {v0}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->isCacheable()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    new-instance v3, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;

    .line 60
    .line 61
    invoke-direct {v3}, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iput-object v5, v3, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->contextData:Ljava/lang/Class;

    .line 69
    .line 70
    iput-object v0, v3, Lorg/apache/velocity/util/introspection/IntrospectionCacheData;->thingy:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-interface {v4, v1, v3}, Lorg/apache/velocity/context/InternalContextAdapter;->icachePut(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/IntrospectionCacheData;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    const/4 v0, 0x0

    .line 77
    if-nez v9, :cond_3

    .line 78
    .line 79
    iget-boolean v3, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->strictRef:Z

    .line 80
    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_2
    new-instance v0, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v4, "Object \'"

    .line 89
    .line 90
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, "\' does not contain property \'"

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 110
    .line 111
    const-string v4, "\'"

    .line 112
    .line 113
    invoke-static {v2, v4, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v7, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 120
    .line 121
    invoke-virtual {v2}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 126
    .line 127
    invoke-virtual {v2}, Lorg/apache/velocity/util/introspection/Info;->getLine()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 132
    .line 133
    invoke-virtual {v2}, Lorg/apache/velocity/util/introspection/Info;->getColumn()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    const/4 v6, 0x0

    .line 138
    move-object v4, v0

    .line 139
    invoke-direct/range {v4 .. v10}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_3
    :try_start_1
    invoke-interface {v9, v2}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 147
    return-object v0

    .line 148
    :catch_2
    move-exception v0

    .line 149
    move-object v3, v0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v4, "ASTIdentifier() : exception invoking method for identifier \'"

    .line 153
    .line 154
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v4, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v4, "\' in "

    .line 163
    .line 164
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v2, v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 179
    .line 180
    invoke-static {v2, v0, v3, v0, v3}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    throw v0

    .line 185
    :catch_3
    move-exception v0

    .line 186
    move-object v2, v0

    .line 187
    throw v2

    .line 188
    :catch_4
    return-object v0

    .line 189
    :catch_5
    move-exception v0

    .line 190
    move-object v10, v0

    .line 191
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    instance-of v3, v0, Ljava/lang/Exception;

    .line 196
    .line 197
    const-string v11, " threw exception "

    .line 198
    .line 199
    const-string v12, "\' in  "

    .line 200
    .line 201
    const-string v13, "Invocation of method \'"

    .line 202
    .line 203
    if-eqz v3, :cond_4

    .line 204
    .line 205
    :try_start_2
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 206
    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    move-object v7, v0

    .line 216
    check-cast v7, Ljava/lang/Exception;

    .line 217
    .line 218
    iget-object v8, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    .line 219
    .line 220
    move-object/from16 v4, p2

    .line 221
    .line 222
    invoke-static/range {v3 .. v8}, Lorg/apache/velocity/app/event/EventHandlerUtil;->methodException(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 226
    return-object v0

    .line 227
    :catch_6
    new-instance v0, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 228
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    move-object v2, v0

    .line 290
    invoke-direct/range {v2 .. v8}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_4
    new-instance v0, Lorg/apache/velocity/exception/MethodInvocationException;

    .line 295
    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 337
    .line 338
    .line 339
    move-result-object v11

    .line 340
    invoke-interface {v9}, Lorg/apache/velocity/util/introspection/VelPropertyGet;->getMethodName()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    invoke-virtual/range {p0 .. p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    .line 353
    .line 354
    .line 355
    move-result v15

    .line 356
    move-object v9, v0

    .line 357
    move-object v10, v2

    .line 358
    invoke-direct/range {v9 .. v15}, Lorg/apache/velocity/exception/MethodInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;II)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v3, "ASTIdentifier.execute() : identifier = "

    .line 365
    .line 366
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    .line 379
    .line 380
    invoke-static {v3, v2, v0, v2, v0}, Lorg/apache/ftpserver/main/a;->r(Lorg/slf4j/Logger;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lorg/apache/velocity/exception/VelocityException;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    throw v0

    .line 385
    :goto_3
    throw v0
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
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->useStringInterning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->identifier:Ljava/lang/String;

    new-instance p1, Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "runtime.references.strict"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;->strictRef:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->saveTokenImages()V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p2
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTIdentifier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
