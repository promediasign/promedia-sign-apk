.class public abstract Landroidx/media3/common/util/ColorParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLOR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RGBA_PATTERN_FLOAT_ALPHA:Ljava/util/regex/Pattern;

.field private static final RGBA_PATTERN_INT_ALPHA:Ljava/util/regex/Pattern;

.field private static final RGB_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/media3/common/util/ColorParser;->RGB_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/media3/common/util/ColorParser;->RGBA_PATTERN_INT_ALPHA:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/media3/common/util/ColorParser;->RGBA_PATTERN_FLOAT_ALPHA:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroidx/media3/common/util/ColorParser;->COLOR_MAP:Ljava/util/Map;

    .line 31
    .line 32
    const v1, -0xf0701

    .line 33
    .line 34
    .line 35
    const-string v2, "aliceblue"

    .line 36
    .line 37
    const v3, -0x51429

    .line 38
    .line 39
    .line 40
    const-string v4, "antiquewhite"

    .line 41
    .line 42
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const v1, -0xff0001

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "aqua"

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const v2, -0x80002c

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "aquamarine"

    .line 65
    .line 66
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const v2, -0xf0001

    .line 70
    .line 71
    .line 72
    const-string v3, "azure"

    .line 73
    .line 74
    const v4, -0xa0a24

    .line 75
    .line 76
    .line 77
    const-string v5, "beige"

    .line 78
    .line 79
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/16 v2, -0x1b3c

    .line 83
    .line 84
    const-string v3, "bisque"

    .line 85
    .line 86
    const/high16 v4, -0x1000000

    .line 87
    .line 88
    const-string v5, "black"

    .line 89
    .line 90
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/16 v2, -0x1433

    .line 94
    .line 95
    const-string v3, "blanchedalmond"

    .line 96
    .line 97
    const v4, -0xffff01

    .line 98
    .line 99
    .line 100
    const-string v5, "blue"

    .line 101
    .line 102
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const v2, -0x75d41e

    .line 106
    .line 107
    .line 108
    const-string v3, "blueviolet"

    .line 109
    .line 110
    const v4, -0x5ad5d6

    .line 111
    .line 112
    .line 113
    const-string v5, "brown"

    .line 114
    .line 115
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const v2, -0x214779

    .line 119
    .line 120
    .line 121
    const-string v3, "burlywood"

    .line 122
    .line 123
    const v4, -0xa06160

    .line 124
    .line 125
    .line 126
    const-string v5, "cadetblue"

    .line 127
    .line 128
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const v2, -0x800100

    .line 132
    .line 133
    .line 134
    const-string v3, "chartreuse"

    .line 135
    .line 136
    const v4, -0x2d96e2

    .line 137
    .line 138
    .line 139
    const-string v5, "chocolate"

    .line 140
    .line 141
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const v2, -0x80b0

    .line 145
    .line 146
    .line 147
    const-string v3, "coral"

    .line 148
    .line 149
    const v4, -0x9b6a13

    .line 150
    .line 151
    .line 152
    const-string v5, "cornflowerblue"

    .line 153
    .line 154
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/16 v2, -0x724

    .line 158
    .line 159
    const-string v3, "cornsilk"

    .line 160
    .line 161
    const v4, -0x23ebc4

    .line 162
    .line 163
    .line 164
    const-string v5, "crimson"

    .line 165
    .line 166
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v2, "cyan"

    .line 170
    .line 171
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    const v1, -0xffff75

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const-string v2, "darkblue"

    .line 182
    .line 183
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    const v1, -0xff7475

    .line 187
    .line 188
    .line 189
    const-string v2, "darkcyan"

    .line 190
    .line 191
    const v3, -0x4779f5

    .line 192
    .line 193
    .line 194
    const-string v4, "darkgoldenrod"

    .line 195
    .line 196
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const v1, -0x565657

    .line 200
    .line 201
    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v2, "darkgray"

    .line 207
    .line 208
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const v2, -0xff9c00

    .line 212
    .line 213
    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const-string v3, "darkgreen"

    .line 219
    .line 220
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    const-string v2, "darkgrey"

    .line 224
    .line 225
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    const v1, -0x424895

    .line 229
    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v2, "darkkhaki"

    .line 236
    .line 237
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    const v1, -0x74ff75

    .line 241
    .line 242
    .line 243
    const-string v2, "darkmagenta"

    .line 244
    .line 245
    const v3, -0xaa94d1

    .line 246
    .line 247
    .line 248
    const-string v4, "darkolivegreen"

    .line 249
    .line 250
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const/16 v1, -0x7400

    .line 254
    .line 255
    const-string v2, "darkorange"

    .line 256
    .line 257
    const v3, -0x66cd34

    .line 258
    .line 259
    .line 260
    const-string v4, "darkorchid"

    .line 261
    .line 262
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const/high16 v1, -0x750000

    .line 266
    .line 267
    const-string v2, "darkred"

    .line 268
    .line 269
    const v3, -0x166986

    .line 270
    .line 271
    .line 272
    const-string v4, "darksalmon"

    .line 273
    .line 274
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const v1, -0x704371

    .line 278
    .line 279
    .line 280
    const-string v2, "darkseagreen"

    .line 281
    .line 282
    const v3, -0xb7c275

    .line 283
    .line 284
    .line 285
    const-string v4, "darkslateblue"

    .line 286
    .line 287
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const v1, -0xd0b0b1

    .line 291
    .line 292
    .line 293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    const-string v2, "darkslategray"

    .line 298
    .line 299
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    const-string v2, "darkslategrey"

    .line 303
    .line 304
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    const v1, -0xff312f

    .line 308
    .line 309
    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const-string v2, "darkturquoise"

    .line 315
    .line 316
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    const v1, -0x6bff2d

    .line 320
    .line 321
    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    const-string v2, "darkviolet"

    .line 327
    .line 328
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    const v1, -0xeb6d

    .line 332
    .line 333
    .line 334
    const-string v2, "deeppink"

    .line 335
    .line 336
    const v3, -0xff4001

    .line 337
    .line 338
    .line 339
    const-string v4, "deepskyblue"

    .line 340
    .line 341
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const v1, -0x969697

    .line 345
    .line 346
    .line 347
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    const-string v2, "dimgray"

    .line 352
    .line 353
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    const-string v2, "dimgrey"

    .line 357
    .line 358
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    const v1, -0xe16f01

    .line 362
    .line 363
    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v2, "dodgerblue"

    .line 369
    .line 370
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    const v1, -0x4dddde

    .line 374
    .line 375
    .line 376
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    const-string v2, "firebrick"

    .line 381
    .line 382
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    const/16 v1, -0x510

    .line 386
    .line 387
    const-string v2, "floralwhite"

    .line 388
    .line 389
    const v3, -0xdd74de

    .line 390
    .line 391
    .line 392
    const-string v4, "forestgreen"

    .line 393
    .line 394
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const v1, -0xff01

    .line 398
    .line 399
    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    const-string v2, "fuchsia"

    .line 405
    .line 406
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    const v2, -0x232324

    .line 410
    .line 411
    .line 412
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    const-string v3, "gainsboro"

    .line 417
    .line 418
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    const v2, -0x70701

    .line 422
    .line 423
    .line 424
    const-string v3, "ghostwhite"

    .line 425
    .line 426
    const/16 v4, -0x2900

    .line 427
    .line 428
    const-string v5, "gold"

    .line 429
    .line 430
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    const v2, -0x255ae0

    .line 434
    .line 435
    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    const-string v3, "goldenrod"

    .line 441
    .line 442
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    const v2, -0x7f7f80

    .line 446
    .line 447
    .line 448
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    const-string v3, "gray"

    .line 453
    .line 454
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    const v3, -0xff8000

    .line 458
    .line 459
    .line 460
    const-string v4, "green"

    .line 461
    .line 462
    const v5, -0x5200d1

    .line 463
    .line 464
    .line 465
    const-string v6, "greenyellow"

    .line 466
    .line 467
    invoke-static {v3, v0, v4, v5, v6}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    const-string v3, "grey"

    .line 471
    .line 472
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    const v2, -0xf0010

    .line 476
    .line 477
    .line 478
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    const-string v3, "honeydew"

    .line 483
    .line 484
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    const v2, -0x964c

    .line 488
    .line 489
    .line 490
    const-string v3, "hotpink"

    .line 491
    .line 492
    const v4, -0x32a3a4

    .line 493
    .line 494
    .line 495
    const-string v5, "indianred"

    .line 496
    .line 497
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 498
    .line 499
    .line 500
    const v2, -0xb4ff7e

    .line 501
    .line 502
    .line 503
    const-string v3, "indigo"

    .line 504
    .line 505
    const/16 v4, -0x10

    .line 506
    .line 507
    const-string v5, "ivory"

    .line 508
    .line 509
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    const v2, -0xf1974

    .line 513
    .line 514
    .line 515
    const-string v3, "khaki"

    .line 516
    .line 517
    const v4, -0x191906

    .line 518
    .line 519
    .line 520
    const-string v5, "lavender"

    .line 521
    .line 522
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 523
    .line 524
    .line 525
    const/16 v2, -0xf0b

    .line 526
    .line 527
    const-string v3, "lavenderblush"

    .line 528
    .line 529
    const v4, -0x830400

    .line 530
    .line 531
    .line 532
    const-string v5, "lawngreen"

    .line 533
    .line 534
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 535
    .line 536
    .line 537
    const/16 v2, -0x533

    .line 538
    .line 539
    const-string v3, "lemonchiffon"

    .line 540
    .line 541
    const v4, -0x52271a

    .line 542
    .line 543
    .line 544
    const-string v5, "lightblue"

    .line 545
    .line 546
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    .line 548
    .line 549
    const v2, -0xf7f80

    .line 550
    .line 551
    .line 552
    const-string v3, "lightcoral"

    .line 553
    .line 554
    const v4, -0x1f0001

    .line 555
    .line 556
    .line 557
    const-string v5, "lightcyan"

    .line 558
    .line 559
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 560
    .line 561
    .line 562
    const v2, -0x5052e

    .line 563
    .line 564
    .line 565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    const-string v3, "lightgoldenrodyellow"

    .line 570
    .line 571
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    const v2, -0x2c2c2d

    .line 575
    .line 576
    .line 577
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    const-string v3, "lightgray"

    .line 582
    .line 583
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    const v3, -0x6f1170

    .line 587
    .line 588
    .line 589
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    const-string v4, "lightgreen"

    .line 594
    .line 595
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    const-string v3, "lightgrey"

    .line 599
    .line 600
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    const/16 v2, -0x493f

    .line 604
    .line 605
    const-string v3, "lightpink"

    .line 606
    .line 607
    const/16 v4, -0x5f86

    .line 608
    .line 609
    const-string v5, "lightsalmon"

    .line 610
    .line 611
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 612
    .line 613
    .line 614
    const v2, -0xdf4d56

    .line 615
    .line 616
    .line 617
    const-string v3, "lightseagreen"

    .line 618
    .line 619
    const v4, -0x783106

    .line 620
    .line 621
    .line 622
    const-string v5, "lightskyblue"

    .line 623
    .line 624
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    .line 626
    .line 627
    const v2, -0x887767

    .line 628
    .line 629
    .line 630
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    const-string v3, "lightslategray"

    .line 635
    .line 636
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    const-string v3, "lightslategrey"

    .line 640
    .line 641
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    const v2, -0x4f3b22

    .line 645
    .line 646
    .line 647
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    const-string v3, "lightsteelblue"

    .line 652
    .line 653
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    const/16 v2, -0x20

    .line 657
    .line 658
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    const-string v3, "lightyellow"

    .line 663
    .line 664
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    const v2, -0xff0100

    .line 668
    .line 669
    .line 670
    const-string v3, "lime"

    .line 671
    .line 672
    const v4, -0xcd32ce

    .line 673
    .line 674
    .line 675
    const-string v5, "limegreen"

    .line 676
    .line 677
    invoke-static {v2, v0, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 678
    .line 679
    .line 680
    const v2, -0x50f1a

    .line 681
    .line 682
    .line 683
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    const-string v3, "linen"

    .line 688
    .line 689
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    const-string v2, "magenta"

    .line 693
    .line 694
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 698
    .line 699
    const-string v2, "maroon"

    .line 700
    .line 701
    const v3, -0x993256

    .line 702
    .line 703
    .line 704
    const-string v4, "mediumaquamarine"

    .line 705
    .line 706
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 707
    .line 708
    .line 709
    const v1, -0xffff33

    .line 710
    .line 711
    .line 712
    const-string v2, "mediumblue"

    .line 713
    .line 714
    const v3, -0x45aa2d

    .line 715
    .line 716
    .line 717
    const-string v4, "mediumorchid"

    .line 718
    .line 719
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 720
    .line 721
    .line 722
    const v1, -0x6c8f25

    .line 723
    .line 724
    .line 725
    const-string v2, "mediumpurple"

    .line 726
    .line 727
    const v3, -0xc34c8f

    .line 728
    .line 729
    .line 730
    const-string v4, "mediumseagreen"

    .line 731
    .line 732
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 733
    .line 734
    .line 735
    const v1, -0x849712

    .line 736
    .line 737
    .line 738
    const-string v2, "mediumslateblue"

    .line 739
    .line 740
    const v3, -0xff0566

    .line 741
    .line 742
    .line 743
    const-string v4, "mediumspringgreen"

    .line 744
    .line 745
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 746
    .line 747
    .line 748
    const v1, -0xb72e34

    .line 749
    .line 750
    .line 751
    const-string v2, "mediumturquoise"

    .line 752
    .line 753
    const v3, -0x38ea7b

    .line 754
    .line 755
    .line 756
    const-string v4, "mediumvioletred"

    .line 757
    .line 758
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 759
    .line 760
    .line 761
    const v1, -0xe6e690

    .line 762
    .line 763
    .line 764
    const-string v2, "midnightblue"

    .line 765
    .line 766
    const v3, -0xa0006

    .line 767
    .line 768
    .line 769
    const-string v4, "mintcream"

    .line 770
    .line 771
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 772
    .line 773
    .line 774
    const/16 v1, -0x1b1f

    .line 775
    .line 776
    const-string v2, "mistyrose"

    .line 777
    .line 778
    const/16 v3, -0x1b4b

    .line 779
    .line 780
    const-string v4, "moccasin"

    .line 781
    .line 782
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 783
    .line 784
    .line 785
    const/16 v1, -0x2153

    .line 786
    .line 787
    const-string v2, "navajowhite"

    .line 788
    .line 789
    const v3, -0xffff80

    .line 790
    .line 791
    .line 792
    const-string v4, "navy"

    .line 793
    .line 794
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 795
    .line 796
    .line 797
    const v1, -0x20a1a

    .line 798
    .line 799
    .line 800
    const-string v2, "oldlace"

    .line 801
    .line 802
    const v3, -0x7f8000

    .line 803
    .line 804
    .line 805
    const-string v4, "olive"

    .line 806
    .line 807
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 808
    .line 809
    .line 810
    const v1, -0x9471dd

    .line 811
    .line 812
    .line 813
    const-string v2, "olivedrab"

    .line 814
    .line 815
    const/16 v3, -0x5b00

    .line 816
    .line 817
    const-string v4, "orange"

    .line 818
    .line 819
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 820
    .line 821
    .line 822
    const v1, -0xbb00

    .line 823
    .line 824
    .line 825
    const-string v2, "orangered"

    .line 826
    .line 827
    const v3, -0x258f2a

    .line 828
    .line 829
    .line 830
    const-string v4, "orchid"

    .line 831
    .line 832
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 833
    .line 834
    .line 835
    const v1, -0x111756

    .line 836
    .line 837
    .line 838
    const-string v2, "palegoldenrod"

    .line 839
    .line 840
    const v3, -0x670468

    .line 841
    .line 842
    .line 843
    const-string v4, "palegreen"

    .line 844
    .line 845
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 846
    .line 847
    .line 848
    const v1, -0x501112

    .line 849
    .line 850
    .line 851
    const-string v2, "paleturquoise"

    .line 852
    .line 853
    const v3, -0x248f6d

    .line 854
    .line 855
    .line 856
    const-string v4, "palevioletred"

    .line 857
    .line 858
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 859
    .line 860
    .line 861
    const/16 v1, -0x102b

    .line 862
    .line 863
    const-string v2, "papayawhip"

    .line 864
    .line 865
    const/16 v3, -0x2547

    .line 866
    .line 867
    const-string v4, "peachpuff"

    .line 868
    .line 869
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 870
    .line 871
    .line 872
    const v1, -0x327ac1

    .line 873
    .line 874
    .line 875
    const-string v2, "peru"

    .line 876
    .line 877
    const/16 v3, -0x3f35

    .line 878
    .line 879
    const-string v4, "pink"

    .line 880
    .line 881
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 882
    .line 883
    .line 884
    const v1, -0x225f23

    .line 885
    .line 886
    .line 887
    const-string v2, "plum"

    .line 888
    .line 889
    const v3, -0x4f1f1a

    .line 890
    .line 891
    .line 892
    const-string v4, "powderblue"

    .line 893
    .line 894
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 895
    .line 896
    .line 897
    const v1, -0x7fff80

    .line 898
    .line 899
    .line 900
    const-string v2, "purple"

    .line 901
    .line 902
    const v3, -0x99cc67

    .line 903
    .line 904
    .line 905
    const-string v4, "rebeccapurple"

    .line 906
    .line 907
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 908
    .line 909
    .line 910
    const/high16 v1, -0x10000

    .line 911
    .line 912
    const-string v2, "red"

    .line 913
    .line 914
    const v3, -0x437071

    .line 915
    .line 916
    .line 917
    const-string v4, "rosybrown"

    .line 918
    .line 919
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 920
    .line 921
    .line 922
    const v1, -0xbe961f

    .line 923
    .line 924
    .line 925
    const-string v2, "royalblue"

    .line 926
    .line 927
    const v3, -0x74baed

    .line 928
    .line 929
    .line 930
    const-string v4, "saddlebrown"

    .line 931
    .line 932
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 933
    .line 934
    .line 935
    const v1, -0x57f8e

    .line 936
    .line 937
    .line 938
    const-string v2, "salmon"

    .line 939
    .line 940
    const v3, -0xb5ba0

    .line 941
    .line 942
    .line 943
    const-string v4, "sandybrown"

    .line 944
    .line 945
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 946
    .line 947
    .line 948
    const v1, -0xd174a9

    .line 949
    .line 950
    .line 951
    const-string v2, "seagreen"

    .line 952
    .line 953
    const/16 v3, -0xa12

    .line 954
    .line 955
    const-string v4, "seashell"

    .line 956
    .line 957
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 958
    .line 959
    .line 960
    const v1, -0x5fadd3

    .line 961
    .line 962
    .line 963
    const-string v2, "sienna"

    .line 964
    .line 965
    const v3, -0x3f3f40

    .line 966
    .line 967
    .line 968
    const-string v4, "silver"

    .line 969
    .line 970
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 971
    .line 972
    .line 973
    const v1, -0x783115

    .line 974
    .line 975
    .line 976
    const-string v2, "skyblue"

    .line 977
    .line 978
    const v3, -0x95a533

    .line 979
    .line 980
    .line 981
    const-string v4, "slateblue"

    .line 982
    .line 983
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 984
    .line 985
    .line 986
    const v1, -0x8f7f70

    .line 987
    .line 988
    .line 989
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    const-string v2, "slategray"

    .line 994
    .line 995
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    const-string v2, "slategrey"

    .line 999
    .line 1000
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    const/16 v1, -0x506

    .line 1004
    .line 1005
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    const-string v2, "snow"

    .line 1010
    .line 1011
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    const v1, -0xff0081

    .line 1015
    .line 1016
    .line 1017
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    const-string v2, "springgreen"

    .line 1022
    .line 1023
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    const v1, -0xb97d4c

    .line 1027
    .line 1028
    .line 1029
    const-string v2, "steelblue"

    .line 1030
    .line 1031
    const v3, -0x2d4b74

    .line 1032
    .line 1033
    .line 1034
    const-string v4, "tan"

    .line 1035
    .line 1036
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1037
    .line 1038
    .line 1039
    const v1, -0xff7f80

    .line 1040
    .line 1041
    .line 1042
    const-string v2, "teal"

    .line 1043
    .line 1044
    const v3, -0x274028

    .line 1045
    .line 1046
    .line 1047
    const-string v4, "thistle"

    .line 1048
    .line 1049
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    const v1, -0x9cb9

    .line 1053
    .line 1054
    .line 1055
    const-string v2, "tomato"

    .line 1056
    .line 1057
    const/4 v3, 0x0

    .line 1058
    const-string v4, "transparent"

    .line 1059
    .line 1060
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    const v1, -0xbf1f30

    .line 1064
    .line 1065
    .line 1066
    const-string v2, "turquoise"

    .line 1067
    .line 1068
    const v3, -0x117d12

    .line 1069
    .line 1070
    .line 1071
    const-string v4, "violet"

    .line 1072
    .line 1073
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    const v1, -0xa214d

    .line 1077
    .line 1078
    .line 1079
    const-string v2, "wheat"

    .line 1080
    .line 1081
    const/4 v3, -0x1

    .line 1082
    const-string v4, "white"

    .line 1083
    .line 1084
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    const v1, -0xa0a0b

    .line 1088
    .line 1089
    .line 1090
    const-string v2, "whitesmoke"

    .line 1091
    .line 1092
    const/16 v3, -0x100

    .line 1093
    .line 1094
    const-string v4, "yellow"

    .line 1095
    .line 1096
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->D(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    const v1, -0x6532ce

    .line 1100
    .line 1101
    .line 1102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v1

    .line 1106
    const-string v2, "yellowgreen"

    .line 1107
    .line 1108
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    return-void
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
.end method

.method private static parseColorInternal(Ljava/lang/String;Z)I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const-string v0, " "

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/high16 p0, -0x1000000

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    and-int/lit16 p0, p1, 0xff

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    const-string v0, "rgba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0xa

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    sget-object v0, Landroidx/media3/common/util/ColorParser;->RGBA_PATTERN_FLOAT_ALPHA:Ljava/util/regex/Pattern;

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/media3/common/util/ColorParser;->RGBA_PATTERN_INT_ALPHA:Ljava/util/regex/Pattern;

    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    :goto_2
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_5
    const-string p1, "rgb"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroidx/media3/common/util/ColorParser;->RGB_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0

    :cond_6
    sget-object p1, Landroidx/media3/common/util/ColorParser;->COLOR_MAP:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseCssColor(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/media3/common/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static parseTtmlColor(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/common/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method
