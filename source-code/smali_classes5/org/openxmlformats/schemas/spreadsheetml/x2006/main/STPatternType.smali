.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Factory;,
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;
    }
.end annotation


# static fields
.field public static final DARK_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_GRID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_HORIZONTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_TRELLIS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_UP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final DARK_VERTICAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final GRAY_0625:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final GRAY_125:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final INT_DARK_DOWN:I = 0x8

.field public static final INT_DARK_GRAY:I = 0x4

.field public static final INT_DARK_GRID:I = 0xa

.field public static final INT_DARK_HORIZONTAL:I = 0x6

.field public static final INT_DARK_TRELLIS:I = 0xb

.field public static final INT_DARK_UP:I = 0x9

.field public static final INT_DARK_VERTICAL:I = 0x7

.field public static final INT_GRAY_0625:I = 0x13

.field public static final INT_GRAY_125:I = 0x12

.field public static final INT_LIGHT_DOWN:I = 0xe

.field public static final INT_LIGHT_GRAY:I = 0x5

.field public static final INT_LIGHT_GRID:I = 0x10

.field public static final INT_LIGHT_HORIZONTAL:I = 0xc

.field public static final INT_LIGHT_TRELLIS:I = 0x11

.field public static final INT_LIGHT_UP:I = 0xf

.field public static final INT_LIGHT_VERTICAL:I = 0xd

.field public static final INT_MEDIUM_GRAY:I = 0x3

.field public static final INT_NONE:I = 0x1

.field public static final INT_SOLID:I = 0x2

.field public static final LIGHT_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_GRID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_HORIZONTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_TRELLIS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_UP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final LIGHT_VERTICAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final MEDIUM_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final SOLID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "stpatterntype7939type"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "none"

    .line 16
    .line 17
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 22
    .line 23
    const-string v0, "solid"

    .line 24
    .line 25
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->SOLID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 30
    .line 31
    const-string v0, "mediumGray"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->MEDIUM_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 38
    .line 39
    const-string v0, "darkGray"

    .line 40
    .line 41
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 46
    .line 47
    const-string v0, "lightGray"

    .line 48
    .line 49
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 54
    .line 55
    const-string v0, "darkHorizontal"

    .line 56
    .line 57
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_HORIZONTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 62
    .line 63
    const-string v0, "darkVertical"

    .line 64
    .line 65
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_VERTICAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 70
    .line 71
    const-string v0, "darkDown"

    .line 72
    .line 73
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 78
    .line 79
    const-string v0, "darkUp"

    .line 80
    .line 81
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_UP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 86
    .line 87
    const-string v0, "darkGrid"

    .line 88
    .line 89
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_GRID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 94
    .line 95
    const-string v0, "darkTrellis"

    .line 96
    .line 97
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_TRELLIS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 102
    .line 103
    const-string v0, "lightHorizontal"

    .line 104
    .line 105
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_HORIZONTAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 110
    .line 111
    const-string v0, "lightVertical"

    .line 112
    .line 113
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_VERTICAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 118
    .line 119
    const-string v0, "lightDown"

    .line 120
    .line 121
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_DOWN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 126
    .line 127
    const-string v0, "lightUp"

    .line 128
    .line 129
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_UP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 134
    .line 135
    const-string v0, "lightGrid"

    .line 136
    .line 137
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_GRID:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 142
    .line 143
    const-string v0, "lightTrellis"

    .line 144
    .line 145
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->LIGHT_TRELLIS:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 150
    .line 151
    const-string v0, "gray125"

    .line 152
    .line 153
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->GRAY_125:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 158
    .line 159
    const-string v0, "gray0625"

    .line 160
    .line 161
    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->GRAY_0625:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    .line 166
    .line 167
    return-void
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
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
