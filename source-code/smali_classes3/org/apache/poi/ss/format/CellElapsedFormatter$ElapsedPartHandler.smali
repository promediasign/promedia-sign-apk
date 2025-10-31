.class Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellElapsedFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElapsedPartHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;-><init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;)V

    return-void
.end method


# virtual methods
.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    if-eq p4, v0, :cond_9

    .line 13
    .line 14
    const/16 v0, 0x22

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq p4, v0, :cond_7

    .line 18
    .line 19
    const/16 v0, 0x2a

    .line 20
    .line 21
    if-eq p4, v0, :cond_6

    .line 22
    .line 23
    const/16 v0, 0x30

    .line 24
    .line 25
    if-eq p4, v0, :cond_5

    .line 26
    .line 27
    const/16 v0, 0x5f

    .line 28
    .line 29
    if-eq p4, v0, :cond_4

    .line 30
    .line 31
    const/16 v0, 0x68

    .line 32
    .line 33
    if-eq p4, v0, :cond_5

    .line 34
    .line 35
    const/16 v0, 0x6d

    .line 36
    .line 37
    if-eq p4, v0, :cond_5

    .line 38
    .line 39
    const/16 v0, 0x73

    .line 40
    .line 41
    if-eq p4, v0, :cond_5

    .line 42
    .line 43
    const/16 p3, 0x5b

    .line 44
    .line 45
    if-eq p4, p3, :cond_1

    .line 46
    .line 47
    const/16 p1, 0x5c

    .line 48
    .line 49
    if-eq p4, p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    const/4 p4, 0x3

    .line 62
    if-ge p3, p4, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    .line 66
    .line 67
    invoke-static {p3}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$000(Lorg/apache/poi/ss/format/CellElapsedFormatter;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    if-nez p3, :cond_3

    .line 72
    .line 73
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    add-int/lit8 p4, p3, -0x2

    .line 84
    .line 85
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-static {v0, v2, p1, p4}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$100(Lorg/apache/poi/ss/format/CellElapsedFormatter;CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$002(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 96
    .line 97
    .line 98
    sub-int/2addr p3, v1

    .line 99
    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p2, "Duplicate \'[\' times in format"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_4
    const/4 p1, 0x0

    .line 113
    return-object p1

    .line 114
    :cond_5
    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 115
    .line 116
    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    iget-object p4, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-static {p4, p3, p1, v0}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$100(Lorg/apache/poi/ss/format/CellElapsedFormatter;CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 131
    .line 132
    .line 133
    return-object p2

    .line 134
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-le p1, v1, :cond_8

    .line 139
    .line 140
    invoke-static {p2}, Lorg/apache/poi/ss/format/CellFormatPart;->expandChar(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    goto :goto_0

    .line 145
    :cond_7
    invoke-static {p2, v1, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    :cond_8
    :goto_0
    invoke-static {}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$200()Ljava/util/regex/Pattern;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string p2, "%%"

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    return-object p1

    .line 164
    :cond_9
    const-string p1, "%n"

    .line 165
    .line 166
    return-object p1
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
