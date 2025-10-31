.class public Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebSocketFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;,
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;,
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;
    }
.end annotation


# static fields
.field public static final TEXT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private transient _payloadLength:I

.field private transient _payloadString:Ljava/lang/String;

.field private fin:Z

.field private maskingKey:[B

.field private opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field private payload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;",
            "Ljava/util/List<",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    invoke-virtual {v4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    cmp-long p1, v2, v0

    if-ltz p1, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, v2, v0

    if-gtz p1, :cond_2

    long-to-int p1, v2

    iput p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    new-array p1, p1, [B

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v3

    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    return-void

    :cond_2
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object p2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MESSAGE_TOO_BIG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v0, "Max frame length has been exceeded."

    invoke-direct {p1, p2, v0}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    invoke-virtual {p0, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;[B)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    invoke-virtual {p0, p4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    invoke-virtual {p0, p3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setTextPayload(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B[B)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B[B)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    invoke-virtual {p0, p4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    invoke-virtual {p0, p3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getMaskingKey()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    return-void
.end method

.method public static binary2Text([B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static binary2Text([BII)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static checkedRead(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private payloadToString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "b] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v1

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->TEXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v3, "..."

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getTextPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x64

    if-le v2, v5, :cond_1

    invoke-virtual {v0, v1, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v1, v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v4, v1, :cond_3

    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v1, v1

    if-le v1, v2, :cond_4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;)Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-byte v0, v0

    .line 10
    and-int/lit16 v1, v0, 0x80

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    and-int/lit8 v2, v0, 0xf

    .line 18
    .line 19
    int-to-byte v3, v2

    .line 20
    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->find(B)Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    and-int/lit8 v0, v0, 0x70

    .line 25
    .line 26
    if-nez v0, :cond_5

    .line 27
    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->isControlFrame()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    new-instance p0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    .line 40
    .line 41
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 42
    .line 43
    const-string v1, "Fragmented control frame."

    .line 44
    .line 45
    invoke-direct {p0, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_2
    :goto_1
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 50
    .line 51
    invoke-direct {v0, v3, v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->readPayloadInfo(Ljava/io/InputStream;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->readPayload(Ljava/io/InputStream;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CLOSE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 65
    .line 66
    if-ne p0, v1, :cond_3

    .line 67
    .line 68
    new-instance p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;Lfi/iki/elonen/NanoWSD$1;)V

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_3
    return-object v0

    .line 76
    :cond_4
    new-instance p0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    .line 77
    .line 78
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 79
    .line 80
    const-string v1, "Received frame with reserved/unknown opcode "

    .line 81
    .line 82
    const-string v3, "."

    .line 83
    .line 84
    invoke-static {v2, v1, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {p0, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_5
    new-instance p0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    .line 93
    .line 94
    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, "The reserved bits ("

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ") must be 0."

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p0, v1, v0}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0
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
.end method

.method private readPayload(Ljava/io/InputStream;)V
    .locals 4

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    sub-int/2addr v2, v1

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    invoke-static {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    iget-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    rem-int/lit8 v3, v0, 0x4

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object p1

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->TEXT:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object p1

    invoke-static {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->binary2Text([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private readPayloadInfo(Ljava/io/InputStream;)V
    .locals 8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x7f

    and-int/2addr v0, v4

    int-to-byte v0, v0

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const/16 v5, 0x7e

    if-ne v0, v5, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    invoke-static {v4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v4

    or-int/2addr v0, v4

    const v4, 0xffff

    and-int/2addr v0, v4

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-lt v0, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "Invalid data frame 2byte length. (not using minimal length encoding)"

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_2
    if-ne v0, v4, :cond_5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x30

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x28

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    int-to-long v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    int-to-long v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-long v6, v0

    or-long/2addr v4, v6

    const-wide/32 v6, 0x10000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    long-to-int v0, v4

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    goto :goto_1

    :cond_3
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MESSAGE_TOO_BIG:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "Max frame length has been exceeded."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "Invalid data frame 4byte length. (not using minimal length encoding)"

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->isControlFrame()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const/16 v4, 0x7d

    if-gt v0, v4, :cond_7

    iget-object v4, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    sget-object v5, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->CLOSE:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v4, v5, :cond_8

    if-eq v0, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "Received close frame with payload len 1."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PROTOCOL_ERROR:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "Control frame with payload length > 125 bytes."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    :goto_3
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    array-length v1, v0

    if-ge v2, v1, :cond_9

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_3

    :cond_9
    return-void
.end method

.method public static text2Binary(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBinaryPayload()[B
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    return-object v0
.end method

.method public getMaskingKey()[B
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    return-object v0
.end method

.method public getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-object v0
.end method

.method public getTextPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->binary2Text([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    return-object v0
.end method

.method public isFin()Z
    .locals 1

    iget-boolean v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    return v0
.end method

.method public isMasked()Z
    .locals 2

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBinaryPayload([B)V
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length p1, p1

    iput p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const/4 p1, 0x0

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    return-void
.end method

.method public setFin(Z)V
    .locals 0

    iput-boolean p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    return-void
.end method

.method public setMaskingKey([B)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MaskingKey "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasn\'t length 4"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    return-void
.end method

.method public setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-void
.end method

.method public setTextPayload(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->text2Binary(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WS["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v2, "fin"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v2, "inter"

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const-string v2, "masked"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string v2, "unmasked"

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payloadToString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/16 v2, 0x5d

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
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
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    iget-boolean v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    int-to-byte v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->getValue()B

    move-result v3

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const/16 v3, 0x7d

    if-gt v0, v3, :cond_2

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    int-to-byte v0, v0

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    int-to-byte v0, v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    :cond_2
    const v1, 0xffff

    if-gt v0, v1, :cond_4

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xfe

    goto :goto_2

    :cond_3
    const/16 v0, 0x7e

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xff

    goto :goto_3

    :cond_5
    const/16 v0, 0x7f

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x10

    goto :goto_2

    :goto_4
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_5
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ge v2, v0, :cond_7

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    aget-byte v0, v0, v2

    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    rem-int/lit8 v3, v2, 0x4

    aget-byte v1, v1, v3

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
