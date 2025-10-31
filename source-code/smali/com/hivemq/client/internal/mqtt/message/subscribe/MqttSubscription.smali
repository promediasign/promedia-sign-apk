.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscription;


# instance fields
.field private final noLocal:Z

.field private final qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private final retainAsPublished:Z

.field private final retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

.field private final topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZLcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-boolean p3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iput-boolean p5, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    return-void
.end method

.method public static decodeNoLocal(B)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static decodeQos(B)Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 0

    and-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->fromCode(I)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object p0

    return-object p0
.end method

.method public static decodeRetainAsPublished(B)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static decodeRetainHandling(B)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .locals 0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    move-result-object p0

    return-object p0
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "topicFilter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retainHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retainAsPublished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encodeSubscriptionOptions()B
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_0
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_1
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    invoke-virtual {v1, v3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    iget-boolean v3, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    iget-boolean p1, p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    return-object v0
.end method

.method public getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->topicFilter:Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->qos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->noLocal:Z

    .line 19
    .line 20
    const/16 v2, 0x4d5

    .line 21
    .line 22
    const/16 v3, 0x4cf

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x4cf

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v0, 0x4d5

    .line 30
    .line 31
    :goto_0
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainHandling:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->retainAsPublished:Z

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const/16 v2, 0x4cf

    .line 48
    .line 49
    :cond_1
    add-int/2addr v0, v2

    .line 50
    return v0
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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MqttSubscription{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->toAttributeString()Ljava/lang/String;

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
