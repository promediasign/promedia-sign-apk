.class public Lorg/apache/velocity/runtime/VelocimacroManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;
    }
.end annotation


# instance fields
.field private final globalNamespace:Ljava/util/Map;

.field private inlineLocalMode:Z

.field private inlineReplacesGlobal:Z

.field private final libraries:Ljava/util/Map;

.field private namespacesOn:Z

.field private registerFromLib:Z

.field private rsvc:Lorg/apache/velocity/runtime/RuntimeServices;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->registerFromLib:Z

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x11

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->libraries:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->namespacesOn:Z

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineLocalMode:Z

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineReplacesGlobal:Z

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x65

    invoke-direct {v0, v1, v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    return-void
.end method

.method private usingNamespaces()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->namespacesOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineLocalMode:Z

    return v0
.end method


# virtual methods
.method public addVM(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;",
            "Lorg/apache/velocity/Template;",
            "Z)Z"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    new-instance p5, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    .line 4
    .line 5
    invoke-virtual {p4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    iget-object v5, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, p5

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v3, p3

    .line 16
    invoke-direct/range {v0 .. v6}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;-><init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Ljava/lang/String;Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/runtime/VelocimacroManager$1;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->registerFromLib:Z

    .line 20
    .line 21
    invoke-virtual {p5, p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->setFromLibrary(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    .line 31
    .line 32
    iget-boolean p3, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->registerFromLib:Z

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    iget-object p3, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->libraries:Ljava/util/Map;

    .line 38
    .line 39
    invoke-virtual {p4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p3, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object p3, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->libraries:Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {p4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-nez p3, :cond_1

    .line 58
    .line 59
    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroManager;->usingNamespaces()Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_1

    .line 64
    .line 65
    invoke-virtual {p4}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :goto_0
    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return v0

    .line 73
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 74
    .line 75
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getFromLibrary()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p5, p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->setFromLibrary(Z)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    .line 86
    .line 87
    const-string p3, "Null AST for "

    .line 88
    .line 89
    const-string p5, " in "

    .line 90
    .line 91
    invoke-static {p3, p1, p5}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p4}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p2
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
.end method

.method public get(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/VelocimacroProxy;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineReplacesGlobal:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getProxy()Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroManager;->usingNamespaces()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    invoke-virtual {p3}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    if-lez p3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getProxy()Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getProxy()Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLibraryName(Ljava/lang/String;Lorg/apache/velocity/Template;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/VelocimacroManager;->usingNamespaces()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/velocity/Template;->getMacros()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    if-eqz p2, :cond_0

    return-object v1

    :cond_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->globalNamespace:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/VelocimacroManager$MacroEntry;->getSourceTemplate()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public setInlineReplacesGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineReplacesGlobal:Z

    return-void
.end method

.method public setNamespaceUsage(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->namespacesOn:Z

    return-void
.end method

.method public setRegisterFromLib(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->registerFromLib:Z

    return-void
.end method

.method public setTemplateLocalInlineVM(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/VelocimacroManager;->inlineLocalMode:Z

    return-void
.end method
