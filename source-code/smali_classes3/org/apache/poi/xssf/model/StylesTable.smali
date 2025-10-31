.class public Lorg/apache/poi/xssf/model/StylesTable;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# static fields
.field public static final FIRST_CUSTOM_STYLE_ID:I = 0xa5

.field private static final MAXIMUM_STYLE_ID:I


# instance fields
.field private MAXIMUM_NUMBER_OF_DATA_FORMATS:I

.field private final borders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;",
            ">;"
        }
    .end annotation
.end field

.field private doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

.field private final dxfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;",
            ">;"
        }
    .end annotation
.end field

.field private final fills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;",
            ">;"
        }
    .end annotation
.end field

.field private final fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFFont;",
            ">;"
        }
    .end annotation
.end field

.field private indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field private final numberFormats:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final styleXfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;",
            ">;"
        }
    .end annotation
.end field

.field private final tableStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/TableStyle;",
            ">;"
        }
    .end annotation
.end field

.field private theme:Lorg/apache/poi/xssf/model/ThemesTable;

.field private workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

.field private final xfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxCellStyles()I

    move-result v0

    sput v0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_STYLE_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    const/16 v0, 0xfa

    iput v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->addNewStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    invoke-direct {p0}, Lorg/apache/poi/xssf/model/StylesTable;->initialize()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/DefaultIndexedColorMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    const/16 v0, 0xfa

    iput v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method private static createDefaultBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;
    .locals 1

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    return-object v0
.end method

.method private static createDefaultFills()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;
    .locals 4

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget-object v1, v2, v3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v1

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    aget-object v0, v2, v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;->addNewPatternFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType;->DARK_GRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPatternFill;->setPatternType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPatternType$Enum;)V

    return-object v2
.end method

.method private static createDefaultFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 4

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontHeightInPoints(S)V

    sget-short v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;->DEFAULT_FONT_COLOR:S

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setColor(S)V

    const-string v0, "Calibri"

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFontName(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/FontFamily;->SWISS:Lorg/apache/poi/ss/usermodel/FontFamily;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setFamily(Lorg/apache/poi/ss/usermodel/FontFamily;)V

    sget-object v0, Lorg/apache/poi/ss/usermodel/FontScheme;->MINOR:Lorg/apache/poi/ss/usermodel/FontScheme;

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setScheme(Lorg/apache/poi/ss/usermodel/FontScheme;)V

    return-object v1
.end method

.method private static createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 3

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setNumFmtId(J)V

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFontId(J)V

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFillId(J)V

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    return-object v0
.end method

.method private getNumberFormatId(Ljava/lang/String;)S
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Short;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v1, "Number format not in style table: "

    .line 49
    .line 50
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
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
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
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
.end method

.method private initialize()V
    .locals 5

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultFills()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v4, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    invoke-direct {v2, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/xssf/model/StylesTable;->createDefaultXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setXfId(J)V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public _getDXfsSize()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public _getStyleXfsSize()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_STYLE_ID:I

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setNumFmtId(J)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFontId(J)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setFillId(J)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setBorderId(J)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->setXfId(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/model/StylesTable;->putCellXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    .line 41
    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    .line 47
    .line 48
    invoke-direct {v2, v1, v0, p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;-><init>(IILorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/ThemesTable;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v2, "The maximum number of Cell Styles was exceeded. You can define up to "

    .line 55
    .line 56
    const-string v3, " style in a .xlsx Workbook"

    .line 57
    .line 58
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
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
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
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
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
.end method

.method public ensureThemesTable()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/model/StylesTable;->setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V

    return-void
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getBold()Z

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getColor()S

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontHeight()S

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getItalic()Z

    move-result v2

    if-ne v2, p5, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getStrikeout()Z

    move-result v2

    if-ne v2, p6, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getTypeOffset()S

    move-result v2

    if-ne v2, p7, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getUnderline()B

    move-result v2

    if-ne v2, p8, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBorderAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    return-object p1
.end method

.method public getBorders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCTStylesheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object v0

    return-object v0
.end method

.method public getCellStyleXfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCellXfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    return-object p1
.end method

.method public getDxfAt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    return-object p1
.end method

.method public getExplicitTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/usermodel/TableStyle;

    return-object p1
.end method

.method public getExplicitTableStyleNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFillAt(I)Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    return-object p1
.end method

.method public getFills()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    return-object p1
.end method

.method public getFonts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFFont;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-object v0
.end method

.method public getMaxNumberOfDataFormats()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    return v0
.end method

.method public getNumCellStyles()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumDataFormats()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getNumberFormatAt(S)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumberFormats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 5

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getXfId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getXfId()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-direct {v0, p1, v1, p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;-><init>(IILorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/ThemesTable;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;->valueOf(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;->getStyle()Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getExplicitTableStyle(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/TableStyle;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Lorg/apache/poi/xssf/model/ThemesTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    return-object v0
.end method

.method public putBorder(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public putCellStyleXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public putCellXf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public putDxf(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public putFill(Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/model/StylesTable;->putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;Z)I

    move-result p1

    return p1
.end method

.method public putFont(Lorg/apache/poi/xssf/usermodel/XSSFFont;Z)I
    .locals 1

    .line 2
    const/4 v0, -0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method public putNumberFormat(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumberFormatId(Ljava/lang/String;)S

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Found the format, but couldn\'t figure out where - should never happen!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/16 v1, 0xa4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    if-ltz v0, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v1, v0

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cowardly avoiding creating a number format with a negative id.This is probably due to arithmetic overflow."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The maximum number of Data Formats was exceeded. You can define up to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    const-string v2, " formats in a .xlsx Workbook."

    .line 1
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putNumberFormat(SLjava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->getCoreXf()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 8

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;->fromColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;)Lorg/apache/poi/xssf/usermodel/CustomIndexedColorMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getNumFmts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->getNumFmtArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getNumFmtId()J

    move-result-wide v5

    long-to-int v6, v5

    int-to-short v5, v6

    iget-object v6, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->getFormatCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFonts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->getFontArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    new-instance v6, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    iget-object v7, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v6, v5, v4, v7}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;ILorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFills()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->getFillArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    iget-object v7, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v6, v4, v7}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getBorders()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->getBorderArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    iget-object v5, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    new-instance v6, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    iget-object v7, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v6, v4, v7}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->getXfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellStyleXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->getXfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getDxfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->getDxfArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getTableStyles()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyles;->getTableStyleArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->tableStyles:Ljava/util/Map;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;

    iget-object v6, p0, Lorg/apache/poi/xssf/model/StylesTable;->indexedColors:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-direct {v5, v1, v0, v2, v6}, Lorg/apache/poi/xssf/usermodel/XSSFTableStyle;-><init>(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyle;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    return-void

    :goto_6
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeNumberFormat(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getNumberFormatId(Ljava/lang/String;)S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->removeNumberFormat(S)Z

    move-result p1

    return p1
.end method

.method public removeNumberFormat(S)Z
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->isSetNumFmtId()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->getNumFmtId()J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->unsetApplyNumberFormat()V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;->unsetNumFmtId()V

    goto :goto_1

    :cond_2
    return v0
.end method

.method public replaceCellStyleXfAt(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replaceCellXfAt(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMaxNumberOfDataFormats(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumDataFormats()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum Number of Data Formats must be greater than or equal to 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the maximum number of data formats less than the current quantity.Data formats must be explicitly removed (via StylesTable.removeNumberFormat) before the limit can be decreased."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->MAXIMUM_NUMBER_OF_DATA_FORMATS:I

    return-void
.end method

.method public setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->theme:Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/model/ThemesTable;->setColorMap(Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->setThemesTable(Lorg/apache/poi/xssf/model/ThemesTable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/model/StylesTable;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;->getStyleSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->numberFormats:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;->addNewNumFmt()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->setNumFmtId(J)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmt;->setFormatCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setNumFmts(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumFmts;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFonts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->getCTFont()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;

    move-result-object v6

    aput-object v6, v2, v5

    move v5, v7

    goto :goto_1

    :cond_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;->setFontArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFont;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setFonts(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFonts;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getFills()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->fills:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellFill;->getCTFill()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;

    move-result-object v6

    aput-object v6, v2, v5

    move v5, v7

    goto :goto_2

    :cond_4
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;->setFillArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFill;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setFills(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFills;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getBorders()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;

    move-result-object v1

    :cond_5
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    iget-object v3, p0, Lorg/apache/poi/xssf/model/StylesTable;->borders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/extensions/XSSFCellBorder;->getCTBorder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    move-result-object v5

    aput-object v5, v2, v4

    move v4, v6

    goto :goto_3

    :cond_6
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;->setBorderArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setBorders(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorders;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;

    move-result-object v1

    :cond_7
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->xfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;->setXfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setCellXfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellXfs;)V

    :cond_8
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getCellStyleXfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->styleXfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;->setXfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXf;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setCellStyleXfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellStyleXfs;)V

    :cond_a
    iget-object v1, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->getDxfs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;

    move-result-object v1

    :cond_b
    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->setCount(J)V

    iget-object v2, p0, Lorg/apache/poi/xssf/model/StylesTable;->dxfs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;->setDxfArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxf;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTStylesheet;->setDxfs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDxfs;)V

    :cond_c
    iget-object v0, p0, Lorg/apache/poi/xssf/model/StylesTable;->doc:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/StyleSheetDocument;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v0, p1, v1}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
