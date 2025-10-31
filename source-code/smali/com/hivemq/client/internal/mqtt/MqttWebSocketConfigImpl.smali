.class public Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;


# instance fields
.field private final handshakeTimeoutMs:I

.field private final queryString:Ljava/lang/String;

.field private final serverPath:Ljava/lang/String;

.field private final subprotocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    const-string v1, "mqtt"

    const/16 v2, 0x2710

    const-string v3, ""

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    iput p4, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    iget p1, p1, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHandshakeTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSubprotocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->serverPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->queryString:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->subprotocol:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->c(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->handshakeTimeoutMs:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    return v0
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
.end method
