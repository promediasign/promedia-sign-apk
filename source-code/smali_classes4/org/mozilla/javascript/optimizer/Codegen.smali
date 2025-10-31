.class public Lorg/mozilla/javascript/optimizer/Codegen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# static fields
.field static final DEFAULT_MAIN_METHOD_CLASS:Ljava/lang/String; = "org.mozilla.javascript.optimizer.OptRuntime"

.field static final FUNCTION_CONSTRUCTOR_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

.field static final FUNCTION_INIT_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

.field static final ID_FIELD_NAME:Ljava/lang/String; = "_id"

.field static final REGEXP_INIT_METHOD_NAME:Ljava/lang/String; = "_reInit"

.field static final REGEXP_INIT_METHOD_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/Context;)V"

.field private static final SUPER_CLASS_NAME:Ljava/lang/String; = "org.mozilla.javascript.NativeFunction"

.field private static final globalLock:Ljava/lang/Object;

.field private static globalSerialClassCounter:I


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private directCallTargets:Lorg/mozilla/javascript/ObjArray;

.field private itsConstantList:[D

.field private itsConstantListSize:I

.field mainClassName:Ljava/lang/String;

.field mainClassSignature:Ljava/lang/String;

.field private mainMethodClass:Ljava/lang/String;

.field private scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

.field scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/optimizer/Codegen;->globalLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "org.mozilla.javascript.optimizer.OptRuntime"

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    return-void
.end method

.method private static addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 4

    const-string v0, "wrapDouble"

    const-string v1, "(D)Ljava/lang/Double;"

    const/16 v2, 0xb8

    const-string v3, "org/mozilla/javascript/optimizer/OptRuntime"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static badTree()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad tree in codegen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V
    .locals 3

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    check-cast p1, [B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/mozilla/javascript/SecurityController;->createLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object p2

    :try_start_0
    invoke-interface {p2, v0, p1}, Lorg/mozilla/javascript/GeneratedClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mozilla/javascript/GeneratedClassLoader;->linkClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed optimizer package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private emitConstantDudeInitializers(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 12

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "()V"

    .line 7
    .line 8
    const/16 v2, 0x18

    .line 9
    .line 10
    const-string v3, "<clinit>"

    .line 11
    .line 12
    invoke-virtual {p1, v3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-eq v3, v0, :cond_2

    .line 20
    .line 21
    aget-wide v4, v1, v3

    .line 22
    .line 23
    const-string v6, "_k"

    .line 24
    .line 25
    invoke-static {v3, v6}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-static {v4, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->getStaticConstantWrapperType(D)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const/16 v8, 0xa

    .line 34
    .line 35
    invoke-virtual {p1, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    .line 36
    .line 37
    .line 38
    double-to-int v8, v4

    .line 39
    int-to-double v9, v8

    .line 40
    cmpl-double v11, v9, v4

    .line 41
    .line 42
    if-nez v11, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 45
    .line 46
    .line 47
    const-string v4, "valueOf"

    .line 48
    .line 49
    const-string v5, "(I)Ljava/lang/Integer;"

    .line 50
    .line 51
    const/16 v8, 0xb8

    .line 52
    .line 53
    const-string v9, "java/lang/Integer"

    .line 54
    .line 55
    invoke-virtual {p1, v8, v9, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p1, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    const/16 v4, 0xb3

    .line 66
    .line 67
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/16 v0, 0xb1

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 81
    .line 82
    .line 83
    return-void
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
.end method

.method private emitDirectConstructor(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 11

    iget-object v0, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    iget-object v0, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v1, 0x5

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v7, "createObject"

    const-string v8, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    const/16 v9, 0xb6

    const-string v10, "org/mozilla/javascript/BaseFunction"

    invoke-virtual {p1, v9, v10, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    :goto_0
    if-ge v4, v0, :cond_0

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v6, v5, 0x4

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    iget-object v2, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0xb8

    invoke-virtual {p1, v4, v0, v2, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result p2

    const/16 v0, 0x59

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v0, 0xc1

    const-string v2, "org/mozilla/javascript/Scriptable"

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v0, 0x99

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 v0, 0xc0

    invoke-virtual {p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v0, 0xb0

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v1, v1, 0x6

    int-to-short p2, v1

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private emitRegExpInit(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v6, v5

    if-eq v3, v6, :cond_0

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    return-void

    :cond_1
    const-string v3, "_reInit"

    const-string v4, "(Lorg/mozilla/javascript/Context;)V"

    const/16 v5, 0xa

    invoke-virtual {v1, v3, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v3, 0x4a

    const-string v4, "_reInitDone"

    const-string v6, "Z"

    invoke-virtual {v1, v4, v6, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v3, 0xb2

    iget-object v7, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v1, v3, v7, v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v3

    const/16 v7, 0x99

    invoke-virtual {v1, v7, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 v7, 0xb1

    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v3, "checkRegExpProxy"

    const-string v8, "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;"

    const/16 v9, 0xb8

    const-string v10, "org/mozilla/javascript/ScriptRuntime"

    invoke-virtual {v1, v9, v10, v3, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v10, v9

    const/16 v11, 0xb3

    if-eq v8, v10, :cond_4

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_2
    if-eq v12, v10, :cond_3

    invoke-virtual {v0, v9, v12}, Lorg/mozilla/javascript/optimizer/Codegen;->getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v12}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v15

    const-string v7, "Ljava/lang/Object;"

    invoke-virtual {v1, v13, v7, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    if-nez v15, :cond_2

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    :goto_3
    const-string v14, "compileRegExp"

    const-string v15, "(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;"

    const/16 v2, 0xb9

    const-string v5, "org/mozilla/javascript/RegExpProxy"

    invoke-virtual {v1, v2, v5, v14, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v1, v11, v2, v13, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/16 v5, 0xa

    const/16 v7, 0xb1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/16 v5, 0xa

    const/16 v7, 0xb1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v1, v11, v2, v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateCallMethod(Lorg/mozilla/classfile/ClassFileWriter;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v3, 0x11

    const-string v4, "call"

    invoke-virtual {v1, v4, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v4, "hasTopCall"

    const-string v5, "(Lorg/mozilla/javascript/Context;)Z"

    const/16 v6, 0xb8

    const-string v7, "org/mozilla/javascript/ScriptRuntime"

    invoke-virtual {v1, v6, v7, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9a

    invoke-virtual {v1, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual/range {p1 .. p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    const-string v10, "doTopCall"

    const-string v11, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;"

    invoke-virtual {v1, v6, v7, v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xb0

    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v2, v2

    if-gt v5, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "_id"

    const-string v11, "I"

    const/16 v12, 0xb4

    invoke-virtual {v1, v12, v8, v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v1, v3, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2
    if-eq v8, v2, :cond_5

    iget-object v11, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v11, v11, v8

    if-eqz v5, :cond_3

    if-nez v8, :cond_2

    invoke-virtual {v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v10

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v1, v3, v12, v10}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :cond_3
    :goto_3
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    const/16 v13, 0x6e

    if-ne v12, v13, :cond_4

    invoke-static {v11}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v12

    invoke-virtual {v12}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v12, v12, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v13, 0x0

    :goto_4
    if-eq v13, v12, :cond_4

    const/16 v14, 0xbe

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v15

    const/16 v4, 0xa4

    invoke-virtual {v1, v4, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {v1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v4, 0x32

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v4, 0xa7

    invoke-virtual {v1, v4, v15}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-virtual {v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop(I)V

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v14, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v4, v12, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateCode(Ljava/lang/String;)[B
    .locals 8

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x89

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v4, v2

    if-gt v4, v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v2

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    new-instance v5, Lorg/mozilla/classfile/ClassFileWriter;

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v7, "org.mozilla.javascript.NativeFunction"

    invoke-direct {v5, v6, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "I"

    const/4 v6, 0x2

    const-string v7, "_id"

    invoke-virtual {v5, v7, v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    if-eqz v3, :cond_4

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateFunctionConstructor(Lorg/mozilla/classfile/ClassFileWriter;)V

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "org/mozilla/javascript/Script"

    invoke-virtual {v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInterface(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateScriptCtor(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateMain(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-static {v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateExecute(Lorg/mozilla/classfile/ClassFileWriter;)V

    :cond_5
    invoke-direct {p0, v5, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->generateCallMethod(Lorg/mozilla/classfile/ClassFileWriter;Z)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->generateResumeGenerator(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-direct {p0, v5, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->generateNativeFunctionOverrides(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length p1, p1

    :goto_3
    if-eq v1, p1, :cond_7

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v0, v0, v1

    new-instance v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;

    invoke-direct {v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;-><init>()V

    iput-object v5, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    iput-object p0, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v3, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v0, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    iput v1, v2, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFnIndex:I

    invoke-virtual {v2}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateBodyCode()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_6

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->generateFunctionInit(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->emitDirectConstructor(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->emitRegExpInit(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->emitConstantDudeInitializers(Lorg/mozilla/classfile/ClassFileWriter;)V

    invoke-virtual {v5}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private static generateExecute(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 4

    const-string v0, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    const/16 v1, 0x11

    const-string v2, "exec"

    invoke-virtual {p0, v2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v1, 0x59

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call"

    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v3, 0xb6

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateFunctionConstructor(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 10

    const-string v0, "<init>"

    const-string v1, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v3, "org.mozilla.javascript.NativeFunction"

    const-string v4, "()V"

    const/16 v5, 0xb7

    invoke-virtual {p1, v5, v3, v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id"

    const-string v6, "I"

    const/16 v7, 0xb5

    invoke-virtual {p1, v7, v3, v4, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v6, 0x89

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v6, v6

    if-eq v4, v6, :cond_6

    sub-int v7, v6, v4

    if-gt v3, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {p1, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v3, v4

    :goto_3
    if-eq v3, v6, :cond_5

    if-eqz v2, :cond_4

    if-ne v3, v4, :cond_3

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v1

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v4

    invoke-virtual {p1, v0, v7, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :cond_4
    :goto_4
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v7, v7, v3

    invoke-static {v7}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v7

    iget-object v8, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/optimizer/Codegen;->getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    invoke-virtual {p1, v5, v8, v7, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xb1

    invoke-virtual {p1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void

    :cond_6
    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private generateFunctionInit(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 5

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    const-string v2, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    invoke-virtual {p1, v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const-string v1, "org/mozilla/javascript/NativeFunction"

    const-string v3, "initScriptFunction"

    const/16 v4, 0xb6

    invoke-virtual {p1, v4, v1, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v0, "_reInit"

    const-string v1, "(Lorg/mozilla/javascript/Context;)V"

    const/16 v2, 0xb8

    invoke-virtual {p1, v2, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0xb1

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateMain(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 5

    const-string v0, "([Ljava/lang/String;)V"

    const/16 v1, 0x9

    const-string v2, "main"

    invoke-virtual {p1, v2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v0, 0xbb

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v0, 0x59

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v3, "()V"

    const/16 v4, 0xb7

    invoke-virtual {p1, v4, v0, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    const-string v1, "(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V"

    const/16 v3, 0xb8

    invoke-virtual {p1, v3, v0, v2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private generateNativeFunctionOverrides(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "getLanguageVersion"

    const-string v3, "()I"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    iget-object v2, v0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x7

    if-eq v6, v7, :cond_10

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_11

    :cond_0
    const-string v8, "()Ljava/lang/String;"

    const/4 v9, 0x3

    packed-switch v6, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_0
    const-string v8, "isGeneratorFunction"

    const-string v10, "()Z"

    invoke-virtual {v1, v8, v10, v7}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    :goto_1
    const/4 v7, 0x1

    goto :goto_3

    :pswitch_1
    const-string v7, "getParamOrVarConst"

    const-string v8, "(I)Z"

    invoke-virtual {v1, v7, v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/4 v7, 0x3

    goto :goto_3

    :pswitch_2
    const-string v7, "getEncodedSource"

    invoke-virtual {v1, v7, v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual/range {p1 .. p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string v7, "getParamOrVarName"

    const-string v8, "(I)Ljava/lang/String;"

    invoke-virtual {v1, v7, v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/4 v7, 0x2

    goto :goto_3

    :pswitch_4
    const-string v7, "getParamAndVarCount"

    :goto_2
    invoke-virtual {v1, v7, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :pswitch_5
    const-string v7, "getParamCount"

    goto :goto_2

    :pswitch_6
    const-string v7, "getFunctionName"

    invoke-virtual {v1, v7, v8, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_1

    :goto_3
    iget-object v8, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v8, v8

    if-le v8, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_id"

    const-string v12, "I"

    const/16 v13, 0xb4

    invoke-virtual {v1, v13, v10, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v1, v4, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v10

    goto :goto_4

    :cond_1
    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    if-eq v11, v8, :cond_f

    iget-object v13, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v13, v13, v11

    if-nez v11, :cond_2

    if-le v8, v4, :cond_3

    invoke-virtual {v1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v12

    goto :goto_6

    :cond_2
    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v1, v10, v14, v12}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :cond_3
    :goto_6
    const/16 v14, 0xb0

    packed-switch v6, :pswitch_data_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_7
    instance-of v14, v13, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v14, :cond_4

    check-cast v13, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result v13

    goto :goto_8

    :cond_4
    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    :goto_7
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_10

    :pswitch_8
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v14

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v13

    if-nez v14, :cond_5

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_7

    :cond_5
    if-ne v14, v4, :cond_6

    aget-boolean v13, v13, v5

    :goto_8
    invoke-virtual {v1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    goto :goto_7

    :cond_6
    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    add-int/lit8 v15, v14, -0x1

    invoke-virtual {v1, v4, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v15

    const/4 v9, 0x0

    :goto_9
    if-eq v9, v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v16

    if-eqz v16, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    if-nez v9, :cond_8

    invoke-virtual {v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    goto :goto_a

    :cond_8
    add-int/lit8 v4, v9, -0x1

    invoke-virtual {v1, v15, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :goto_a
    aget-boolean v4, v13, v9

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    goto :goto_9

    :pswitch_9
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceStart()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceEnd()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const-string v4, "substring"

    const-string v9, "(II)Ljava/lang/String;"

    const/16 v13, 0xb6

    const-string v15, "java/lang/String"

    invoke-virtual {v1, v13, v15, v4, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v1, v14}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_10

    :pswitch_a
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v4

    const/4 v9, 0x1

    if-nez v4, :cond_9

    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_b

    :cond_9
    if-ne v4, v9, :cond_a

    invoke-virtual {v13, v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    invoke-virtual {v1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    add-int/lit8 v15, v4, -0x1

    invoke-virtual {v1, v9, v15}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v15

    const/4 v9, 0x0

    :goto_c
    if-eq v9, v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v17

    if-eqz v17, :cond_b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    invoke-virtual {v13, v9}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v2

    if-nez v9, :cond_c

    invoke-virtual {v1, v15}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    goto :goto_d

    :cond_c
    add-int/lit8 v14, v9, -0x1

    invoke-virtual {v1, v15, v14, v5}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    :goto_d
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0xac

    const/16 v14, 0xb0

    goto :goto_c

    :pswitch_b
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 v2, 0xac

    goto/16 :goto_7

    :pswitch_c
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    goto/16 :goto_7

    :pswitch_d
    invoke-virtual {v13}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v9, 0x89

    if-ne v4, v9, :cond_d

    const-string v4, ""

    :goto_e
    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const/16 v4, 0xb0

    goto :goto_f

    :cond_d
    check-cast v13, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :goto_f
    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :cond_e
    :goto_10
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x3

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    :goto_11
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private generateResumeGenerator(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    .line 5
    .line 6
    array-length v4, v3

    .line 7
    const/4 v5, 0x1

    .line 8
    if-ge v1, v4, :cond_1

    .line 9
    .line 10
    aget-object v3, v3, v1

    .line 11
    .line 12
    invoke-static {v3}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-nez v2, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    const-string v1, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 26
    .line 27
    const/16 v2, 0x11

    .line 28
    .line 29
    const-string v3, "resumeGenerator"

    .line 30
    .line 31
    invoke-virtual {p1, v3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "_id"

    .line 64
    .line 65
    const-string v3, "I"

    .line 66
    .line 67
    const/16 v4, 0xb4

    .line 68
    .line 69
    invoke-virtual {p1, v4, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    .line 73
    .line 74
    array-length v1, v1

    .line 75
    sub-int/2addr v1, v5

    .line 76
    invoke-virtual {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    :goto_1
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    .line 88
    .line 89
    array-length v4, v3

    .line 90
    const/16 v5, 0xb0

    .line 91
    .line 92
    const/4 v6, 0x6

    .line 93
    if-ge v0, v4, :cond_4

    .line 94
    .line 95
    aget-object v3, v3, v0

    .line 96
    .line 97
    invoke-virtual {p1, v1, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    .line 98
    .line 99
    .line 100
    invoke-static {v3}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v6, "("

    .line 109
    .line 110
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    .line 114
    .line 115
    const-string v7, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;"

    .line 116
    .line 117
    invoke-static {v6, v7, v4}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 122
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, "_gen"

    .line 136
    .line 137
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const/16 v7, 0xb8

    .line 145
    .line 146
    invoke-virtual {p1, v7, v6, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_3
    const/16 v3, 0xa7

    .line 154
    .line 155
    invoke-virtual {p1, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 156
    .line 157
    .line 158
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 171
    .line 172
    .line 173
    return-void
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
.end method

.method private static generateScriptCtor(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 5

    const-string v0, "<init>"

    const-string v1, "()V"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/16 v3, 0xb7

    const-string v4, "org.mozilla.javascript.NativeFunction"

    invoke-virtual {p0, v3, v4, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    const-string v3, "I"

    const/16 v4, 0xb5

    invoke-virtual {p0, v4, v0, v1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static getStaticConstantWrapperType(D)Ljava/lang/String;
    .locals 3

    double-to-int v0, p0

    int-to-double v0, v0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_0

    const-string p0, "Ljava/lang/Integer;"

    return-object p0

    :cond_0
    const-string p0, "Ljava/lang/Double;"

    return-object p0
.end method

.method private static initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    new-instance v3, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-direct {v3, v2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;-><init>(Lorg/mozilla/javascript/ast/FunctionNode;)V

    invoke-static {v2}, Lorg/mozilla/javascript/optimizer/Codegen;->initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initScriptNodesData(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    invoke-static {p1, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p1

    new-array v1, p1, [Lorg/mozilla/javascript/ast/ScriptNode;

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 4

    const-string v0, "instance"

    const-string v1, "Ljava/lang/Object;"

    const/16 v2, 0xb2

    const-string v3, "org/mozilla/javascript/Undefined"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private transform(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 7

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getOptimizationLevel()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    const/16 v3, 0x89

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v2, :cond_2

    invoke-static {p1, v3}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v4

    iget-object v5, v4, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, v4, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v2, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v2}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->directCallTargets:Lorg/mozilla/javascript/ObjArray;

    :cond_3
    new-instance v2, Lorg/mozilla/javascript/optimizer/OptTransformer;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->directCallTargets:Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v2, v1, v3}, Lorg/mozilla/javascript/optimizer/OptTransformer;-><init>(Ljava/util/Map;Lorg/mozilla/javascript/ObjArray;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2, p1, v1}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/CompilerEnvirons;)V

    if-lez v0, :cond_4

    new-instance v0, Lorg/mozilla/javascript/optimizer/Optimizer;

    invoke-direct {v0}, Lorg/mozilla/javascript/optimizer/Optimizer;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/optimizer/Optimizer;->optimize(Lorg/mozilla/javascript/ast/ScriptNode;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public cleanName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "anonymous"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "script"

    :goto_0
    return-object p1
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lorg/mozilla/javascript/optimizer/Codegen;->globalLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v3, Lorg/mozilla/javascript/optimizer/Codegen;->globalSerialClassCounter:I

    add-int/2addr v3, v1

    sput v3, Lorg/mozilla/javascript/optimizer/Codegen;->globalSerialClassCounter:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "c"

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\W"

    const-string v5, "_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "_"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "org.mozilla.javascript.gen."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, v2

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lorg/mozilla/javascript/optimizer/Codegen;->compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v0

    aput-object p1, p2, v1

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->transform(Lorg/mozilla/javascript/ast/ScriptNode;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->initScriptNodesData(Lorg/mozilla/javascript/ast/ScriptNode;)V

    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-static {p2}, Lorg/mozilla/classfile/ClassFileWriter;->classNameToSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-direct {p0, p4}, Lorg/mozilla/javascript/optimizer/Codegen;->generateCode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p3, p4}, Lorg/mozilla/javascript/optimizer/Codegen;->defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p3

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p3

    aget-object p3, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p4, v1, p1

    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeFunction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unable to instantiate compiled class:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Script;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate compiled class:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_c_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->cleanName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p1, :cond_0

    const-string v2, "Ljava/lang/Object;D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_re"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_i"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->getExisting(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/RhinoException;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public pushNumberAsObject(Lorg/mozilla/classfile/ClassFileWriter;D)V
    .locals 8

    .line 1
    const-string v0, "org/mozilla/javascript/ScriptRuntime"

    .line 2
    .line 3
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 4
    .line 5
    const-string v3, "Ljava/lang/Double;"

    .line 6
    .line 7
    const/16 v4, 0xb2

    .line 8
    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    cmpl-double v7, p2, v5

    .line 12
    .line 13
    if-nez v7, :cond_1

    .line 14
    .line 15
    div-double/2addr v1, p2

    .line 16
    cmpl-double v7, v1, v5

    .line 17
    .line 18
    if-lez v7, :cond_0

    .line 19
    .line 20
    const-string p2, "zeroObj"

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, v4, v0, p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    :goto_1
    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_1
    const-string v5, "org/mozilla/javascript/optimizer/OptRuntime"

    .line 36
    .line 37
    cmpl-double v6, p2, v1

    .line 38
    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    const-string p2, "oneObj"

    .line 42
    .line 43
    invoke-virtual {p1, v4, v5, p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 48
    .line 49
    cmpl-double v6, p2, v1

    .line 50
    .line 51
    if-nez v6, :cond_3

    .line 52
    .line 53
    const-string p2, "minusOneObj"

    .line 54
    .line 55
    invoke-virtual {p1, v4, v5, p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    const-string p2, "NaNobj"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    .line 69
    .line 70
    const/16 v1, 0x7d0

    .line 71
    .line 72
    if-lt v0, v1, :cond_5

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    const/4 v1, 0x0

    .line 76
    if-nez v0, :cond_6

    .line 77
    .line 78
    const/16 v2, 0x40

    .line 79
    .line 80
    new-array v2, v2, [D

    .line 81
    .line 82
    iput-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    :goto_2
    if-eq v3, v0, :cond_7

    .line 89
    .line 90
    aget-wide v5, v2, v3

    .line 91
    .line 92
    cmpl-double v7, v5, p2

    .line 93
    .line 94
    if-eqz v7, :cond_7

    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    array-length v2, v2

    .line 100
    if-ne v0, v2, :cond_8

    .line 101
    .line 102
    mul-int/lit8 v2, v0, 0x2

    .line 103
    .line 104
    new-array v2, v2, [D

    .line 105
    .line 106
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 107
    .line 108
    invoke-static {v5, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    iput-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 112
    .line 113
    :cond_8
    move v1, v3

    .line 114
    :goto_3
    if-ne v1, v0, :cond_9

    .line 115
    .line 116
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 117
    .line 118
    aput-wide p2, v2, v0

    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    iput v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    .line 123
    .line 124
    :cond_9
    const-string v0, "_k"

    .line 125
    .line 126
    invoke-static {v1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {p2, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->getStaticConstantWrapperType(D)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    iget-object p3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1, v4, p3, v0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_4
    return-void
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

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setMainMethodClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    return-void
.end method
