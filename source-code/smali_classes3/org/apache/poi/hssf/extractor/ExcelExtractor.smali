.class public Lorg/apache/poi/hssf/extractor/ExcelExtractor;
.super Lorg/apache/poi/POIOLE2TextExtractor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;,
        Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
    }
.end annotation


# instance fields
.field private final _formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

.field private _includeBlankCells:Z

.field private _includeCellComments:Z

.field private _includeHeadersFooters:Z

.field private _includeSheetNames:Z

.field private _shouldEvaluateFormulas:Z

.field private final _wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    iput-boolean v1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-direct {p1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public static _extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getLeft()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getLeft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getCenter()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getCenter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getRight()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getRight()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;

    invoke-direct {v1, p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->isRequestHelp()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->printUsageMessage(Ljava/io/PrintStream;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->getInputFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->getInputFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    new-instance p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowSheetNames()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeSheetNames(Z)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldEvaluateFormulas()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setFormulasNotResults(Z)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowCellComments()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeCellComments(Z)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowBlankCells()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeBlankCells(Z)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldIncludeHeadersFooters()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeHeadersFooters(Z)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/POITextExtractor;->close()V

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    return-void

    :catch_0
    move-exception p0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->printUsageMessage(Ljava/io/PrintStream;)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static printUsageMessage(Ljava/io/PrintStream;)V
    .locals 4

    .line 1
    const-string v0, "Use:"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "    "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-class v1, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " [<flag> <value> [<flag> <value> [...]]] [-i <filename.xls>]"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "       -i <filename.xls> specifies input file (default is to use stdin)"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "       Flags can be set on or off by using the values \'Y\' or \'N\'."

    .line 40
    .line 41
    const-string v1, "       Following are available flags and their default values:"

    .line 42
    .line 43
    const-string v2, "       --show-sheet-names  Y"

    .line 44
    .line 45
    const-string v3, "       --evaluate-formulas Y"

    .line 46
    .line 47
    invoke-static {p0, v0, v1, v2, v3}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "       --show-comments     N"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "       --show-blanks       Y"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "       --headers-footers   Y"

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
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
.method public getText()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v3, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_BLANK_AS_NULL:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v4

    if-ge v3, v4, :cond_15

    iget-object v4, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-boolean v5, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    const-string v6, "\n"

    if-eqz v5, :cond_1

    iget-object v5, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-boolean v5, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v5

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v7

    :goto_1
    if-gt v5, v7, :cond_13

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v8

    if-nez v8, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getFirstCellNum()S

    move-result v9

    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getLastCellNum()S

    move-result v10

    iget-boolean v11, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    if-eqz v11, :cond_4

    const/4 v9, 0x0

    :cond_4
    :goto_2
    if-ge v9, v10, :cond_12

    invoke-virtual {v8, v9}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v11

    if-nez v11, :cond_5

    iget-boolean v11, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    if-eqz v11, :cond_11

    goto/16 :goto_6

    :cond_5
    sget-object v12, Lorg/apache/poi/hssf/extractor/ExcelExtractor$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v12, v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    const/4 v15, 0x2

    if-eq v13, v15, :cond_d

    const/4 v2, 0x3

    if-eq v13, v2, :cond_c

    const/4 v2, 0x4

    if-eq v13, v2, :cond_b

    const/4 v2, 0x5

    if-ne v13, v2, :cond_a

    iget-boolean v2, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    if-nez v2, :cond_6

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v12, v2

    if-eq v2, v14, :cond_9

    if-eq v2, v15, :cond_8

    const/4 v12, 0x3

    if-eq v2, v12, :cond_c

    const/4 v12, 0x4

    if-ne v2, v12, :cond_7

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected cell cached formula result type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v2

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v12

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v14

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v2

    iget-object v15, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {v15, v12, v13, v14, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v12

    if-lez v12, :cond_f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected cell type ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_4
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_c
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    iget-object v2, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {v2, v11}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_f
    :goto_5
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v2

    iget-boolean v11, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    if-eqz v11, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    const/16 v13, 0x20

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " Comment by "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    :goto_6
    add-int/lit8 v2, v10, -0x1

    if-ge v9, v2, :cond_11

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_13
    iget-boolean v2, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    if-eqz v2, :cond_14

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setFormulasNotResults(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    return-void
.end method

.method public setIncludeBlankCells(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    return-void
.end method
