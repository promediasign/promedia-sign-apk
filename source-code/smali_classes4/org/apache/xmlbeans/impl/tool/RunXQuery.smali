.class public Lorg/apache/xmlbeans/impl/tool/RunXQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "usage"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "license"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "version"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "verbose"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "pretty"

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    const-string v9, "q"

    const-string v10, "qf"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v8, p0, v0, v11}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_14

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_14

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unrecognized option: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/RunXQuery;->printUsage()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_2
    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    invoke-virtual {v8, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_4
    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->args()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/RunXQuery;->printUsage()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_5
    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v8, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "No query specified"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_8
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Specify -qf or -q, not both."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_9
    if-eqz v4, :cond_b

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v6

    if-gez v6, :cond_a

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_a
    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Cannot read query file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_b
    :goto_5
    if-eqz p0, :cond_c

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Compile Query:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    :cond_c
    :try_start_1
    invoke-static {v3}, Lorg/apache/xmlbeans/XmlBeans;->compileQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    :goto_6
    array-length v6, v4

    if-ge v5, v6, :cond_13

    if-eqz p0, :cond_e

    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    aget-object v7, v4, v5

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_7
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v7

    if-gez v7, :cond_d

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_a

    :cond_d
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->write(I)V

    goto :goto_7

    :cond_e
    :goto_8
    aget-object v6, v4, v5

    invoke-static {v6}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/File;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_f

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Executing Query..."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->println()V

    :cond_f
    :try_start_3
    invoke-interface {v6, v3}, Lorg/apache/xmlbeans/XmlObject;->execQuery(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_10

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Query Result:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    new-instance v7, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v7}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->setSaveOuter()Lorg/apache/xmlbeans/XmlOptions;

    if-eqz v2, :cond_11

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;

    :cond_11
    const/4 v8, 0x0

    :goto_9
    array-length v9, v6

    if-ge v8, v9, :cond_12

    aget-object v9, v6, v8

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v9, v10, v7}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :catchall_2
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Error executing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :goto_a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Error parsing instance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_13
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Error compiling query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_14
    :goto_b
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/RunXQuery;->printUsage()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Run an XQuery against an XML instance"

    .line 4
    .line 5
    const-string v2, "Usage:"

    .line 6
    .line 7
    const-string v3, "xquery [-verbose] [-pretty] [-q <query> | -qf query.xq] [file.xml]*"

    .line 8
    .line 9
    const-string v4, " -q <query> to specify a query on the command-line"

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, " -qf <query> to specify a file containing a query"

    .line 15
    .line 16
    const-string v2, " -pretty pretty-prints the results"

    .line 17
    .line 18
    const-string v3, " -license prints license information"

    .line 19
    .line 20
    const-string v4, " the query is run on each XML file specified"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
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
