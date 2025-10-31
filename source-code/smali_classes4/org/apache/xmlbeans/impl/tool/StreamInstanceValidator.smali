.class public Lorg/apache/xmlbeans/impl/tool/StreamInstanceValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final XML_INPUT_FACTORY:Lorg/apache/poi/javax/xml/stream/XMLInputFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->newInstance()Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/StreamInstanceValidator;->XML_INPUT_FACTORY:Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13

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

    const-string v6, "dl"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "noupr"

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "noupa"

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    sget-object v9, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v8, p0, v0, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    array-length p0, p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    if-lez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unrecognized option: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/StreamInstanceValidator;->printUsage()V

    :goto_2
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_2
    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->args()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/StreamInstanceValidator;->printUsage()V

    return-void

    :cond_5
    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    const-string v2, "nopvr"

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    const-string v3, ".xsd"

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    const-string v5, ".jar"

    invoke-virtual {v8, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v7}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v7

    const/4 v8, 0x0

    :goto_6
    array-length v9, v3

    if-ge v8, v9, :cond_9

    :try_start_0
    aget-object v9, v3, v8

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v9

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v12, v3, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v12, " not loadable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    new-array v1, v1, [Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/xmlbeans/XmlObject;

    check-cast v1, [Lorg/apache/xmlbeans/XmlObject;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v6}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    if-eqz p0, :cond_a

    invoke-virtual {v6}, Lorg/apache/xmlbeans/XmlOptions;->setCompileDownloadUrls()Lorg/apache/xmlbeans/XmlOptions;

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v6}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoPvrRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v6}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoUpaRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_c
    if-eqz v5, :cond_d

    array-length p0, v5

    if-lez p0, :cond_d

    invoke-static {v5}, Lorg/apache/xmlbeans/XmlBeans;->resourceLoaderForPath([Ljava/io/File;)Lorg/apache/xmlbeans/ResourceLoader;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderForResource(Lorg/apache/xmlbeans/ResourceLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    goto :goto_8

    :cond_d
    const/4 p0, 0x0

    :goto_8
    if-eqz v1, :cond_11

    :try_start_1
    array-length v0, v1

    if-lez v0, :cond_11

    invoke-static {v1, p0, v6}, Lorg/apache/xmlbeans/XmlBeans;->compileXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception p0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    instance-of v0, p0, Lorg/apache/xmlbeans/XmlException;

    if-nez v0, :cond_f

    :cond_e
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_f
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Schema invalid"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    return-void

    :cond_11
    :goto_a
    invoke-static {v4, p0, v7}, Lorg/apache/xmlbeans/impl/tool/StreamInstanceValidator;->validateFiles([Ljava/io/File;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Validates the specified instance against the specified schema."

    .line 4
    .line 5
    const-string v2, "A streaming validation useful for validating very large instance "

    .line 6
    .line 7
    const-string v3, "documents with less memory. Contrast with the validate tool."

    .line 8
    .line 9
    const-string v4, "Usage: svalidate [-dl] [-nopvr] [-noupa] [-license] schema.xsd instance.xml"

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "Options:"

    .line 15
    .line 16
    const-string v2, "    -dl - permit network downloads for imports and includes (default is off)"

    .line 17
    .line 18
    const-string v3, "    -noupa - do not enforce the unique particle attribution rule"

    .line 19
    .line 20
    const-string v4, "    -nopvr - do not enforce the particle valid (restriction) rule"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "    -license - prints license information"

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

.method private static stringFromError(Lorg/apache/xmlbeans/XmlError;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getSeverity()I

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlError;->severityAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getLine()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getColumn()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateFiles([Ljava/io/File;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 16

    move-object/from16 v1, p0

    new-instance v9, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;

    invoke-direct {v9}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    array-length v0, v1

    if-ge v11, v0, :cond_4

    aget-object v12, v1, v11

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lorg/apache/xmlbeans/impl/tool/StreamInstanceValidator;->XML_INPUT_FACTORY:Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    invoke-virtual {v4, v13, v0}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->next()I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v10

    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->init(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;ZLorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Ljava/util/Collection;)V

    :goto_2
    invoke-virtual {v9}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/validator/ValidatingXMLStreamReader;->next()I

    goto :goto_2

    :catch_2
    move-exception v0

    move-wide v2, v14

    goto :goto_4

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_1
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v2, v14

    :try_start_2
    invoke-virtual {v9}, Lorg/apache/poi/javax/xml/stream/util/StreamReaderDelegate;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :goto_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "error for file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_7

    :goto_4
    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4}, Lorg/apache/poi/javax/xml/stream/Location;->getLineNumber()I

    move-result v5

    invoke-interface {v4}, Lorg/apache/poi/javax/xml/stream/Location;->getColumnNumber()I

    move-result v6

    invoke-interface {v4}, Lorg/apache/poi/javax/xml/stream/Location;->getCharacterOffset()I

    move-result v4

    invoke-static {v0, v13, v5, v6, v4}, Lorg/apache/xmlbeans/XmlError;->forLocation(Ljava/lang/String;Ljava/lang/String;III)Lorg/apache/xmlbeans/XmlError;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, " valid. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " ms)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, " NOT valid ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, " ms):"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlError;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2, v13}, Lorg/apache/xmlbeans/impl/tool/StreamInstanceValidator;->stringFromError(Lorg/apache/xmlbeans/XmlError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_3
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
