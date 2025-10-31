.class public Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALIGN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/HorizontalAlignment;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BORDER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/BorderStyle;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERTICAL_ALIGN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/VerticalAlignment;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private endColumn:I

.field private firstColumn:I

.field private final formulaEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

.field private gotBounds:Z

.field private final helper:Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;

.field private mergedRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Ljava/util/Formatter;

.field private final wb:Lorg/apache/poi/ss/usermodel/Workbook;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->LEFT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "left"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const-string v5, "center"

    const/4 v7, 0x3

    aput-object v5, v1, v7

    sget-object v8, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->RIGHT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/4 v9, 0x4

    aput-object v8, v1, v9

    const-string v8, "right"

    const/4 v10, 0x5

    aput-object v8, v1, v10

    sget-object v8, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->FILL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/4 v11, 0x6

    aput-object v8, v1, v11

    const/4 v8, 0x7

    aput-object v2, v1, v8

    sget-object v12, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/16 v13, 0x8

    aput-object v12, v1, v13

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->CENTER_SELECTION:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/16 v14, 0xa

    aput-object v2, v1, v14

    const/16 v2, 0xb

    aput-object v5, v1, v2

    sget-object v15, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->DISTRIBUTED:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const/16 v16, 0xc

    aput-object v15, v1, v16

    const/16 v15, 0xd

    aput-object v5, v1, v15

    invoke-static {v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mapFor([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->ALIGN:Ljava/util/Map;

    new-array v1, v14, [Ljava/lang/Object;

    sget-object v5, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v5, v1, v3

    const-string v5, "bottom"

    aput-object v5, v1, v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v5, v1, v6

    const-string v5, "middle"

    aput-object v5, v1, v7

    sget-object v17, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->DISTRIBUTED:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v17, v1, v9

    aput-object v5, v1, v10

    sget-object v17, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v17, v1, v11

    aput-object v5, v1, v8

    sget-object v5, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v5, v1, v13

    const-string v5, "top"

    aput-object v5, v1, v12

    invoke-static {v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mapFor([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->VERTICAL_ALIGN:Ljava/util/Map;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v5, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v5, v1, v3

    const-string v3, "solid 1pt"

    aput-object v3, v1, v4

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASH_DOT_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v6

    const-string v4, "dashed 1pt"

    aput-object v4, v1, v7

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v9

    aput-object v3, v1, v10

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->DOTTED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v11

    aput-object v3, v1, v8

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->DOUBLE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v13

    const-string v4, "double 1pt"

    aput-object v4, v1, v12

    sget-object v4, Lorg/apache/poi/ss/usermodel/BorderStyle;->HAIR:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v4, v1, v14

    const-string v4, "solid 1px"

    aput-object v4, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v16

    aput-object v3, v1, v15

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v0

    const/16 v0, 0xf

    aput-object v3, v1, v0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASH_DOT_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "dashedn 1pt"

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const/16 v0, 0x13

    aput-object v3, v1, v0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "none"

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->SLANTED_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const/16 v0, 0x17

    aput-object v3, v1, v0

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->THICK:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "solid 2pt"

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v0, 0x1b

    aput-object v3, v1, v0

    invoke-static {v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mapFor([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->BORDER:Ljava/util/Map;

    const-string v0, "org.apache.poi.javax.xml.stream.XMLInputFactory"

    const-string v1, "com.fasterxml.aalto.stax.InputFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.poi.javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.fasterxml.aalto.stax.OutputFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.poi.javax.xml.stream.XMLEventFactory"

    const-string v1, "com.fasterxml.aalto.stax.EventFactoryImpl"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;

    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/HSSFHtmlHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    :goto_0
    iput-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->helper:Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz v0, :cond_1

    new-instance v0, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;

    invoke-direct {v0}, Lsk/mimac/slideshow/utils/poi/excel/XSSFHtmlHelper;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->formulaEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown workbook type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "wb"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private borderStyles(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->BORDER:Ljava/util/Map;

    const-string v2, "border-left"

    invoke-direct {p0, v2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v0, "border-right"

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v0, "border-top"

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v0, "border-bottom"

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method private ensureColumnBounds(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 3

    iget-boolean v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->gotBounds:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->rowIterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    iput v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getFirstCellNum()S

    move-result v1

    if-ltz v1, :cond_2

    iget v2, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    iget v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Row;->getLastCellNum()S

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->gotBounds:Z

    return-void
.end method

.method public static excelToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;

    .line 16
    .line 17
    invoke-direct {v3, v2, v0}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;-><init>(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/lang/StringBuilder;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printPage()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    :goto_1
    new-instance v1, Ljava/io/IOException;

    .line 44
    .line 45
    const-string v2, "Can\'t process excel file \'"

    .line 46
    .line 47
    const-string v3, "\'"

    .line 48
    .line 49
    invoke-static {v2, p0, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v1
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
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
.end method

.method private fontStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getFontIndex()S

    move-result p1

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Font;->getBold()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v2, "font-weight: bold;%n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Font;->getItalic()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v0, "font-style: italic;%n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_1
    return-void
.end method

.method private getCellData(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const-string p1, "?"

    return-object p1

    :cond_0
    const-string p1, "&nbsp;"

    return-object p1

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->formulaEvaluator:Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getColSpan(II)I
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mergedRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/2addr p1, v2

    return p1

    :cond_1
    return v2
.end method

.method private static varargs mapFor([Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private printCols(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 3

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->ensureColumnBounds(Lorg/apache/poi/ss/usermodel/Sheet;)V

    iget p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    :goto_0
    iget v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "<col/>%n"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printPage()V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "<!DOCTYPE html>%n<html>%n<head>%n<meta charset=\'utf-8\'/>%n"

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v2, "<style type=\"text/css\">%n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "html, body {  width: 100%;  height: 100%;  max-width: 100%;  margin: 0;  padding: 0;}body {  background-color: white;}.excelDefaults {  color: black;  text-decoration: none;  direction: ltr;  text-transform: none;  text-indent: 0;  letter-spacing: 0;  word-spacing: 0;  white-space: normal;  unicode-bidi: normal;  vertical-align: 0;  text-shadow: none;  list-style-image: none;  list-style-type: none;  padding: 0;  margin: 0;  border-collapse: collapse;  vertical-align: bottom;  font-style: normal;  font-family: sans-serif;  font-variant: normal;  font-weight: normal;  font-size: 1em;  text-align: right;  max-width: 100%;}.excelDefaults td {  padding: 1px 5px;}"

    aput-object v4, v3, v1

    const-string v4, "%s%n"

    invoke-virtual {v0, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-direct {p0}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printStyles()V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->XLS_BODY_STYLE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v3, "</style>%n</head>%n<body style=\'%s\'>%n"

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-direct {p0}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printSheets()V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v2, "</body>%n</html>%n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method private printSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "excelDefaults"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "<table class=\'%s\'>%n"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printCols(Lorg/apache/poi/ss/usermodel/Sheet;)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printSheetContent(Lorg/apache/poi/ss/usermodel/Sheet;)V

    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "</table>%n"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method private printSheetContent(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "<tbody>%n"

    invoke-virtual {v1, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->rowIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    iget-object v3, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v4, "<tr>%n"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget v3, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->firstColumn:I

    :goto_1
    iget v4, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->endColumn:I

    if-ge v3, v4, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getFirstCellNum()S

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getLastCellNum()S

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v1, v3}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->tagStyle(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->getCellData(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    const-string v4, "&nbsp;"

    const-string v6, ""

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v7

    invoke-direct {p0, v3, v7}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->getColSpan(II)I

    move-result v7

    iget-object v8, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    invoke-direct {p0, v5}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleName(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v2

    aput-object v6, v10, v0

    const/4 v5, 0x2

    aput-object v9, v10, v5

    const/4 v5, 0x3

    aput-object v4, v10, v5

    const-string v4, "<td class=%s %s colspan=\"%d\">%s</td>%n"

    invoke-virtual {v8, v4, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    sub-int/2addr v7, v0

    add-int/2addr v7, v3

    add-int/lit8 v3, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v3, "</tr>%n"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v0, "</tbody>%n"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method private printSheets()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mergedRegions:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getNumMergedRegions()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->mergedRegions:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printSheet(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method

.method private printStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleName(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "excelDefaults"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, ".%s .%s {%n"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleContents(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "}%n"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-void
.end method

.method private printStyles()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->printStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private styleContents(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->ALIGN:Ljava/util/Map;

    const-string v2, "text-align"

    invoke-direct {p0, v2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getVerticalAlignmentEnum()Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->VERTICAL_ALIGN:Ljava/util/Map;

    const-string v2, "vertical-align"

    invoke-direct {p0, v2, v0, v1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->fontStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->borderStyles(Lorg/apache/poi/ss/usermodel/CellStyle;)V

    iget-object v0, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->helper:Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;

    iget-object v1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    invoke-interface {v0, p1, v1}, Lsk/mimac/slideshow/utils/poi/excel/HtmlHelper;->colorStyles(Lorg/apache/poi/ss/usermodel/CellStyle;Ljava/util/Formatter;)V

    return-void
.end method

.method private styleName(Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->wb:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "_%02x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private styleOut(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->out:Ljava/util/Formatter;

    const-string v0, " %s: %s;%n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p3, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_0
    return-void
.end method

.method private tagStyle(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellStyle;)Ljava/lang/String;
    .locals 1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getAlignmentEnum()Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    if-ne p2, v0, :cond_2

    sget-object p2, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-static {p1}, Lsk/mimac/slideshow/utils/poi/excel/ExcelConverter;->ultimateCellType(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "style=\"text-align: center;\""

    return-object p1

    :cond_1
    const-string p1, "style=\"text-align: left;\""

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private static ultimateCellType(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    return-object v0
.end method
