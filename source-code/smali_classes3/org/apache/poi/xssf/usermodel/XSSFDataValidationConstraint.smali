.class public Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationConstraint;


# static fields
.field private static final LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private explicitListOfValues:[Ljava/lang/String;

.field private formula1:Ljava/lang/String;

.field private formula2:Ljava/lang/String;

.field private operator:I

.field private validationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula2(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    const/4 p2, 0x3

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isQuoted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->LIST_SPLIT_REGEX:Ljava/util/regex/Pattern;

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setExplicitListValues([Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validate()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List validation with explicit values must specify at least one value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isFormulaEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isQuoted(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isQuoted(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p0, v0, v0}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    return-object p0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
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


# virtual methods
.method public getExplicitListValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    return v0
.end method

.method public getValidationType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    return v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    iget v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    iget v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v4, 0x7

    if-eq v1, v4, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    const-string v2, " "

    const-string v4, ""

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExplicitListValues([Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->explicitListOfValues:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->setFormula1(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFormula1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    return-void
.end method

.method public setFormula2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->removeLeadingEquals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    return-void
.end method

.method public setOperator(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    return-void
.end method

.method public validate()V
    .locals 2

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A valid formula or a list of values must be specified for list validation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula1:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->validationType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->operator:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->formula2:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->isFormulaEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Between and not between comparisons require two formulae to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This validation type requires an operator to be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Formula is not specified. Formula is required for all validation types except explicit list validation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
