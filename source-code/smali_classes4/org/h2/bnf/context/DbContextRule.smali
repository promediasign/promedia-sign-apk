.class public Lorg/h2/bnf/context/DbContextRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/bnf/Rule;


# static fields
.field public static final COLUMN:I = 0x0

.field public static final COLUMN_ALIAS:I = 0x4

.field public static final NEW_TABLE_ALIAS:I = 0x3

.field public static final PROCEDURE:I = 0x6

.field public static final SCHEMA:I = 0x5

.field public static final TABLE:I = 0x1

.field public static final TABLE_ALIAS:I = 0x2


# instance fields
.field private columnType:Ljava/lang/String;

.field private final contents:Lorg/h2/bnf/context/DbContents;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/bnf/context/DbContents;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    iput p2, p0, Lorg/h2/bnf/context/DbContextRule;->type:I

    return-void
.end method

.method private autoCompleteProcedure(Lorg/h2/bnf/Sentence;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbContents;->getDefaultSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x28

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    new-instance v7, Lorg/h2/bnf/RuleElement;

    const-string v8, "Function"

    invoke-direct {v7, v3, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lorg/h2/bnf/RuleElement;

    const-string v10, ")"

    invoke-direct {v9, v10, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lorg/h2/bnf/RuleElement;

    const-string v11, ","

    invoke-direct {v10, v11, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbSchema;->getProcedures()[Lorg/h2/bnf/context/DbProcedure;

    move-result-object v1

    array-length v11, v1

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_7

    aget-object v13, v1, v12

    invoke-virtual {v13}, Lorg/h2/bnf/context/DbProcedure;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Lorg/h2/bnf/RuleElement;

    invoke-direct {v15, v14, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lorg/h2/bnf/RuleList;

    invoke-direct {v14, v15, v7, v6}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v13}, Lorg/h2/bnf/context/DbProcedure;->getParameters()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v13

    array-length v15, v13

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v15, :cond_4

    aget-object v17, v13, v5

    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbColumn;->getPosition()I

    move-result v6

    move-object/from16 v19, v1

    const/4 v1, 0x1

    if-le v6, v1, :cond_2

    new-instance v1, Lorg/h2/bnf/RuleList;

    const/4 v6, 0x0

    invoke-direct {v1, v14, v10, v6}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v14, v1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    new-instance v1, Lorg/h2/bnf/context/DbContextRule;

    move-object/from16 v18, v2

    iget-object v2, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-direct {v1, v2, v6}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    move-object/from16 v16, v3

    const/16 v0, 0x28

    if-eqz v17, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Lorg/h2/bnf/context/DbContextRule;->setColumnType(Ljava/lang/String;)V

    new-instance v2, Lorg/h2/bnf/RuleList;

    invoke-direct {v2, v14, v1, v6}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object v14, v2

    move-object/from16 v3, v16

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    goto :goto_2

    :cond_4
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    const/16 v0, 0x28

    new-instance v1, Lorg/h2/bnf/RuleList;

    invoke-direct {v1, v14, v9, v6}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v14, v1

    :goto_4
    move-object/from16 v1, p1

    goto :goto_5

    :cond_5
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    const/16 v0, 0x28

    goto :goto_4

    :goto_5
    invoke-virtual {v14, v1}, Lorg/h2/bnf/RuleList;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    goto :goto_6

    :cond_6
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    const/16 v0, 0x28

    move-object/from16 v1, p1

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    const/16 v5, 0x28

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private static autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v3, v4, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x5f

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "SET"

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_10

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-static {v1, v3}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_3
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getLastTable()Lorg/h2/bnf/context/DbTableOrView;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p0, v1, v3}, Lorg/h2/bnf/Sentence;->addAlias(Ljava/lang/String;Lorg/h2/bnf/context/DbTableOrView;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getAliases()Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "."

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_6

    .line 81
    .line 82
    :cond_5
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getLastTable()Lorg/h2/bnf/context/DbTableOrView;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-nez v3, :cond_9

    .line 87
    .line 88
    :cond_6
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ne p1, v3, :cond_7

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_8

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0, v4, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_8
    return-object p1

    .line 123
    :cond_9
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getTables()Ljava/util/HashSet;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_10

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const/4 v3, 0x0

    .line 134
    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_e

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Lorg/h2/bnf/context/DbTableOrView;

    .line 145
    .line 146
    invoke-virtual {v5}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_c

    .line 159
    .line 160
    if-eqz v3, :cond_b

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-le v7, v8, :cond_c

    .line 171
    .line 172
    :cond_b
    invoke-virtual {p0, v5}, Lorg/h2/bnf/Sentence;->setLastMatchedTable(Lorg/h2/bnf/context/DbTableOrView;)V

    .line 173
    .line 174
    .line 175
    move-object v3, v6

    .line 176
    goto :goto_2

    .line 177
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_d

    .line 182
    .line 183
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_a

    .line 188
    .line 189
    :cond_d
    invoke-static {v6, v4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {p0, v5, v6, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_e
    if-eqz v3, :cond_10

    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_f

    .line 235
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p0, v0, v4, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    :cond_f
    return-object p1

    .line 255
    :cond_10
    :goto_3
    return-object v0
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


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 0

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteProcedure(Lorg/h2/bnf/Sentence;)V

    goto/16 :goto_13

    :pswitch_1
    iget-object v4, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v4}, Lorg/h2/bnf/context/DbContents;->getSchemas()[Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    array-length v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_4

    aget-object v11, v4, v10

    iget-object v12, v11, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-static {v12}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_3

    :cond_0
    move-object v9, v11

    move-object v5, v12

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    invoke-virtual {v1, v12, v13, v14}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    const-string v14, "."

    .line 1
    invoke-static {v13, v14, v12}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    .line 2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v11, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_22

    invoke-virtual {v1, v9}, Lorg/h2/bnf/Sentence;->setLastMatchedSchema(Lorg/h2/bnf/context/DbSchema;)V

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    :pswitch_2
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    goto/16 :goto_13

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5f

    if-eq v5, v8, :cond_6

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-nez v4, :cond_8

    goto/16 :goto_13

    :cond_8
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_13

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :pswitch_3
    invoke-static {v1, v6}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    :pswitch_4
    invoke-static {v1, v7}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v4}, Lorg/h2/bnf/context/DbContents;->getDefaultSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    :cond_a
    invoke-virtual {v4}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v4

    array-length v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v8, :cond_10

    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_b

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v2

    goto :goto_7

    :cond_b
    move-object v13, v3

    :goto_7
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v5, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_f

    :cond_c
    move-object v9, v11

    move-object v5, v12

    goto :goto_8

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v13, v12, :cond_f

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    if-eqz v5, :cond_22

    invoke-virtual {v1, v9}, Lorg/h2/bnf/Sentence;->setLastMatchedTable(Lorg/h2/bnf/context/DbTableOrView;)V

    invoke-virtual {v1, v9}, Lorg/h2/bnf/Sentence;->addTable(Lorg/h2/bnf/context/DbTableOrView;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getTables()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedTable()Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-virtual {v8}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v10, :cond_17

    aget-object v12, v9, v11

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getQuotedName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_11

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getQuotedName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v2

    goto :goto_a

    :cond_11
    move-object v14, v3

    :goto_a
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    iget-object v15, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    if-eqz v15, :cond_12

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_12
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v15, v7, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_16

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v1, v6, v7, v12}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    :cond_15
    :goto_b
    move-object v5, v6

    :cond_16
    :goto_c
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_9

    :cond_17
    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v6}, Lorg/h2/bnf/context/DbContents;->getSchemas()[Lorg/h2/bnf/context/DbSchema;

    move-result-object v6

    array-length v7, v6

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v7, :cond_21

    aget-object v9, v6, v12

    invoke-virtual {v9}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v10, :cond_20

    aget-object v13, v9, v11

    if-eq v13, v8, :cond_18

    if-eqz v4, :cond_18

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    goto/16 :goto_12

    :cond_18
    if-eqz v13, :cond_1f

    invoke-virtual {v13}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v14

    if-nez v14, :cond_19

    goto/16 :goto_12

    :cond_19
    invoke-virtual {v13}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v14, :cond_1f

    aget-object v16, v13, v15

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v17}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v6

    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    if-eqz v6, :cond_1a

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v6

    move/from16 v19, v7

    iget-object v7, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_10

    :cond_1a
    move/from16 v19, v7

    :goto_10
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1e

    :cond_1b
    move-object v5, v4

    goto :goto_11

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_1e

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1e
    :goto_11
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    move/from16 v7, v19

    goto :goto_f

    :cond_1f
    :goto_12
    move-object/from16 v18, v4

    move-object/from16 v17, v6

    move/from16 v19, v7

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    move/from16 v7, v19

    goto/16 :goto_e

    :cond_20
    move-object/from16 v18, v4

    move-object/from16 v17, v6

    move/from16 v19, v7

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d

    :cond_21
    if-eqz v5, :cond_22

    move-object v3, v5

    goto :goto_14

    :cond_22
    :goto_13
    move-object v3, v2

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :goto_15
    invoke-static {v3}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_23
    const/4 v2, 0x1

    invoke-virtual {v1, v3}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    return v2

    :cond_24
    const/4 v1, 0x0

    return v1

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
.end method

.method public setColumnType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    return-void
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
