.class public final enum Lorg/apache/poi/ss/SpreadsheetVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/SpreadsheetVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/SpreadsheetVersion;

.field public static final enum EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

.field public static final enum EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;


# instance fields
.field private final _maxCellStyles:I

.field private final _maxColumns:I

.field private final _maxCondFormats:I

.field private final _maxFunctionArgs:I

.field private final _maxRows:I

.field private final _maxTextLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lorg/apache/poi/ss/SpreadsheetVersion;

    const/16 v7, 0xfa0

    const/16 v8, 0x7fff

    const-string v1, "EXCEL97"

    const/4 v2, 0x0

    const/high16 v3, 0x10000

    const/16 v4, 0x100

    const/16 v5, 0x1e

    const/4 v6, 0x3

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/ss/SpreadsheetVersion;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v9, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    new-instance v0, Lorg/apache/poi/ss/SpreadsheetVersion;

    const v17, 0xfa00

    const/16 v18, 0x7fff

    const-string v11, "EXCEL2007"

    const/4 v12, 0x1

    const/high16 v13, 0x100000

    const/16 v14, 0x4000

    const/16 v15, 0xff

    const v16, 0x7fffffff

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/ss/SpreadsheetVersion;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/poi/ss/SpreadsheetVersion;

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->$VALUES:[Lorg/apache/poi/ss/SpreadsheetVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxRows:I

    iput p4, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxColumns:I

    iput p5, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxFunctionArgs:I

    iput p6, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxCondFormats:I

    iput p7, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxCellStyles:I

    iput p8, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxTextLength:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->$VALUES:[Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/SpreadsheetVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method


# virtual methods
.method public getLastColumnIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxColumns:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLastColumnName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastRowIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxRows:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMaxCellStyles()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxCellStyles:I

    return v0
.end method

.method public getMaxColumns()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxColumns:I

    return v0
.end method

.method public getMaxConditionalFormats()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxCondFormats:I

    return v0
.end method

.method public getMaxFunctionArgs()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxFunctionArgs:I

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxRows:I

    return v0
.end method

.method public getMaxTextLength()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/SpreadsheetVersion;->_maxTextLength:I

    return v0
.end method
