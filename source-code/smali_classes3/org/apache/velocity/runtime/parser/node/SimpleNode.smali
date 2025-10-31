.class public Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/parser/node/Node;


# instance fields
.field protected children:[Lorg/apache/velocity/runtime/parser/node/Node;

.field protected column:I

.field protected first:Lorg/apache/velocity/runtime/parser/Token;

.field protected firstImage:Ljava/lang/String;

.field protected id:I

.field protected info:I

.field protected invalid:Z

.field protected last:Lorg/apache/velocity/runtime/parser/Token;

.field protected lastImage:Ljava/lang/String;

.field protected line:I

.field protected literal:Ljava/lang/String;

.field protected log:Lorg/slf4j/Logger;

.field protected parent:Lorg/apache/velocity/runtime/parser/node/Node;

.field protected parser:Lorg/apache/velocity/runtime/parser/Parser;

.field protected rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

.field public state:Z

.field protected template:Lorg/apache/velocity/Template;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->invalid:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal:Ljava/lang/String;

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->id:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parser:Lorg/apache/velocity/runtime/parser/Parser;

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Parser;->currentTemplate:Lorg/apache/velocity/Template;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->template:Lorg/apache/velocity/Template;

    return-void
.end method


# virtual methods
.method public childrenAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public cleanupParserAndTokens()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parser:Lorg/apache/velocity/runtime/parser/Parser;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->first:Lorg/apache/velocity/runtime/parser/Token;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->last:Lorg/apache/velocity/runtime/parser/Token;

    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    if-ge v0, v2, :cond_2

    .line 19
    .line 20
    aget-object v1, v1, v0

    .line 21
    .line 22
    check-cast v1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    .line 23
    .line 24
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, " |_"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-static {p1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    .line 53
    .line 54
    array-length v3, v3

    .line 55
    add-int/lit8 v3, v3, -0x1

    .line 56
    .line 57
    if-ne v0, v3, :cond_0

    .line 58
    .line 59
    const-string v3, "   "

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const-string v3, " | "

    .line 63
    .line 64
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->dump(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-void
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
.end method

.method public evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->column:I

    return v0
.end method

.method public getFirstToken()Lorg/apache/velocity/runtime/parser/Token;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->first:Lorg/apache/velocity/runtime/parser/Token;

    return-object v0
.end method

.method public getFirstTokenImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->firstImage:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->info:I

    return v0
.end method

.method public getLastToken()Lorg/apache/velocity/runtime/parser/Token;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->last:Lorg/apache/velocity/runtime/parser/Token;

    return-object v0
.end method

.method public getLastTokenImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->lastImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->line:I

    return v0
.end method

.method public getLocation(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRuntimeServices()Lorg/apache/velocity/runtime/RuntimeServices;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    return-object v0
.end method

.method public getTemplate()Lorg/apache/velocity/Template;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->template:Lorg/apache/velocity/Template;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->template:Lorg/apache/velocity/Template;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->id:I

    return v0
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    move-object v0, p2

    check-cast v0, Lorg/apache/velocity/runtime/RuntimeServices;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v1, "rendering"

    invoke-interface {v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->first:Lorg/apache/velocity/runtime/parser/Token;

    iget v0, p1, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->line:I

    iget p1, p1, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->column:I

    return-object p2
.end method

.method public isInvalid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->invalid:Z

    return v0
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/SimpleNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public jjtAddChild(Lorg/apache/velocity/runtime/parser/node/Node;I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Lorg/apache/velocity/runtime/parser/node/Node;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-lt p2, v1, :cond_1

    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [Lorg/apache/velocity/runtime/parser/node/Node;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    aput-object p1, v0, p2

    return-void
.end method

.method public jjtClose()V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parser:Lorg/apache/velocity/runtime/parser/Parser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->last:Lorg/apache/velocity/runtime/parser/Token;

    return-void
.end method

.method public jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public jjtGetNumChildren()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public jjtGetParent()Lorg/apache/velocity/runtime/parser/node/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parent:Lorg/apache/velocity/runtime/parser/node/Node;

    return-object v0
.end method

.method public jjtOpen()V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parser:Lorg/apache/velocity/runtime/parser/Parser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/velocity/runtime/parser/Parser;->getToken(I)Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->first:Lorg/apache/velocity/runtime/parser/Token;

    return-void
.end method

.method public jjtSetParent(Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parent:Lorg/apache/velocity/runtime/parser/node/Node;

    return-void
.end method

.method public literal()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->first:Lorg/apache/velocity/runtime/parser/Token;

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->last:Lorg/apache/velocity/runtime/parser/Token;

    if-ne v0, v1, :cond_1

    invoke-static {v0}, Lorg/apache/velocity/runtime/parser/node/NodeUtils;->tokenLiteral(Lorg/apache/velocity/runtime/parser/Token;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->literal:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/velocity/runtime/parser/node/NodeUtils;->tokenLiteral(Lorg/apache/velocity/runtime/parser/Token;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->last:Lorg/apache/velocity/runtime/parser/Token;

    if-eq v0, v2, :cond_2

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    invoke-static {v0}, Lorg/apache/velocity/runtime/parser/node/NodeUtils;->tokenLiteral(Lorg/apache/velocity/runtime/parser/Token;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public saveTokenImages()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->first:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->firstImage:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->last:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->lastImage:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setFirstToken(Lorg/apache/velocity/runtime/parser/Token;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->first:Lorg/apache/velocity/runtime/parser/Token;

    return-void
.end method

.method public setInfo(I)V
    .locals 0

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->info:I

    return-void
.end method

.method public setInvalid()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->invalid:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    :goto_0
    const-string v2, "]"

    if-eqz v1, :cond_2

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLastToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, v1, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x32

    if-le v1, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", info="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->info:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", invalid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->invalid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", tokens="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
