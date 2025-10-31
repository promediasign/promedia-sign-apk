.class public Lorg/conscrypt/ct/CTLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final description:Ljava/lang/String;

.field private final logId:[B

.field private final publicKey:Ljava/security/PublicKey;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->logId:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    iput-object p3, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/conscrypt/ct/CTLogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/conscrypt/ct/CTLogInfo;

    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    iget-object v3, p1, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    iget-object p1, p1, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getID()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->logId:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object v2, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v0

    .line 25
    return v1
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

.method public verifySingleSCT(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/CertificateEntry;)Lorg/conscrypt/ct/VerifiedSCT$Status;
    .locals 2

    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lorg/conscrypt/ct/CertificateEntry;)[B

    move-result-object p2
    :try_end_0
    .catch Lorg/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lorg/conscrypt/ct/DigitallySigned;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lorg/conscrypt/ct/DigitallySigned;

    move-result-object p1

    invoke-virtual {p1}, Lorg/conscrypt/ct/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1

    :catch_2
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1

    :catch_3
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1
.end method
