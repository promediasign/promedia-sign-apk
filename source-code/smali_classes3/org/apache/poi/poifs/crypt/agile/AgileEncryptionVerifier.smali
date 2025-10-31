.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    }
.end annotation


# instance fields
.field private blockSize:I

.field private certList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private keyBits:I


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    invoke-interface {p1}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;->getEncryption()Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setBlockSize(I)V

    const p1, 0x186a0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSpinCount(I)V

    return-void
.end method


# virtual methods
.method public addCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;-><init>()V

    iput-object p1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    .locals 3

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    return v0
.end method

.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    return v0
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    return-void
.end method

.method public final setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    :cond_0
    return-void
.end method

.method public setEncryptedKey([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedKey([B)V

    return-void
.end method

.method public setEncryptedVerifier([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifier([B)V

    return-void
.end method

.method public setEncryptedVerifierHash([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifierHash([B)V

    return-void
.end method

.method public setKeySize(I)V
    .locals 4

    .line 1
    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    aget v3, v0, v2

    .line 14
    .line 15
    if-ne v3, p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    .line 22
    .line 23
    const-string v1, "KeySize "

    .line 24
    .line 25
    const-string v2, " not allowed for cipher "

    .line 26
    .line 27
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
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

.method public setSalt([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSalt([B)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "invalid verifier salt"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
