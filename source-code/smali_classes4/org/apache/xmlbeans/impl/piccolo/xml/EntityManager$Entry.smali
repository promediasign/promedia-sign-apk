.class final Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/piccolo/xml/Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field isOpen:Z

.field isStandalone:Z

.field ndata:Ljava/lang/String;

.field pubID:Ljava/lang/String;

.field reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

.field sysID:Ljava/lang/String;

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

.field value:[C


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->pubID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->value:[C

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;-><init>(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->pubID:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charArrayValue()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->value:[C

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    return-void
.end method

.method public getDeclaredEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->getXMLDeclaredEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->pubID:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->value:[C

    invoke-direct {v0, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInternal()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    return v0
.end method

.method public isParsed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    return v0
.end method

.method public isStandaloneDeclared()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->isXMLStandaloneDeclared()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    .line 6
    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isInternal()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;->access$000(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;)Lorg/xml/sax/EntityResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;

    .line 25
    .line 26
    new-instance v2, Ljava/net/URL;

    .line 27
    .line 28
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Z)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

    .line 44
    .line 45
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;->access$000(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;)Lorg/xml/sax/EntityResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->pubID:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v0, v2, v3}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;

    .line 60
    .line 61
    new-instance v2, Ljava/net/URL;

    .line 62
    .line 63
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;

    .line 83
    .line 84
    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;-><init>(Ljava/io/Reader;Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    new-instance v3, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;

    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {v3, v2, v0, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    iput-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    new-instance v2, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;

    .line 107
    .line 108
    new-instance v3, Ljava/net/URL;

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {v2, v3, v0, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    .line 129
    .line 130
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    .line 131
    .line 132
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->isXMLStandalone()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    .line 137
    .line 138
    :cond_4
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    .line 139
    .line 140
    return-void

    .line 141
    :cond_5
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/util/RecursionException;

    .line 142
    .line 143
    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/piccolo/util/RecursionException;-><init>()V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_6
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/FatalParsingException;

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuffer;

    .line 150
    .line 151
    const-string v2, "Cannot reference entity; unknown NDATA type \'"

    .line 152
    .line 153
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    .line 157
    .line 158
    const-string v3, "\'"

    .line 159
    .line 160
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/FatalParsingException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0
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

.method public setStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    return-void
.end method

.method public stringValue()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->value:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
