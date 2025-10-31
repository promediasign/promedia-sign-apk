.class public abstract Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/filterchain/IoFilterAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected final CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

.field protected final CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

.field protected final WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

.field private writeBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stream"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "queue"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "writeRequest"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    const/16 v0, 0x1000

    iput v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return-void
.end method

.method private getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    return-object p1
.end method

.method private removeWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Queue<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    return-object p1
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->WRITE_REQUEST_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0, p1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {p3, v1}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method public abstract getMessageClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/mina/core/buffer/IoBuffer;"
        }
    .end annotation
.end method

.method public getWriteBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return v0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getMessageClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->getNextBuffer(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_STREAM:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, p3}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->CURRENT_WRITE_REQUEST:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, p3}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/mina/core/write/WriteRequest;

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->removeWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/write/WriteRequest;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->setWritten()V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v0, p3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_2
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Only one "

    .line 17
    .line 18
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, " is permitted."

    .line 22
    .line 23
    invoke-static {p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
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

.method public setWriteBufferSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/mina/filter/stream/AbstractStreamWriteFilter;->writeBufferSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeBufferSize must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
