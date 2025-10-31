.class Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVerificationCodeReceiver"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private waitUnlessSignaled:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->notifyCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->error:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->access$200()Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Got notify code from Google Auth, but there is no one waiting for it"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getRedirectUri()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "http://127.0.0.1"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getActualHttpPort()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, ":8080"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getActualHttpPort()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    const-string v2, "/public/callback/google_drive"

    .line 41
    .line 42
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {}, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber;->access$200()Lorg/slf4j/Logger;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "Using Google Drive login redirect URL: {}"

    .line 51
    .line 52
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v0
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
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    :cond_0
    return-void
.end method

.method public waitForCode()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->error:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->code:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No authorization code received within the time limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User authorization failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsk/mimac/slideshow/downloader/GoogleDriveGrabber$LocalVerificationCodeReceiver;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while waiting for code"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
