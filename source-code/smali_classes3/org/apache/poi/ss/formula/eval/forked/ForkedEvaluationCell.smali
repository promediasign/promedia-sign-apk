.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private _booleanValue:Z

.field private _cellType:Lorg/apache/poi/ss/usermodel/CellType;

.field private _errorValue:I

.field private final _masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

.field private _numberValue:D

.field private final _sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

.field private _stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-void
.end method

.method private checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong data type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copyValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected data type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    return-void

    :cond_3
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    return-void

    :cond_4
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public getBooleanCellValue()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    return v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultType()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getErrorCellValue()I
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    return v0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getIdentityKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 12
    .line 13
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-class v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    .line 27
    .line 28
    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 29
    .line 30
    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-class v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    .line 44
    .line 45
    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 46
    .line 47
    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-class v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 57
    .line 58
    if-ne v0, v1, :cond_3

    .line 59
    .line 60
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    .line 61
    .line 62
    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 63
    .line 64
    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-class p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    .line 74
    .line 75
    if-ne v0, p1, :cond_4

    .line 76
    .line 77
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    .line 78
    .line 79
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "Unexpected value class ("

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v2, ")"

    .line 92
    .line 93
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
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
