.class public Lorg/h2/command/ddl/AlterUser;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private admin:Z

.field private hash:Lorg/h2/expression/Expression;

.field private newName:Ljava/lang/String;

.field private password:Lorg/h2/expression/Expression;

.field private salt:Lorg/h2/expression/Expression;

.field private type:I

.field private user:Lorg/h2/engine/User;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/command/ddl/AlterUser;->type:I

    return v0
.end method

.method public setAdmin(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/ddl/AlterUser;->admin:Z

    return-void
.end method

.method public setHash(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->hash:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setNewName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->password:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setSalt(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->salt:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/ddl/AlterUser;->type:I

    return-void
.end method

.method public setUser(Lorg/h2/engine/User;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    return-void
.end method

.method public update()I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lorg/h2/command/ddl/AlterUser;->type:I

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "type="

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lorg/h2/command/ddl/AlterUser;->type:I

    .line 26
    .line 27
    invoke-static {v1, v2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :pswitch_0
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    .line 33
    .line 34
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 35
    .line 36
    invoke-virtual {v2}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eq v1, v2, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->hash:Lorg/h2/expression/Expression;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->salt:Lorg/h2/expression/Expression;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    iget-object v3, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    .line 60
    .line 61
    iget-object v4, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 62
    .line 63
    invoke-static {v3, v4, v2, v1}, Lorg/h2/command/ddl/CreateUser;->setSaltAndHash(Lorg/h2/engine/User;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    .line 68
    .line 69
    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 70
    .line 71
    iget-object v3, p0, Lorg/h2/command/ddl/AlterUser;->password:Lorg/h2/expression/Expression;

    .line 72
    .line 73
    invoke-static {v1, v2, v3}, Lorg/h2/command/ddl/CreateUser;->setPassword(Lorg/h2/engine/User;Lorg/h2/engine/Session;Lorg/h2/expression/Expression;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 78
    .line 79
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_2

    .line 93
    .line 94
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    .line 97
    .line 98
    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_2

    .line 107
    .line 108
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 109
    .line 110
    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    .line 111
    .line 112
    iget-object v3, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/engine/Database;->renameDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    const v0, 0x15fb1

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->newName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    throw v0

    .line 128
    :pswitch_2
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 129
    .line 130
    invoke-virtual {v1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 135
    .line 136
    .line 137
    iget-boolean v1, p0, Lorg/h2/command/ddl/AlterUser;->admin:Z

    .line 138
    .line 139
    if-nez v1, :cond_3

    .line 140
    .line 141
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    .line 142
    .line 143
    invoke-virtual {v1}, Lorg/h2/engine/User;->checkOwnsNoSchemas()V

    .line 144
    .line 145
    .line 146
    :cond_3
    iget-object v1, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    .line 147
    .line 148
    iget-boolean v2, p0, Lorg/h2/command/ddl/AlterUser;->admin:Z

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lorg/h2/engine/User;->setAdmin(Z)V

    .line 151
    .line 152
    .line 153
    :goto_0
    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 154
    .line 155
    iget-object v2, p0, Lorg/h2/command/ddl/AlterUser;->user:Lorg/h2/engine/User;

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    return v0

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
