.class public final Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;
    }
.end annotation


# instance fields
.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/ColumnInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_3

    if-nez v2, :cond_2

    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No column info records found"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private attemptMergeColInfoRecords(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    if-ge p1, v0, :cond_2

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    add-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    if-lez p1, :cond_1

    .line 35
    .line 36
    add-int/lit8 v0, p1, -0x1

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v2, "colInfoIx "

    .line 57
    .line 58
    const-string v3, " is out of range (0.."

    .line 59
    .line 60
    invoke-static {p1, v2, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ")"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1
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

.method private static copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p0

    return-object p0
.end method

.method private findColInfoIdx(II)I
    .locals 2

    .line 1
    if-ltz p1, :cond_4

    .line 2
    .line 3
    if-ltz p2, :cond_3

    .line 4
    .line 5
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p2, v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return p2

    .line 24
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-le v0, p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    const/4 p1, -0x1

    .line 35
    return p1

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "fromIdx parameter out of range: "

    .line 39
    .line 40
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "column parameter out of range: "

    .line 51
    .line 52
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p2
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
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
.end method

.method private findEndOfColumnOutlineGroup(I)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    move p1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private findStartOfColumnOutlineGroup(I)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    move-object v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    return-object p1
.end method

.method private insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private isColumnGroupCollapsed(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result p1

    return p1
.end method

.method private isColumnGroupHiddenByParent(I)Z
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-le v0, v2, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method private static mergeColInfoRecords(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->formatMatches(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setXFIndex(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setColumnWidth(I)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setOutlineLevel(I)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setCollapsed(Z)V

    :cond_4
    return-void
.end method

.method private setGroupHidden(IIZ)I
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v2

    if-ge v2, p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->clone()Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;
    .locals 4

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    iget-object v3, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->clone()Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public collapseColumn(I)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setGroupHidden(IIZ)I

    move-result p1

    add-int/lit8 v3, p1, 0x1

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public expandColumn(I)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupCollapsed(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findStartOfColumnOutlineGroup(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findEndOfColumnOutlineGroup(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->isColumnGroupHiddenByParent(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result p1

    :goto_0
    if-gt v1, v2, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v5

    if-ne p1, v5, :cond_2

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setHidden(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxOutlineLevel()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getOutlineLevel(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public groupColumnRange(IIZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt p1, p2, :cond_2

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColInfoIdx(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getColInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v1

    if-eqz p3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x7

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    move v8, v1

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    add-int/lit8 p1, p1, 0x1

    move v1, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public insertColumn(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->instance:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->containsColumn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    move-object v5, v4

    goto :goto_3

    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v4

    if-le v4, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    :goto_3
    if-nez v5, :cond_3

    new-instance v2, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>()V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object v6, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    :goto_4
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    return-void

    :cond_3
    const/4 v4, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Short;->shortValue()S

    move-result v7

    if-eq v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    :goto_5
    if-eqz p3, :cond_5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->shortValue()S

    move-result v8

    if-eq v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_6
    if-eqz p4, :cond_6

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    :goto_7
    if-eqz p5, :cond_7

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v9

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v9, v10, :cond_7

    const/4 v9, 0x1

    goto :goto_8

    :cond_7
    const/4 v9, 0x0

    :goto_8
    if-eqz p6, :cond_8

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v10

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v10, v11, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    if-nez v8, :cond_a

    if-nez v9, :cond_a

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    return-void

    :cond_a
    :goto_9
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, v1, :cond_b

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v2

    if-ne v2, v1, :cond_b

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-eq v2, v1, :cond_d

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v2

    if-ne v2, v1, :cond_c

    goto :goto_a

    :cond_c
    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v12

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v13

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object v6, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v5, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    add-int/2addr v1, v4

    invoke-virtual {v12, v1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    invoke-virtual {v12, v13}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3, v12}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    goto :goto_c

    :cond_d
    :goto_a
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, v1, :cond_e

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    goto :goto_b

    :cond_e
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v5, v2}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    add-int/lit8 v3, v3, 0x1

    :goto_b
    invoke-static {v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->copyColInfo(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setFirstColumn(I)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setLastColumn(I)V

    move-object v6, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumnInfoFields(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Ljava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->insertColumn(ILorg/apache/poi/hssf/record/ColumnInfoRecord;)V

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->attemptMergeColInfoRecords(I)V

    :goto_c
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-interface {p1, v3}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    if-eqz v1, :cond_2

    invoke-static {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate$CIRComparator;->compareColInfos(Lorg/apache/poi/hssf/record/ColumnInfoRecord;Lorg/apache/poi/hssf/record/ColumnInfoRecord;)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Column info records are out of order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method
