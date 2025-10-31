.class Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;
.super Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComputeGoogleCredential"
.end annotation


# static fields
.field private static final TOKEN_SERVER_ENCODED_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->getMetadataServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/computeMetadata/v1/instance/service-accounts/default/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;->TOKEN_SERVER_ENCODED_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1

    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;->TOKEN_SERVER_ENCODED_URL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;)V

    return-void
.end method


# virtual methods
.method public executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->getTokenServerEncodedUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->getTransport()Lcom/google/api/client/http/HttpTransport;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/google/api/client/json/JsonObjectParser;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "Metadata-Flavor"

    .line 39
    .line 40
    const-string v4, "Google"

    .line 41
    .line 42
    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/16 v3, 0xc8

    .line 58
    .line 59
    if-ne v2, v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-class v3, Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 72
    .line 73
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 81
    .line 82
    const-string v1, "Empty content from metadata token server request."

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_1
    const/16 v1, 0x194

    .line 89
    .line 90
    if-ne v2, v1, :cond_2

    .line 91
    .line 92
    new-instance v0, Ljava/io/IOException;

    .line 93
    .line 94
    const-string v1, "Error code "

    .line 95
    .line 96
    const-string v3, " trying to get security access token from Compute Engine metadata for the default service account. This may be because the virtual machine instance does not have permission scopes specified."

    .line 97
    .line 98
    invoke-static {v2, v1, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "Unexpected Error code "

    .line 115
    .line 116
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v2, " trying to get security access token from Compute Engine metadata for the default service account: "

    .line 123
    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v1
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
