.class public Lorg/apache/velocity/runtime/VelocimacroFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;
    }
.end annotation


# instance fields
.field private addNewAllowed:Z

.field private autoReloadLibrary:Z

.field private libModMap:Ljava/util/Map;

.field private log:Lorg/slf4j/Logger;

.field private macroLibVec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replaceAllowed:Z

.field private final rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

.field private templateLocal:Z

.field private vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->replaceAllowed:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->addNewAllowed:Z

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->templateLocal:Z

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->autoReloadLibrary:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->macroLibVec:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->libModMap:Ljava/util/Map;

    new-instance v0, Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-direct {v0, p1}, Lorg/apache/velocity/runtime/VelocimacroManager;-><init>(Lorg/apache/velocity/runtime/RuntimeServices;)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    return-void
.end method

.method private declared-synchronized canAddVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->autoReloadLibrary:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->macroLibVec:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->addNewAllowed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v0, "VM addition rejected: {}: inline VelociMacros not allowed."

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->templateLocal:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->replaceAllowed:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/runtime/VelocimacroFactory;->isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v0, "VM addition rejected: {}: inline not allowed to replace existing VM"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private getAutoload()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->autoReloadLibrary:Z

    return v0
.end method

.method private getTemplateLocalInline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->templateLocal:Z

    return v0
.end method

.method private setAddMacroPermission(Z)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->addNewAllowed:Z

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->addNewAllowed:Z

    return v0
.end method

.method private setAutoload(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->autoReloadLibrary:Z

    return-void
.end method

.method private setReplacementPermission(Z)Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->replaceAllowed:Z

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->replaceAllowed:Z

    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-virtual {v1, p1}, Lorg/apache/velocity/runtime/VelocimacroManager;->setInlineReplacesGlobal(Z)V

    return v0
.end method

.method private setTemplateLocalInline(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->templateLocal:Z

    return-void
.end method


# virtual methods
.method public addVelocimacro(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;",
            "Lorg/apache/velocity/Template;",
            ")Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p4}, Lorg/apache/velocity/runtime/VelocimacroFactory;->canAddVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    .line 20
    .line 21
    iget-boolean v5, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->replaceAllowed:Z

    .line 22
    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move-object v3, p3

    .line 26
    move-object v4, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Lorg/apache/velocity/runtime/VelocimacroManager;->addVM(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;Z)Z

    .line 28
    .line 29
    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    .line 32
    .line 33
    const-string p3, "added VM {}: source={}"

    .line 34
    .line 35
    invoke-interface {p2, p3, p1, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_2
    :goto_0
    const-string p4, "VM \'"

    .line 44
    .line 45
    const-string v0, "\' addition rejected: "

    .line 46
    .line 47
    invoke-static {p4, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    if-nez p3, :cond_3

    .line 56
    .line 57
    const-string p1, "macroArgs"

    .line 58
    .line 59
    :goto_1
    invoke-static {p4, p1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const-string p1, "sourceTemplate"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const-string p1, "macroBody"

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    const-string p1, "name"

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_2
    const-string p2, " argument was null"

    .line 74
    .line 75
    invoke-static {p1, p2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    .line 80
    .line 81
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Ljava/lang/NullPointerException;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2
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
.end method

.method public getVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/Directive;
    .locals 8

    const-string v0, "Velocimacro: Error using VM library: "

    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/velocity/runtime/VelocimacroManager;->get(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->autoReloadLibrary:Z

    if-eqz v2, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-virtual {v2, p1, p3}, Lorg/apache/velocity/runtime/VelocimacroManager;->getLibraryName(Ljava/lang/String;Lorg/apache/velocity/Template;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->libModMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;->template:Lorg/apache/velocity/Template;

    iget-wide v4, v1, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;->modificationTime:J

    invoke-virtual {v3}, Lorg/apache/velocity/runtime/resource/Resource;->getResourceLoader()Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v4, "auto-reloading VMs from VM library: {}"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide v6, v1, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;->modificationTime:J

    iget-object v3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v3, v2}, Lorg/apache/velocity/runtime/RuntimeServices;->getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;->template:Lorg/apache/velocity/Template;

    invoke-virtual {v3}, Lorg/apache/velocity/runtime/resource/Resource;->getLastModified()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;->modificationTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-virtual {v0, p1, p3, p2}, Lorg/apache/velocity/runtime/VelocimacroManager;->get(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object v1

    goto :goto_2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {p3, p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {p3, p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_4
    return-object v1
.end method

.method public initVelocimacro()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "initialization starting."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/VelocimacroFactory;->setReplacementPermission(Z)Z

    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/velocity/runtime/VelocimacroManager;->setNamespaceUsage(Z)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v3, "velocimacro.library"

    invoke-interface {v1, v3}, Lorg/apache/velocity/runtime/RuntimeServices;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v4, "\"{}\" is not set. Trying default library: {}"

    const-string v5, "velocimacro.library"

    const-string v6, "VM_global_library.vm"

    invoke-interface {v3, v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v4, "VM_global_library.vm"

    invoke-interface {v3, v4}, Lorg/apache/velocity/runtime/RuntimeServices;->getLoaderNameForResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v1, "VM_global_library.vm"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    iget-object v3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v4, "Default library not found."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->macroLibVec:Ljava/util/List;

    instance-of v4, v1, Ljava/util/Vector;

    if-eqz v4, :cond_2

    check-cast v1, Ljava/util/Vector;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->macroLibVec:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-virtual {v4, v0}, Lorg/apache/velocity/runtime/VelocimacroManager;->setRegisterFromLib(Z)V

    iget-object v4, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v5, "adding VMs from VM library: {}"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v4, v3}, Lorg/apache/velocity/runtime/RuntimeServices;->getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object v4

    new-instance v5, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;-><init>(Lorg/apache/velocity/runtime/VelocimacroFactory$1;)V

    iput-object v4, v5, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;->template:Lorg/apache/velocity/Template;

    invoke-virtual {v4}, Lorg/apache/velocity/runtime/resource/Resource;->getLastModified()J

    move-result-wide v6

    iput-wide v6, v5, Lorg/apache/velocity/runtime/VelocimacroFactory$Twonk;->modificationTime:J

    iget-object v4, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->libModMap:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v4, "VM library registration complete."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-virtual {v3, v2}, Lorg/apache/velocity/runtime/VelocimacroManager;->setRegisterFromLib(Z)V

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Velocimacro: Error using VM library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v2, v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/VelocimacroFactory;->setAddMacroPermission(Z)Z

    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v3, "velocimacro.permissions.allow.inline"

    invoke-interface {v1, v3, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/VelocimacroFactory;->setAddMacroPermission(Z)Z

    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v3, "allowInline = false: VMs can NOT be defined inline in templates"

    :goto_3
    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v3, "allowInline = true: VMs can be defined inline in templates"

    goto :goto_3

    :goto_4
    invoke-direct {p0, v2}, Lorg/apache/velocity/runtime/VelocimacroFactory;->setReplacementPermission(Z)Z

    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v3, "velocimacro.permissions.allow.inline.to.replace.global"

    invoke-interface {v1, v3, v2}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/VelocimacroFactory;->setReplacementPermission(Z)Z

    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v3, "allowInlineToOverride = true: VMs defined inline may replace previous VM definitions"

    :goto_5
    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v3, "allowInlineToOverride = false: VMs defined inline may NOT replace previous VM definitions"

    goto :goto_5

    :goto_6
    iget-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-virtual {v1, v0}, Lorg/apache/velocity/runtime/VelocimacroManager;->setNamespaceUsage(Z)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v1, "velocimacro.permissions.allow.inline.local.scope"

    invoke-interface {v0, v1, v2}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/VelocimacroFactory;->setTemplateLocalInline(Z)V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroFactory;->getTemplateLocalInline()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "allowInlineLocal = true: VMs defined inline will be local to their defining template only."

    :goto_7
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "allowInlineLocal = false: VMs defined inline will be global in scope if allowed."

    goto :goto_7

    :goto_8
    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroFactory;->getTemplateLocalInline()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/velocity/runtime/VelocimacroManager;->setTemplateLocalInlineVM(Z)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v1, "velocimacro.library.autoreload"

    invoke-interface {v0, v1, v2}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/velocity/runtime/VelocimacroFactory;->setAutoload(Z)V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroFactory;->getAutoload()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "autoload on: VM system will automatically reload global library macros"

    :goto_9
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "autoload off: VM system will not automatically reload global library macros"

    goto :goto_9

    :goto_a
    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "Velocimacro: initialization complete."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :goto_b
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroFactory;->vmManager:Lorg/apache/velocity/runtime/VelocimacroManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/apache/velocity/runtime/VelocimacroManager;->get(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
