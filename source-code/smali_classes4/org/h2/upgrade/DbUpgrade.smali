.class public Lorg/h2/upgrade/DbUpgrade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UPGRADE_CLASSES_PRESENT:Z

.field private static deleteOldDb:Z

.field private static scriptInTempDir:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.h2.upgrade.v1_1.Driver"

    invoke-static {v0}, Lorg/h2/util/Utils;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/h2/upgrade/DbUpgrade;->UPGRADE_CLASSES_PRESENT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectOrUpgrade(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 5

    sget-boolean v0, Lorg/h2/upgrade/DbUpgrade;->UPGRADE_CLASSES_PRESENT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    const-string v2, "password"

    invoke-virtual {p1, v2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, [C

    if-eqz v2, :cond_1

    const-string v2, "password"

    check-cast p1, [C

    invoke-static {p1}, Lorg/h2/util/StringUtils;->cloneCharArray([C)[C

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p1, Lorg/h2/engine/ConnectionInfo;

    invoke-direct {p1, p0, v0}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isRemote()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".h2.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".data.db"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    const-string v2, "NO_UPGRADE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0, v0}, Lorg/h2/upgrade/DbUpgrade;->connectWithOldVersion(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0

    :cond_5
    const-class p0, Lorg/h2/upgrade/DbUpgrade;

    monitor-enter p0

    :try_start_0
    invoke-static {p1, v0}, Lorg/h2/upgrade/DbUpgrade;->upgrade(Lorg/h2/engine/ConnectionInfo;Ljava/util/Properties;)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_0
    return-object v1
.end method

.method private static connectWithOldVersion(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jdbc:h2v1_1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";IGNORE_UNKNOWN_SETTINGS=TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static setDeleteOldDb(Z)V
    .locals 0

    sput-boolean p0, Lorg/h2/upgrade/DbUpgrade;->deleteOldDb:Z

    return-void
.end method

.method public static setScriptInTempDir(Z)V
    .locals 0

    sput-boolean p0, Lorg/h2/upgrade/DbUpgrade;->scriptInTempDir:Z

    return-void
.end method

.method private static upgrade(Lorg/h2/engine/ConnectionInfo;Ljava/util/Properties;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "jdbc:h2v1_1:"

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, ".data.db"

    .line 10
    .line 11
    invoke-static {v2, v3}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, ".index.db"

    .line 16
    .line 17
    invoke-static {v2, v4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, ".lobs.db"

    .line 22
    .line 23
    invoke-static {v2, v5}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, ".backup"

    .line 28
    .line 29
    invoke-static {v3, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {v4, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-static {v5, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/4 v9, 0x0

    .line 42
    :try_start_0
    sget-boolean v10, Lorg/h2/upgrade/DbUpgrade;->scriptInTempDir:Z

    .line 43
    .line 44
    if-eqz v10, :cond_0

    .line 45
    .line 46
    new-instance v10, Ljava/io/File;

    .line 47
    .line 48
    const-string v11, "java.io.tmpdir"

    .line 49
    .line 50
    const-string v12, "."

    .line 51
    .line 52
    invoke-static {v11, v12}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 60
    .line 61
    .line 62
    const-string v10, "h2dbmigration"

    .line 63
    .line 64
    const-string v11, "backup.sql"

    .line 65
    .line 66
    invoke-static {v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto/16 :goto_8

    .line 77
    .line 78
    :catch_0
    move-exception v0

    .line 79
    move-object/from16 v16, v2

    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v11, ".script.sql"

    .line 92
    .line 93
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ";UNDO_LOG=0;LOG=0;LOCK_MODE=0"

    .line 109
    .line 110
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v11, "CIPHER"

    .line 118
    .line 119
    invoke-virtual {v0, v11, v9}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    if-eqz v9, :cond_1

    .line 124
    .line 125
    new-instance v11, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ";CIPHER="

    .line 134
    .line 135
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    :cond_1
    move-object/from16 v11, p1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    move-object v9, v10

    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :catch_1
    move-exception v0

    .line 153
    move-object/from16 v16, v2

    .line 154
    .line 155
    :goto_1
    move-object v9, v10

    .line 156
    goto/16 :goto_7

    .line 157
    .line 158
    :goto_2
    invoke-static {v1, v11}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    const-string v13, "\'"

    .line 175
    .line 176
    const-string v14, "\' --hide--"

    .line 177
    .line 178
    const-string v15, "\' cipher aes password \'"

    .line 179
    .line 180
    move-object/from16 v16, v2

    .line 181
    .line 182
    const-string v2, "script to \'"

    .line 183
    .line 184
    move-object/from16 v17, v9

    .line 185
    .line 186
    if-eqz v9, :cond_2

    .line 187
    .line 188
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_3
    invoke-interface {v11, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :catch_2
    move-exception v0

    .line 214
    goto :goto_1

    .line 215
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    goto :goto_3

    .line 231
    :goto_4
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    .line 232
    .line 233
    .line 234
    invoke-static {v3, v7}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v4, v8}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v5}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_3

    .line 245
    .line 246
    invoke-static {v5, v6}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_3
    const-string v1, "IFEXISTS"

    .line 250
    .line 251
    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    .line 253
    .line 254
    .line 255
    new-instance v1, Lorg/h2/jdbc/JdbcConnection;

    .line 256
    .line 257
    const/4 v9, 0x1

    .line 258
    invoke-direct {v1, v0, v9}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/ConnectionInfo;Z)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 262
    .line 263
    .line 264
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    const-string v9, "runscript from \'"

    .line 266
    .line 267
    if-eqz v17, :cond_4

    .line 268
    .line 269
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    :goto_5
    invoke-interface {v0, v9}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    goto :goto_5

    .line 310
    :goto_6
    const-string v9, "analyze"

    .line 311
    .line 312
    invoke-interface {v0, v9}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    const-string v9, "shutdown compact"

    .line 316
    .line 317
    invoke-interface {v0, v9}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 321
    .line 322
    .line 323
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    .line 324
    .line 325
    .line 326
    sget-boolean v0, Lorg/h2/upgrade/DbUpgrade;->deleteOldDb:Z

    .line 327
    .line 328
    if-eqz v0, :cond_5

    .line 329
    .line 330
    invoke-static {v7}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v8}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v6, v2}, Lorg/h2/store/fs/FileUtils;->deleteRecursive(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 337
    .line 338
    .line 339
    :cond_5
    if-eqz v10, :cond_6

    .line 340
    .line 341
    invoke-static {v10}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_6
    return-void

    .line 345
    :goto_7
    :try_start_4
    invoke-static {v7}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_7

    .line 350
    .line 351
    invoke-static {v7, v3}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_7
    invoke-static {v8}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_8

    .line 359
    .line 360
    invoke-static {v8, v4}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_8
    invoke-static {v6}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_9

    .line 368
    .line 369
    invoke-static {v6, v5}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    move-object/from16 v2, v16

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v2, ".h2.db"

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    :goto_8
    if-eqz v9, :cond_a

    .line 400
    .line 401
    invoke-static {v9}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :cond_a
    throw v0
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
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
.end method
