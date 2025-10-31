.class public Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    const/4 v1, 0x0

    const/16 v2, 0x3c

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1, v1}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->of(IZLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    return-void
.end method

.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-void
.end method

.method private static delegate(IZLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 11

    new-instance v10, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_0
    const-wide v0, 0xffffffffL

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    sget-object v9, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;-><init>(IZJLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v10
.end method

.method private getRawSimpleAuth()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;->of(Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;)Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getRawWillPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    const/4 v0, 0x0

    return-object v0
.end method

.method public static of(IZLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;
    .locals 1

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate(IZLcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    return-object v0
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V

    return-object v0
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->getRawSimpleAuth()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;

    move-result-object v0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->getRawWillPublish()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->getRestrictions()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectRestrictions;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "keepAlive="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->getKeepAlive()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cleanSession="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->isCleanSession()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", restrictions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", simpleAuth="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ", willPublish="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getKeepAlive()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result v0

    return v0
.end method

.method public getRestrictions()Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3ConnectRestrictions;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCleanSession()Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MqttConnect{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;->toAttributeString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x7d

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
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
.end method
