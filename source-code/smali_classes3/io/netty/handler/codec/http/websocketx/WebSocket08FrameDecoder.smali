.class public Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/websocketx/WebSocketFrameDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    }
.end annotation


# static fields
.field private static final OPCODE_BINARY:B = 0x2t

.field private static final OPCODE_CLOSE:B = 0x8t

.field private static final OPCODE_CONT:B = 0x0t

.field private static final OPCODE_PING:B = 0x9t

.field private static final OPCODE_PONG:B = 0xat

.field private static final OPCODE_TEXT:B = 0x1t

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

.field private fragmentedFramesCount:I

.field private frameFinalFlag:Z

.field private frameMasked:Z

.field private frameOpcode:I

.field private framePayloadLen1:I

.field private framePayloadLength:J

.field private frameRsv:I

.field private maskingKey:[B

.field private receivedClosingHandshake:Z

.field private state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_FIRST:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v0, "decoderConfig"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    iput-object p1, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;-><init>(ZZIZ)V

    return-void
.end method

.method public constructor <init>(ZZIZ)V
    .locals 1

    .line 3
    invoke-static {}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->newBuilder()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->expectMaskedFrames(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowExtensions(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->maxFramePayloadLength(I)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->allowMaskMismatch(Z)Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig$Builder;->build()Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;)V

    return-void
.end method

.method private protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;)V
    .locals 2

    .line 1
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->CORRUPT:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/channel/Channel;->isActive()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {p2}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->closeOnProtocolViolation()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    if-nez p2, :cond_2

    invoke-virtual {p3}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;->closeStatus()Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->reasonText()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    invoke-direct {v1, p2, v0}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    sget-object p2, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :cond_3
    throw p3
.end method

.method private protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;

    invoke-direct {v0, p3, p4}, Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;)V

    return-void
.end method

.method private protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->PROTOCOL_ERROR:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    invoke-direct {p0, p1, p2, v0, p3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    return-void
.end method

.method private static toFrameLength(J)I
    .locals 3

    .line 1
    const-wide/32 v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    cmp-long v2, p0, v0

    .line 5
    .line 6
    if-gtz v2, :cond_0

    .line 7
    .line 8
    long-to-int p1, p0

    .line 9
    return p1

    .line 10
    :cond_0
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    .line 11
    .line 12
    const-string v1, "Length:"

    .line 13
    .line 14
    invoke-static {v1, p0, p1}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
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

.method private unmask(Lio/netty/buffer/ByteBuf;)V
    .locals 6

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    :cond_0
    :goto_0
    add-int/lit8 v2, v0, 0x3

    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    iget-object v3, p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    rem-int/lit8 v4, v0, 0x4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public checkCloseFrameBody(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->INVALID_PAYLOAD_DATA:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    .line 18
    .line 19
    const-string v1, "Invalid close frame body"

    .line 20
    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readShort()S

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->isValidStatusCode(I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    const-string v2, "Invalid close frame getStatus code: "

    .line 43
    .line 44
    invoke-static {v1, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {p0, p1, p2, v1}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    :try_start_0
    new-instance v1, Lio/netty/handler/codec/http/websocketx/Utf8Validator;

    .line 58
    .line 59
    invoke-direct {v1}, Lio/netty/handler/codec/http/websocketx/Utf8Validator;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p2}, Lio/netty/handler/codec/http/websocketx/Utf8Validator;->check(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    invoke-direct {p0, p1, p2, v1}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_1
    return-void
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

.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Cannot decode web socket frame with opcode: "

    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->actualReadableBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$1;->$SwitchMap$io$netty$handler$codec$http$websocketx$WebSocket08FrameDecoder$State:[I

    iget-object v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0xa

    const/16 v7, 0x7f

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x1

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    const-string v2, "Shouldn\'t reach here."

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    const-wide/16 v14, 0x0

    iput-wide v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v5

    and-int/lit16 v14, v5, 0x80

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    :goto_0
    iput-boolean v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    and-int/lit8 v14, v5, 0x70

    shr-int/2addr v14, v9

    iput v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    and-int/lit8 v5, v5, 0xf

    iput v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    iget v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Decoding WebSocket Frame opCode={}"

    invoke-interface {v5, v15, v14}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_SECOND:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v5

    if-nez v5, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v5

    and-int/lit16 v14, v5, 0x80

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    goto :goto_1

    :cond_6
    const/4 v14, 0x0

    :goto_1
    iput-boolean v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameMasked:Z

    and-int/2addr v5, v7

    iput v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLen1:I

    iget v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    if-eqz v5, :cond_7

    iget-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v5}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->allowExtensions()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RSV != 0 and no extension negotiated, RSV:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v5}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->allowMaskMismatch()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v5}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->expectMaskedFrames()Z

    move-result v5

    iget-boolean v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameMasked:Z

    if-eq v5, v14, :cond_8

    const-string v3, "received a frame that is not masked as expected"

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_8
    iget v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v14, 0x7

    if-le v5, v14, :cond_c

    iget-boolean v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    if-nez v14, :cond_9

    const-string v3, "fragmented control frame"

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_9
    iget v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLen1:I

    const/16 v15, 0x7d

    if-le v14, v15, :cond_a

    const-string v3, "control frame with payload length > 125 octets"

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_a
    if-eq v5, v12, :cond_b

    if-eq v5, v11, :cond_b

    if-eq v5, v6, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "control frame using reserved opcode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_b
    if-ne v5, v12, :cond_f

    if-ne v14, v13, :cond_f

    const-string v3, "received close control frame with payload len 1"

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz v5, :cond_d

    if-eq v5, v13, :cond_d

    if-eq v5, v8, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data frame using reserved opcode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_d
    iget v14, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    if-nez v14, :cond_e

    if-nez v5, :cond_e

    const-string v3, "received continuation data frame outside fragmented message"

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_e
    if-eqz v14, :cond_f

    if-eqz v5, :cond_f

    if-eq v5, v11, :cond_f

    const-string v3, "received non-continuation data frame while inside fragmented message"

    invoke-direct {v1, v0, v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_f
    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_SIZE:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    :pswitch_3
    iget v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLen1:I

    const/16 v14, 0x7e

    const-string v15, "invalid data frame length (not using minimal length encoding)"

    if-ne v5, v14, :cond_11

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-ge v5, v8, :cond_10

    return-void

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v5

    int-to-long v13, v5

    iput-wide v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    const-wide/16 v16, 0x7e

    cmp-long v5, v13, v16

    if-gez v5, :cond_14

    invoke-direct {v1, v0, v2, v15}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_11
    if-ne v5, v7, :cond_13

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-ge v5, v12, :cond_12

    return-void

    :cond_12
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readLong()J

    move-result-wide v13

    iput-wide v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    const-wide/32 v16, 0x10000

    cmp-long v5, v13, v16

    if-gez v5, :cond_14

    invoke-direct {v1, v0, v2, v15}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/lang/String;)V

    return-void

    :cond_13
    int-to-long v13, v5

    iput-wide v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    :cond_14
    iget-wide v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iget-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v5}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->maxFramePayloadLength()I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, v13, v6

    if-lez v5, :cond_15

    sget-object v3, Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;->MESSAGE_TOO_BIG:Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Max frame length of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->config:Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;

    invoke-virtual {v5}, Lio/netty/handler/codec/http/websocketx/WebSocketDecoderConfig;->maxFramePayloadLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has been exceeded."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/websocketx/WebSocketCloseStatus;Ljava/lang/String;)V

    return-void

    :cond_15
    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-wide v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "Decoding WebSocket Frame length={}"

    invoke-interface {v5, v7, v6}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->MASKING_KEY:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    :pswitch_4
    iget-boolean v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameMasked:Z

    if-eqz v5, :cond_19

    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-ge v5, v9, :cond_17

    return-void

    :cond_17
    iget-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    if-nez v5, :cond_18

    new-array v5, v9, [B

    iput-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    :cond_18
    iget-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:[B

    invoke-virtual {v2, v5}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    :cond_19
    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->PAYLOAD:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v5, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    int-to-long v5, v5

    iget-wide v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    cmp-long v7, v5, v13

    if-gez v7, :cond_1a

    return-void

    :cond_1a
    const/4 v5, 0x0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v6

    iget-wide v13, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-static {v13, v14}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->toFrameLength(J)I

    move-result v7

    invoke-static {v6, v2, v7}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    sget-object v2, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_FIRST:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iput-object v2, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->state:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    iget-boolean v2, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameMasked:Z

    if-eqz v2, :cond_1b

    invoke-direct {v1, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->unmask(Lio/netty/buffer/ByteBuf;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1b
    :goto_2
    iget v2, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v2, v11, :cond_1c

    new-instance v0, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    iget-boolean v2, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v2, v4, v5}, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1c
    const/16 v6, 0xa

    if-ne v2, v6, :cond_1d

    new-instance v0, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    iget-boolean v2, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v2, v4, v5}, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1d
    if-ne v2, v12, :cond_1e

    const/4 v6, 0x1

    iput-boolean v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    invoke-virtual {v1, v0, v5}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkCloseFrameBody(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)V

    new-instance v0, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    iget-boolean v2, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v0, v2, v4, v5}, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1e
    iget-boolean v0, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    if-eqz v0, :cond_20

    if-eq v2, v11, :cond_1f

    iput v10, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    :cond_1f
    const/4 v7, 0x1

    goto :goto_3

    :cond_20
    iget v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    :goto_3
    if-ne v2, v7, :cond_21

    new-instance v2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v2, v0, v4, v5}, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_21
    if-ne v2, v8, :cond_22

    new-instance v2, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v2, v0, v4, v5}, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_22
    if-nez v2, :cond_23

    new-instance v2, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    iget v4, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-direct {v2, v0, v4, v5}, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;-><init>(ZILio/netty/buffer/ByteBuf;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v5, :cond_24

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_24
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
