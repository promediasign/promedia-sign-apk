.class public Lorg/h2/engine/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_LITERALS_ALL:I = 0x2

.field public static final ALLOW_LITERALS_NONE:I = 0x0

.field public static final ALLOW_LITERALS_NUMBERS:I = 0x1

.field public static final BLOB_SEARCH:Z = false

.field public static final BUILD_DATE:Ljava/lang/String; = "2017-06-10"

.field public static final BUILD_DATE_STABLE:Ljava/lang/String; = "2017-04-23"

.field public static final BUILD_ID:I = 0xc4

.field public static final BUILD_ID_STABLE:I = 0xc3

.field public static final BUILD_SNAPSHOT:Z = false

.field public static final BUILD_VENDOR_AND_VERSION:Ljava/lang/String; = null

.field public static final CACHE_MIN_RECORDS:I = 0x10

.field public static final CACHE_SIZE_DEFAULT:I = 0x10000

.field public static final CACHE_TYPE_DEFAULT:Ljava/lang/String; = "LRU"

.field public static final CLUSTERING_DISABLED:Ljava/lang/String; = "\'\'"

.field public static final CLUSTERING_ENABLED:Ljava/lang/String; = "TRUE"

.field public static final CONN_URL_COLUMNLIST:Ljava/lang/String; = "jdbc:columnlist:connection"

.field public static final CONN_URL_INTERNAL:Ljava/lang/String; = "jdbc:default:connection"

.field public static final COST_ROW_OFFSET:I = 0x3e8

.field public static final DEADLOCK_CHECK:I = 0x64

.field public static final DEFAULT_HTTP_PORT:I = 0x1f92

.field public static final DEFAULT_LOCK_MODE:I = 0x3

.field public static final DEFAULT_MAX_LENGTH_INPLACE_LOB:I = 0x100

.field public static final DEFAULT_MAX_LOG_SIZE:J = 0x1000000L

.field public static final DEFAULT_MAX_MEMORY_UNDO:I = 0xc350

.field public static final DEFAULT_MAX_OPERATION_MEMORY:I = 0x186a0

.field public static final DEFAULT_PAGE_SIZE:I = 0x1000

.field public static final DEFAULT_RESULT_SET_CONCURRENCY:I = 0x3ef

.field public static final DEFAULT_TCP_PORT:I = 0x2384

.field public static final DEFAULT_WRITE_DELAY:I = 0x1f4

.field public static final ENCRYPTION_KEY_HASH_ITERATIONS:I = 0x400

.field public static final FILE_BLOCK_SIZE:I = 0x10

.field public static final INITIAL_LOCK_TIMEOUT:I = 0x7d0

.field public static final IO_BUFFER_SIZE:I = 0x1000

.field public static final IO_BUFFER_SIZE_COMPRESS:I = 0x20000

.field public static final LOCK_MODE_OFF:I = 0x0

.field public static final LOCK_MODE_READ_COMMITTED:I = 0x3

.field public static final LOCK_MODE_TABLE:I = 0x1

.field public static final LOCK_MODE_TABLE_GC:I = 0x2

.field public static final LOCK_SLEEP:I = 0x3e8

.field public static final MAX_PARAMETER_INDEX:I = 0x186a0

.field public static final MEMORY_DATA:I = 0x18

.field public static final MEMORY_FACTOR:I = 0x40

.field public static final MEMORY_OBJECT:I = 0x18

.field public static final MEMORY_PAGE_BTREE:I = 0xb8

.field public static final MEMORY_PAGE_DATA:I = 0xf0

.field public static final MEMORY_PAGE_DATA_OVERFLOW:I = 0x78

.field public static final MEMORY_POINTER:I = 0x8

.field public static final MEMORY_ROW:I = 0x28

.field public static final MIN_WRITE_DELAY:I = 0x5

.field public static final PREFIX_INDEX:Ljava/lang/String; = "INDEX_"

.field public static final PREFIX_JOIN:Ljava/lang/String; = "SYSTEM_JOIN_"

.field public static final PREFIX_PRIMARY_KEY:Ljava/lang/String; = "PRIMARY_KEY_"

.field public static final PUBLIC_ROLE_NAME:Ljava/lang/String; = "PUBLIC"

.field public static final QUERY_STATISTICS_MAX_ENTRIES:I = 0x64

.field public static final SALT_LEN:I = 0x8

.field public static final SCHEMA_MAIN:Ljava/lang/String; = "PUBLIC"

.field public static final SELECTIVITY_DEFAULT:I = 0x32

.field public static final SELECTIVITY_DISTINCT_COUNT:I = 0x2710

.field public static final SERVER_PROPERTIES_DIR:Ljava/lang/String; = "~"

.field public static final SERVER_PROPERTIES_NAME:Ljava/lang/String; = ".h2.server.properties"

.field public static final SLOW_QUERY_LIMIT_MS:J = 0x64L

.field public static final START_URL:Ljava/lang/String; = "jdbc:h2:"

.field public static final SUFFIX_DB_FILE:Ljava/lang/String; = ".db"

.field public static final SUFFIX_LOBS_DIRECTORY:Ljava/lang/String; = ".lobs.db"

.field public static final SUFFIX_LOB_FILE:Ljava/lang/String; = ".lob.db"

.field public static final SUFFIX_LOCK_FILE:Ljava/lang/String; = ".lock.db"

.field public static final SUFFIX_MV_FILE:Ljava/lang/String; = ".mv.db"

.field public static final SUFFIX_MV_STORE_NEW_FILE:Ljava/lang/String; = ".newFile"

.field public static final SUFFIX_MV_STORE_TEMP_FILE:Ljava/lang/String; = ".tempFile"

.field public static final SUFFIX_OLD_DATABASE_FILE:Ljava/lang/String; = ".data.db"

.field public static final SUFFIX_PAGE_FILE:Ljava/lang/String; = ".h2.db"

.field public static final SUFFIX_TEMP_FILE:Ljava/lang/String; = ".temp.db"

.field public static final SUFFIX_TRACE_FILE:Ljava/lang/String; = ".trace.db"

.field public static final TCP_PROTOCOL_VERSION_10:I = 0xa

.field public static final TCP_PROTOCOL_VERSION_11:I = 0xb

.field public static final TCP_PROTOCOL_VERSION_12:I = 0xc

.field public static final TCP_PROTOCOL_VERSION_13:I = 0xd

.field public static final TCP_PROTOCOL_VERSION_14:I = 0xe

.field public static final TCP_PROTOCOL_VERSION_15:I = 0xf

.field public static final TCP_PROTOCOL_VERSION_16:I = 0x10

.field public static final TCP_PROTOCOL_VERSION_6:I = 0x6

.field public static final TCP_PROTOCOL_VERSION_7:I = 0x7

.field public static final TCP_PROTOCOL_VERSION_8:I = 0x8

.field public static final TCP_PROTOCOL_VERSION_9:I = 0x9

.field public static final THROTTLE_DELAY:I = 0x32

.field public static final UNDO_BLOCK_SIZE:I = 0x100000

.field public static final URL_FORMAT:Ljava/lang/String; = "jdbc:h2:{ {.|mem:}[name] | [file:]fileName | {tcp|ssl}:[//]server[:port][,server2[:port]]/name }[;key=value...]"

.field public static final USER_PACKAGE:Ljava/lang/String; = "org.h2.dynamic"

.field public static final UTF8:Ljava/nio/charset/Charset;

.field public static final VERSION_MAJOR:I = 0x1

.field public static final VERSION_MINOR:I = 0x4

.field public static final VIEW_COST_CACHE_MAX_AGE:I = 0x2710

.field public static final VIEW_INDEX_CACHE_SIZE:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/h2/engine/Constants;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (2017-06-10)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/h2/engine/Constants;->BUILD_VENDOR_AND_VERSION:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "1.4.196_"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "1.4.196"

    .line 13
    .line 14
    :goto_0
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
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

.method public static getVersionStable()Ljava/lang/Object;
    .locals 1

    const-string v0, "1.4.195"

    return-object v0
.end method
