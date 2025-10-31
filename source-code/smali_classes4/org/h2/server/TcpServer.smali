.class public Lorg/h2/server/TcpServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/server/Service;


# static fields
.field private static final MANAGEMENT_DB_PREFIX:Ljava/lang/String; = "management_db_"

.field private static final SERVERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/h2/server/TcpServer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHUTDOWN_FORCE:I = 0x1

.field private static final SHUTDOWN_NORMAL:I


# instance fields
.field private allowOthers:Z

.field private baseDir:Ljava/lang/String;

.field private ifExists:Z

.field private isDaemon:Z

.field private key:Ljava/lang/String;

.field private keyDatabase:Ljava/lang/String;

.field private listenerThread:Ljava/lang/Thread;

.field private managementDb:Ljava/sql/Connection;

.field private managementDbAdd:Ljava/sql/PreparedStatement;

.field private managementDbRemove:Ljava/sql/PreparedStatement;

.field private managementPassword:Ljava/lang/String;

.field private nextThreadId:I

.field private port:I

.field private portIsSet:Z

.field private final running:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/h2/server/TcpServerThread;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private shutdownHandler:Lorg/h2/server/ShutdownHandler;

.field private ssl:Z

.field private stop:Z

.field private trace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    .line 6
    .line 7
    return-void
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
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
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    const-string v0, ""

    iput-object v0, p0, Lorg/h2/server/TcpServer;->managementPassword:Ljava/lang/String;

    return-void
.end method

.method public static getManagementDbName(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "mem:management_db_"

    .line 2
    .line 3
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
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
.end method

.method private initManagementDb()V
    .locals 5

    const-string v0, "CREATE ALIAS IF NOT EXISTS STOP_SERVER FOR \""

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v2, "user"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "password"

    iget-object v3, p0, Lorg/h2/server/TcpServer;->managementPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jdbc:h2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-static {v4}, Lorg/h2/server/TcpServer;->getManagementDbName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/h2/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/TcpServer;->managementDb:Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lorg/h2/server/TcpServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".stopServer\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "CREATE TABLE IF NOT EXISTS SESSIONS(ID INT PRIMARY KEY, URL VARCHAR, USER VARCHAR, CONNECTED TIMESTAMP)"

    invoke-interface {v2, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "INSERT INTO SESSIONS VALUES(?, ?, ?, NOW())"

    invoke-interface {v1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    const-string v0, "DELETE FROM SESSIONS WHERE ID=?"

    invoke-interface {v1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->managementDbRemove:Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    sget-object v0, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    iget v1, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method

.method public static declared-synchronized shutdown(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11

    .line 2
    const-class v0, Lorg/h2/server/TcpServer;

    monitor-enter v0

    const/16 v1, 0x3a

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    const/16 v1, 0x2384

    :goto_0
    invoke-static {v1}, Lorg/h2/server/TcpServer;->getManagementDbName(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    const/4 v7, 0x0

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jdbc:h2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9, p1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v8
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v9, "CALL STOP_SERVER(?, ?, ?)"

    invoke-interface {v8, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    if-eqz p3, :cond_1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    move v9, v1

    :goto_2
    invoke-interface {v7, v2, v9}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v7, v6, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v6, 0x3

    invoke-interface {v7, v6, p2}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v6

    if-eqz p2, :cond_2

    goto :goto_3

    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v9
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const v10, 0x15fd3

    if-ne v9, v10, :cond_3

    :goto_3
    :try_start_6
    invoke-static {v7}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static {v8}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_3
    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception v6

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v8, v7

    goto :goto_5

    :catch_3
    move-exception v6

    move-object v8, v7

    :goto_4
    if-eq v5, v2, :cond_4

    :try_start_8
    invoke-static {v7}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static {v8}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_5
    :try_start_a
    invoke-static {v7}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static {v8}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :goto_6
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    :try_start_b
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    :try_start_c
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_8
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized stopManagementDb()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->managementDb:Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->managementDb:Ljava/sql/Connection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public static stopServer(ILjava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_2

    sget-object p0, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Integer;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v2, p1, p2}, Lorg/h2/server/TcpServer;->stopServer(ILjava/lang/String;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/TcpServer;

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v2, v1, Lorg/h2/server/TcpServer;->managementPassword:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x1

    if-nez p2, :cond_5

    invoke-direct {v1}, Lorg/h2/server/TcpServer;->stopManagementDb()V

    iput-boolean p1, v1, Lorg/h2/server/TcpServer;->stop:Z

    :try_start_0
    invoke-static {p0, v0}, Lorg/h2/util/NetUtils;->createLoopbackSocket(IZ)Ljava/net/Socket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    if-ne p2, p1, :cond_6

    invoke-virtual {v1}, Lorg/h2/server/TcpServer;->stop()V

    :catch_0
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lorg/h2/server/TcpServer;->shutdown()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addConnection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    iget-object p1, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    iget-object p1, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    const/4 p2, 0x3

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    iget-object p1, p0, Lorg/h2/server/TcpServer;->managementDbAdd:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public allow(Ljava/net/Socket;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->allowOthers:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/h2/util/NetUtils;->isLocalAddress(Ljava/net/Socket;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public cancelStatement(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/TcpServerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lorg/h2/server/TcpServerThread;->cancelStatement(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public checkKeyAndGetDatabaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/TcpServer;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/server/TcpServer;->keyDatabase:Ljava/lang/String;

    return-object p1

    :cond_1
    const/16 p1, 0x6d60

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getAllowOthers()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->allowOthers:Z

    return v0
.end method

.method public getBaseDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/server/TcpServer;->baseDir:Ljava/lang/String;

    return-object v0
.end method

.method public getIfExists()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->ifExists:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "H2 TCP Server"

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/h2/server/TcpServer;->port:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "TCP"

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/h2/server/TcpServer;->ssl:Z

    if-eqz v1, :cond_0

    const-string v1, "ssl"

    goto :goto_0

    :cond_0
    const-string v1, "tcp"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs init([Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2384

    iput v0, p0, Lorg/h2/server/TcpServer;->port:I

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_9

    array-length v1, p1

    if-ge v0, v1, :cond_9

    aget-object v1, p1, v0

    const-string v2, "-trace"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->trace:Z

    goto/16 :goto_1

    :cond_0
    const-string v2, "-tcpSSL"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->ssl:Z

    goto/16 :goto_1

    :cond_1
    const-string v2, "-tcpPort"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/h2/server/TcpServer;->port:I

    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->portIsSet:Z

    goto :goto_1

    :cond_2
    const-string v2, "-tcpPassword"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/TcpServer;->managementPassword:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "-baseDir"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/TcpServer;->baseDir:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v2, "-key"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lorg/h2/server/TcpServer;->key:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/h2/server/TcpServer;->keyDatabase:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v2, "-tcpAllowOthers"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->allowOthers:Z

    goto :goto_1

    :cond_6
    const-string v2, "-tcpDaemon"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->isDaemon:Z

    goto :goto_1

    :cond_7
    const-string v2, "-ifExists"

    invoke-static {v1, v2}, Lorg/h2/util/Tool;->isOption(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-boolean v3, p0, Lorg/h2/server/TcpServer;->ifExists:Z

    :cond_8
    :goto_1
    add-int/2addr v0, v3

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    return-void
.end method

.method public isDaemon()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->isDaemon:Z

    return v0
.end method

.method public declared-synchronized isRunning(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/h2/server/TcpServer;->port:I

    iget-boolean v2, p0, Lorg/h2/server/TcpServer;->ssl:Z

    invoke-static {v0, v2}, Lorg/h2/util/NetUtils;->createLoopbackSocket(IZ)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/h2/server/TcpServer;->traceError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public listen()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->listenerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/server/TcpServer;->stop:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    new-instance v2, Lorg/h2/server/TcpServerThread;

    iget v3, p0, Lorg/h2/server/TcpServer;->nextThreadId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/h2/server/TcpServer;->nextThreadId:I

    invoke-direct {v2, v1, p0, v3}, Lorg/h2/server/TcpServerThread;-><init>(Ljava/net/Socket;Lorg/h2/server/TcpServer;I)V

    iget-object v1, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/h2/server/TcpServer;->isDaemon:Z

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v2, v1}, Lorg/h2/server/TcpServerThread;->setThread(Ljava/lang/Thread;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lorg/h2/util/NetUtils;->closeSilently(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-boolean v1, p0, Lorg/h2/server/TcpServer;->stop:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lorg/h2/server/TcpServer;->stopManagementDb()V

    return-void
.end method

.method public remove(Lorg/h2/server/TcpServerThread;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized removeConnection(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->managementDbRemove:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    iget-object p1, p0, Lorg/h2/server/TcpServer;->managementDbRemove:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setShutdownHandler(Lorg/h2/server/ShutdownHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/server/TcpServer;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/server/TcpServer;->shutdownHandler:Lorg/h2/server/ShutdownHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/server/ShutdownHandler;->shutdown()V

    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/h2/server/TcpServer;->stop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v1, p0, Lorg/h2/server/TcpServer;->port:I

    iget-boolean v2, p0, Lorg/h2/server/TcpServer;->ssl:Z

    invoke-static {v1, v2}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-boolean v2, p0, Lorg/h2/server/TcpServer;->portIsSet:Z

    if-nez v2, :cond_0

    iget-boolean v1, p0, Lorg/h2/server/TcpServer;->ssl:Z

    invoke-static {v0, v1}, Lorg/h2/util/NetUtils;->createServerSocket(IZ)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    :goto_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-direct {p0}, Lorg/h2/server/TcpServer;->initManagementDb()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 4

    sget-object v0, Lorg/h2/server/TcpServer;->SERVERS:Ljava/util/Map;

    iget v1, p0, Lorg/h2/server/TcpServer;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->stop:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/h2/server/TcpServer;->stopManagementDb()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/server/TcpServer;->stop:Z

    iget-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/server/TcpServer;->serverSocket:Ljava/net/ServerSocket;

    :cond_0
    iget-object v0, p0, Lorg/h2/server/TcpServer;->listenerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/server/TcpServer;->running:Ljava/util/Set;

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/TcpServerThread;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/h2/server/TcpServerThread;->close()V

    :try_start_2
    invoke-virtual {v1}, Lorg/h2/server/TcpServerThread;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->trace:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public traceError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/server/TcpServer;->trace:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
