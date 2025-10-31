.class public Lorg/apache/velocity/runtime/directive/MacroParseException;
.super Lorg/apache/velocity/runtime/parser/ParseException;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/exception/ExtendedParseException;


# static fields
.field private static final serialVersionUID:J = -0x452f136d381ac821L


# instance fields
.field private final templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V
    .locals 1

    .line 1
    const-string v0, " at "

    .line 2
    .line 3
    invoke-static {p1, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    .line 11
    .line 12
    iput-object p2, p0, Lorg/apache/velocity/runtime/directive/MacroParseException;->templateName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
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
.end method


# virtual methods
.method public appendTemplateInfo(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/MacroParseException;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/MacroParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/MacroParseException;->getColumnNumber()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getColumnNumber()I
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v1, :cond_0

    iget v0, v1, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    return v0

    :cond_0
    if-eqz v0, :cond_1

    iget v0, v0, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getLineNumber()I
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v1, :cond_0

    iget v0, v1, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    return v0

    :cond_0
    if-eqz v0, :cond_1

    iget v0, v0, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 13

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->specialConstructor:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/velocity/runtime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/directive/MacroParseException;->appendTemplateInfo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, " "

    const-string v7, "    "

    const/4 v8, 0x1

    if-ge v4, v2, :cond_4

    aget-object v9, v1, v4

    array-length v10, v9

    if-ge v5, v10, :cond_1

    array-length v5, v9

    :cond_1
    const/4 v10, 0x0

    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_2

    iget-object v11, p0, Lorg/apache/velocity/runtime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    aget v12, v9, v10

    aget-object v11, v11, v12

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    array-length v6, v9

    sub-int/2addr v6, v8

    aget v6, v9, v6

    if-eqz v6, :cond_3

    const-string v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, v2, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_7

    if-eqz v4, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v9, v2, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-nez v9, :cond_6

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    iget-object v9, v2, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/apache/velocity/runtime/parser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/directive/MacroParseException;->appendTemplateInfo(Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v2, v2

    if-ne v2, v8, :cond_8

    const-string v2, "Was expecting:"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string v2, "Was expecting one of:"

    goto :goto_4

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/MacroParseException;->templateName:Ljava/lang/String;

    return-object v0
.end method
