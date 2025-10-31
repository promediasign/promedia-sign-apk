.class public Lorg/apache/poi/xssf/usermodel/XSSFSheet;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# static fields
.field public static final TWIPS_PER_POINT:I = 0x14

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _rows:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
            ">;"
        }
    .end annotation
.end field

.field private arrayFormulas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

.field private dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

.field private hyperlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;",
            ">;"
        }
    .end annotation
.end field

.field private sharedFormulas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;",
            ">;"
        }
    .end annotation
.end field

.field protected sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

.field private sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

.field private tables:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation
.end field

.field protected worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onDocumentCreate()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    invoke-direct {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    return-void
.end method

.method private varargs addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetIgnoredErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;->addNewIgnoredError()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->addIgnoredErrors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    return-void
.end method

.method private addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->addNewMergeCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->setRef(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result p1

    return p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Merged region "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must contain 2 or more cells"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private checkForIntersectingMergedRegions()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3, v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The range "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intersects with another merged region "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in this sheet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private checkForMergedRegionsIntersectingArrayFormulas()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private collapseColumn(I)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v2, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setGroupHidden(IIZ)I

    move-result p1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private collapseRow(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->writeHidden(Lorg/apache/poi/xssf/usermodel/XSSFRow;IZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCollapsed(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private containsColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;I)Z
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private createPivotTable()Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    invoke-virtual {v3, p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setParentSheet(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_DEFINITION:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    invoke-virtual {v4, v6}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v9, v10, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v3, v6}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setPivotCacheDefinition(Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;)V

    new-instance v5, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;

    invoke-virtual {v4, v7}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addPivotCache(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V

    invoke-virtual {v3, v5}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setPivotCache(Lorg/apache/poi/xssf/usermodel/XSSFPivotCache;)V

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v5

    invoke-virtual {v6, v4, v5, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object v4

    invoke-virtual {v6, v2}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPivotTables(Ljava/util/List;)V

    return-object v3
.end method

.method private createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable()Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->setDefaultPivotTableDefinition()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->createSourceReferences(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->getPivotCacheDefinition()Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->createCacheFields(Lorg/apache/poi/ss/usermodel/Sheet;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;->createDefaultDataColumns()V

    return-object v0
.end method

.method private ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private expandColumn(I)V
    .locals 12

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v2, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result v2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findColInfoIdx(II)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnGroupCollapsed(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result v2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result v3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    aget-object v4, v0, v3

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnGroupHiddenByParent(I)Z

    move-result p1

    const/4 v5, 0x1

    if-nez p1, :cond_4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result p1

    const/4 v6, 0x0

    :goto_0
    if-gt v2, v3, :cond_4

    aget-object v7, v0, v2

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v8

    if-ne p1, v8, :cond_2

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->unsetHidden()V

    if-eqz v6, :cond_3

    invoke-interface {v7, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    long-to-int p1, v0

    add-int/lit8 v7, p1, 0x1

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    move-object v10, v11

    invoke-direct/range {v6 .. v11}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private expandRow(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHidden()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowGroupHiddenByParent(I)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result p1

    if-ne v0, p1, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetHidden()V

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowGroupCollapsed(I)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCollapsed()V

    :cond_5
    return-void
.end method

.method private findColInfoIdx(II)I
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-ltz p1, :cond_4

    .line 9
    .line 10
    if-ltz p2, :cond_3

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move v1, p2

    .line 17
    :goto_0
    array-length v2, v0

    .line 18
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    aget-object v2, v0, v1

    .line 21
    .line 22
    invoke-direct {p0, v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->containsColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    int-to-long v4, p2

    .line 34
    cmp-long v6, v2, v4

    .line 35
    .line 36
    if-lez v6, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    const/4 p1, -0x1

    .line 43
    return p1

    .line 44
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "fromIdx parameter out of range: "

    .line 47
    .line 48
    invoke-static {p2, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "column parameter out of range: "

    .line 59
    .line 60
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p2
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
.end method

.method private findEndOfColumnOutlineGroup(I)I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    aget-object v1, v0, p1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ge p1, v3, :cond_2

    add-int/lit8 v4, p1, 0x1

    aget-object v5, v0, v4

    invoke-direct {p0, v1, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v1

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v4

    move-object v1, v5

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private findStartOfColumnOutlineGroup(I)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    aget-object v1, v0, p1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v2

    :goto_0
    if-eqz p1, :cond_2

    add-int/lit8 v3, p1, -0x1

    aget-object v3, v0, v3

    invoke-direct {p0, v3, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v1

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    move-object v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private findStartOfRowOutlineGroup(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v1

    if-ge v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->getBrkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->getId()J

    move-result-wide v2

    long-to-int v3, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    sub-int v4, p1, v1

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    mul-int v6, v3, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    :goto_0
    if-gt v6, v2, :cond_3

    move v7, v1

    :goto_1
    if-gt v7, p1, :cond_2

    invoke-virtual {p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v8

    :cond_0
    invoke-virtual {v8, v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v8, v7}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v9

    :cond_1
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-class p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;->create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->sizeOfSheetViewArray()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getMaxOutlineLevelCols()S
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-short v0, v3

    return v0
.end method

.method private getMaxOutlineLevelRows()S
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    int-to-short v0, v1

    return v0
.end method

.method private getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v0

    return-object v0
.end method

.method private static getReferenceBuiltInRecord(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 19

    .line 1
    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    const/4 v5, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-object/from16 v1, p0

    .line 8
    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    .line 15
    .line 16
    const/4 v11, 0x1

    .line 17
    const/4 v12, 0x1

    .line 18
    const/4 v9, 0x0

    .line 19
    move-object v7, v0

    .line 20
    move-object/from16 v8, p0

    .line 21
    .line 22
    move/from16 v10, p2

    .line 23
    .line 24
    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    .line 28
    .line 29
    const/16 v17, 0x1

    .line 30
    .line 31
    const/16 v18, 0x1

    .line 32
    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    move-object v13, v1

    .line 36
    move-object/from16 v14, p0

    .line 37
    .line 38
    move/from16 v15, p3

    .line 39
    .line 40
    invoke-direct/range {v13 .. v18}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v7, v2

    .line 47
    move/from16 v9, p4

    .line 48
    .line 49
    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 50
    .line 51
    .line 52
    invoke-static/range {p0 .. p0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, ":$"

    .line 57
    .line 58
    const-string v5, "!$"

    .line 59
    .line 60
    const-string v7, ""

    .line 61
    .line 62
    const/4 v8, -0x1

    .line 63
    move/from16 v9, p1

    .line 64
    .line 65
    if-ne v9, v8, :cond_1

    .line 66
    .line 67
    move/from16 v9, p2

    .line 68
    .line 69
    if-eq v9, v8, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move/from16 v6, p3

    .line 73
    .line 74
    move-object v0, v7

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/4 v9, 0x2

    .line 81
    aget-object v6, v6, v9

    .line 82
    .line 83
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    aget-object v0, v0, v9

    .line 88
    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move/from16 v6, p3

    .line 114
    .line 115
    :goto_1
    if-ne v6, v8, :cond_2

    .line 116
    .line 117
    move/from16 v6, p4

    .line 118
    .line 119
    if-eq v6, v8, :cond_3

    .line 120
    .line 121
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/4 v6, 0x1

    .line 126
    aget-object v1, v1, v6

    .line 127
    .line 128
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    aget-object v2, v2, v6

    .line 133
    .line 134
    const-string v6, "0"

    .line 135
    .line 136
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_3

    .line 141
    .line 142
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_3

    .line 147
    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    :cond_3
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-lez v1, :cond_4

    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-lez v1, :cond_4

    .line 187
    .line 188
    const/16 v1, 0x2c

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    return-object v0
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

.method private getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    const-string v2, "_xlnm.Print_Titles"

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v2

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    aget-object v6, v0, v5

    invoke-static {v6}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v7

    if-eq v7, v2, :cond_3

    :cond_2
    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v7

    if-ne v7, v8, :cond_4

    :cond_3
    if-eqz p1, :cond_7

    return-object v6

    :cond_4
    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v7

    if-eq v7, v3, :cond_6

    :cond_5
    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v7

    if-ne v7, v8, :cond_7

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v7

    if-ne v7, v8, :cond_7

    :cond_6
    if-nez p1, :cond_7

    return-object v6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method private getRows(IIZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
            ">;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    :goto_0
    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p3

    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance p1, Ljava/lang/Integer;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p2, p3, p1}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRows: startRowNum must be less than or equal to endRowNum"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    return-object v0
.end method

.method private getSheetTypePageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getSheetTypeSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->sizeOfSelectionArray()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->insertNewSelection(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getSelectionArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object v0

    return-object v0
.end method

.method private getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetFormatPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setSheetPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    return-object v0
.end method

.method private getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->setSheetViewArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    return-object v0
.end method

.method private getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    return-object v0
.end method

.method private groupColumn1Based(II)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    check-cast v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    :cond_0
    int-to-long v6, p1

    invoke-interface {v2, v6, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v6, v0, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v2, v4, v5, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v4, v3, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    :cond_1
    :goto_0
    if-gt p1, p2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v2

    long-to-int p1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelCol()V

    return-void
.end method

.method private initHyperlinks()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetHyperlinks()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->getHyperlinkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v7, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :goto_2
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->getRowArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-direct {v3, v2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z
    .locals 4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide p1

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isColumnGroupCollapsed(I)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_0

    return v1

    :cond_0
    aget-object v2, v0, v2

    aget-object p1, v0, p1

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result p1

    return p1
.end method

.method private isColumnGroupHiddenByParent(I)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfColumnOutlineGroup(I)I

    move-result v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v0, v3

    aget-object v2, v0, v2

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfColumnOutlineGroup(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    aget-object v4, v0, v4

    aget-object p1, v0, p1

    invoke-direct {p0, v4, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-le v2, v1, :cond_2

    return v3

    :cond_2
    return p1
.end method

.method private isRowGroupCollapsed(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCollapsed()Z

    move-result p1

    return p1
.end method

.method private isRowGroupHiddenByParent(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findEndOfRowOutlineGroup(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result v0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->findStartOfRowOutlineGroup(I)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result p1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-le v1, v2, :cond_3

    return v0

    :cond_3
    return p1
.end method

.method private static newSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    .locals 6

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setDefaultRowHeight(D)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setWorkbookViewId(J)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v1

    const-string v2, "A1"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->setRef(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setBottom(D)V

    const-wide v4, 0x3fd3333333333333L    # 0.3

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setFooter(D)V

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setHeader(D)V

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setLeft(D)V

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setRight(D)V

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setTop(D)V

    return-object v0
.end method

.method private removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V
    .locals 7

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->getBrkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->getId()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    invoke-interface {p2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->removeBrk(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    return-object v0
.end method

.method private setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V
    .locals 4

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->addNewBrk()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setId(J)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setMan(Z)V

    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->setMax(J)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->sizeOfBrkArray()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->setCount(J)V

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;->setManualBreakCount(J)V

    return-void
.end method

.method private setColWidthAttribute(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V
    .locals 6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultColumnWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    invoke-interface {v3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setColumn(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v8

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v10

    int-to-long v12, v1

    cmp-long v14, v8, v12

    if-ltz v14, :cond_0

    cmp-long v8, v10, v12

    if-gtz v8, :cond_0

    goto :goto_2

    :cond_0
    if-lez v14, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_3

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    return-void

    :cond_3
    const/4 v4, 0x1

    if-eqz p2, :cond_4

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v5, v8

    if-eqz v10, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz p3, :cond_5

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v6, v8, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz p4, :cond_6

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eq v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-eqz p5, :cond_7

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result v9

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v9, v10, :cond_7

    const/4 v3, 0x1

    :cond_7
    if-nez v6, :cond_9

    if-nez v8, :cond_9

    if-nez v3, :cond_9

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    return-void

    :cond_9
    :goto_6
    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v5

    invoke-interface {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v8

    int-to-long v10, v1

    cmp-long v3, v5, v10

    if-nez v3, :cond_a

    cmp-long v5, v8, v10

    if-nez v5, :cond_a

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1, v7}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-void

    :cond_a
    if-eqz v3, :cond_c

    cmp-long v5, v8, v10

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v3, v2, v7}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    iget-object v5, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v5, v2, v7}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    long-to-int v6, v8

    add-int/lit8 v8, v1, -0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    invoke-interface {v3, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {v3, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {p0, v7, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    iget-object v7, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v7, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    add-int/2addr v1, v4

    int-to-long v3, v1

    invoke-interface {v5, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    int-to-long v3, v6

    invoke-interface {v5, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v1, v2, v5}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    goto :goto_9

    :cond_c
    :goto_7
    if-nez v3, :cond_d

    add-int/2addr v1, v4

    int-to-long v3, v1

    invoke-interface {v7, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    goto :goto_8

    :cond_d
    sub-int/2addr v1, v4

    int-to-long v3, v1

    invoke-interface {v7, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    :goto_8
    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v1, v2, v7}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    invoke-interface {v1, v10, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    iget-object v3, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v3, v2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    :goto_9
    return-void
.end method

.method private setGroupHidden(IIZ)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    aget-object v1, v0, p1

    :cond_0
    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_3

    invoke-interface {v1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    add-int/lit8 p1, p1, 0x1

    array-length v2, v0

    if-ge p1, v2, :cond_0

    aget-object v2, v0, p1

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isAdjacentBefore(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v3

    if-ge v3, p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 7

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    if-ne v1, v0, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    if-lt v1, v0, :cond_1

    if-lt v2, v0, :cond_1

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid row range specification"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v4

    if-ne v3, v0, :cond_3

    if-ne v4, v0, :cond_4

    :cond_3
    if-lt v3, v0, :cond_4

    if-lt v4, v0, :cond_4

    if-gt v3, v4, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid column range specification"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v4, -0x1

    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v3

    const/4 v5, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p2

    const-string v6, "_xlnm.Print_Titles"

    invoke-virtual {p2, v6, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p2

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    :cond_7
    return-void

    :cond_8
    if-nez p2, :cond_9

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p2

    :cond_9
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, v4, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getReferenceBuiltInRecord(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageSetup()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;->setValidSettings(Z)V

    :goto_3
    return-void
.end method

.method private setSheetFormatPrOutlineLevelCol()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMaxOutlineLevelCols()S

    move-result v0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelCol(S)V

    return-void
.end method

.method private setSheetFormatPrOutlineLevelRow()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMaxOutlineLevelRows()S

    move-result v0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelRow(S)V

    return-void
.end method

.method private shiftedRowNum(IIII)I
    .locals 1

    if-ge p4, p1, :cond_1

    if-gtz p3, :cond_0

    sub-int v0, p1, p4

    if-le v0, p3, :cond_1

    :cond_0
    return p4

    :cond_1
    if-le p4, p2, :cond_3

    if-ltz p3, :cond_2

    sub-int v0, p4, p2

    if-le v0, p3, :cond_3

    :cond_2
    return p4

    :cond_3
    if-ge p4, p1, :cond_4

    sub-int/2addr p2, p1

    add-int/2addr p2, p4

    return p2

    :cond_4
    if-le p4, p2, :cond_5

    sub-int/2addr p2, p1

    sub-int/2addr p4, p2

    return p4

    :cond_5
    add-int/2addr p4, p3

    return p4
.end method

.method private static shouldRemoveRow(IIII)Z
    .locals 1

    add-int v0, p0, p2

    if-lt p3, v0, :cond_1

    add-int v0, p1, p2

    if-gt p3, v0, :cond_1

    const/4 v0, 0x1

    if-lez p2, :cond_0

    if-le p3, p1, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    if-ge p3, p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private unsetCollapsed(ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->unsetCollapsed()V

    :goto_0
    return-void
.end method

.method private validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 9

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    :goto_0
    if-gt v0, v2, :cond_5

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    move v5, v1

    :goto_1
    if-gt v5, v3, :cond_4

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The range "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " intersects with a multi-cell array formula. You cannot merge cells of an array."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot add merged region "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to sheet because it overlaps with an existing merged region ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private writeHidden(Lorg/apache/poi/xssf/usermodel/XSSFRow;IZ)I
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v2

    if-ge v2, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHidden(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method


# virtual methods
.method public addHyperlink(Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addIgnoredErrors(Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    return-void
.end method

.method public varargs addIgnoredErrors(Lorg/apache/poi/ss/util/CellReference;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addIgnoredErrors(Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V

    return-void
.end method

.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result p1

    return p1
.end method

.method public addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result p1

    return p1
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
    .locals 3

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->sizeOfDataValidationArray()I

    move-result v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->addNewDataValidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->getCtDdataValidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->setCount(J)V

    return-void
.end method

.method public autoSizeColumn(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->autoSizeColumn(IZ)V

    return-void
.end method

.method public autoSizeColumn(IZ)V
    .locals 4

    .line 2
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_1

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double v0, v0, v2

    const p2, 0xff00

    int-to-double v2, p2

    cmpl-double p2, v0, v2

    if-lez p2, :cond_0

    move-wide v0, v2

    :cond_0
    double-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnWidth(II)V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v0, p1

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColBestFit(JZ)V

    :cond_1
    return-void
.end method

.method public commit()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public copyRows(IIILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRows(IIZ)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->copyRows(Ljava/util/List;ILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    return-void
.end method

.method public copyRows(Ljava/util/List;ILorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;I",
            "Lorg/apache/poi/ss/usermodel/CellCopyPolicy;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Lorg/apache/poi/ss/usermodel/Row;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v4

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v2, v5, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/usermodel/Row;

    if-eqz v6, :cond_2

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v8

    if-ne v7, v8, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v8

    if-ne v7, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "All rows in srcRows must belong to the same sheet. Expected all rows from "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Got srcRows["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "All rows in srcRows must belong to the same sheet in the same workbook.Expected all rows from same workbook ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "). Got srcRows["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] from different workbook ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "srcRows may not contain null rows. Found null row at index "

    const-string p3, "."

    .line 4
    invoke-static {v2, p2, p3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v2, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;

    invoke-direct {v2, p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;-><init>(Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->setCopyMergedRegions(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/usermodel/Row;

    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCondenseRows()Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v6, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/2addr v6, p2

    move v9, v6

    move v6, v0

    move v0, v9

    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->copyRowFrom(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    move v0, v6

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result p1

    if-eqz p1, :cond_7

    sub-int/2addr p2, v4

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    if-gt v4, v0, :cond_6

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    if-gt v0, v3, :cond_6

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setFirstRow(I)V

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setLastRow(I)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "copyRows: First row cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No rows to copy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->getNextPartNumber(Lorg/apache/poi/POIXMLRelation;I)I

    move-result v0

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->setId(Ljava/lang/String;)V

    return-object v1
.end method

.method public createFreezePane(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    return-void
.end method

.method public createFreezePane(IIII)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->isSetPane()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->unsetPane()V

    :cond_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setSelectionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->isSetPane()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v2

    if-lez p1, :cond_3

    int-to-double v3, p1

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setXSplit(D)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetXSplit()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->unsetXSplit()V

    :cond_4
    :goto_0
    if-lez p2, :cond_5

    int-to-double v3, p2

    invoke-interface {v2, v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setYSplit(D)V

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetYSplit()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->unsetYSplit()V

    :cond_6
    :goto_1
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->FROZEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;)V

    const/4 v3, 0x0

    if-nez p2, :cond_7

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, v3, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->TOP_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    :goto_2
    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    goto :goto_3

    :cond_7
    if-nez p1, :cond_8

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, p4, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->BOTTOM_LEFT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    goto :goto_2

    :cond_8
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, p4, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane;->BOTTOM_RIGHT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    goto :goto_2

    :goto_3
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setSelectionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->addNewSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object p1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getActivePane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    return-void
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p1

    return-object p1
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The named range references another sheet than the defined source sheet "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$3;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/usermodel/Name;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p1

    return-object p1
.end method

.method public createPivotTable(Lorg/apache/poi/ss/usermodel/Table;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Table;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet$4;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$4;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/usermodel/Table;)V

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p1

    return-object p1
.end method

.method public createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p1

    return-object p1
.end method

.method public createPivotTable(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
    .locals 2

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The area is referenced in another sheet than the defined source sheet "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$2;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/util/AreaReference;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    return-object p1
.end method

.method public createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->insertNewRow(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->addNewRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    :goto_2
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-direct {v2, v1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setRowNum(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public createSplitPane(IIIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->SPLIT:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p1

    invoke-static {p5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setActivePane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;)V

    return-void
.end method

.method public createTable()Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetTableParts()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewTableParts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getTableParts()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableParts;->addNewTablePart()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v1, v4}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;->setId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->setId(J)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTablePart;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public disableLocking()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    return-void
.end method

.method public enableLocking()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    return-void
.end method

.method public findEndOfRowOutlineGroup(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public getActiveCell()Lorg/apache/poi/ss/util/CellAddress;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->getActiveCell()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getAutobreaks()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->getAutoPageBreaks()Z

    move-result v0

    return v0
.end method

.method public getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getCTLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    return-object v0
.end method

.method public bridge synthetic getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p1

    return-object p1
.end method

.method public getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    new-instance v2, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v2, v0, p1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;

    :goto_0
    invoke-direct {v4, v5, v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    return-object v4
.end method

.method public getCellComments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/xssf/usermodel/XSSFComment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CommentsTable;->getCellComments()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getColumnBreaks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0
.end method

.method public getColumnHelper()Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result p1

    return p1
.end method

.method public getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColDefaultStyle(J)I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p1

    return-object p1
.end method

.method public getColumnWidth(I)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultColumnWidth()I

    move-result p1

    int-to-double v0, p1

    :goto_1
    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public getColumnWidthInPixels(I)F
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result p1

    int-to-float p1, p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    div-double/2addr v0, v2

    const-wide v2, 0x401c01bda0000000L    # 7.001699924468994

    mul-double v0, v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public getCommentsTable(Z)Lorg/apache/poi/xssf/model/CommentsTable;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/model/CommentsTable;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;I)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/model/CommentsTable;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    return-object p1
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->dataValidationHelper:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;

    return-object v0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDataValidations()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidations;->getDataValidationArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    new-instance v7, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v7}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getSqref()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v9, v11

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/apache/poi/ss/util/CellReference;

    aget-object v14, v12, v4

    invoke-direct {v13, v14}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    array-length v14, v12

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    new-instance v14, Lorg/apache/poi/ss/util/CellReference;

    aget-object v12, v12, v15

    invoke-direct {v14, v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v14, v13

    :goto_2
    new-instance v12, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v13}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v15

    invoke-virtual {v14}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual {v13}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v13

    invoke-virtual {v14}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v14

    invoke-direct {v12, v15, v4, v13, v14}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {v7, v12}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    invoke-direct {v4, v7, v6}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;-><init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getDefaultColumnWidth()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->getBaseColWidth()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->getDefaultRowHeight()D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0
.end method

.method public getDisplayGuts()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getShowOutlineSymbols()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v3

    :cond_1
    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find drawing with id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in the list of the sheet\'s relationships"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x7

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvenFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvenFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getEvenHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvenHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getFirstCellInArrayFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFirstFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFirstFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getFirstHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFirstHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFirstHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFitToPage()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->getFitToPage()Z

    move-result v0

    return v0
.end method

.method public getFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetCalcPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;->getFullCalcOnLoad()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getHorizontalCentered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getHyperlink(II)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 3

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHyperlinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoredErrors()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/IgnoredErrorType;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetIgnoredErrors()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getIgnoredErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredErrors;->getIgnoredErrorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;

    invoke-static {v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->getErrorTypes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->getSqref()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getLastRowNum()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLeftCol()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTopLeftCell()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    return v0
.end method

.method public getMargin(S)D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 13
    .line 14
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz p1, :cond_6

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq p1, v1, :cond_5

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq p1, v1, :cond_4

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq p1, v1, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-eq p1, v1, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    if-ne p1, v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getFooter()D

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    return-wide v0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v1, "Unknown margin constant:  "

    .line 43
    .line 44
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getHeader()D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    return-wide v0

    .line 57
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getBottom()D

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    return-wide v0

    .line 62
    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getTop()D

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    return-wide v0

    .line 67
    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getRight()D

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    return-wide v0

    .line 72
    :cond_6
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->getLeft()D

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    return-wide v0
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

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This worksheet does not contain merged regions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMergedRegions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getNumHyperlinks()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumMergedRegions()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNumberOfComments()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CommentsTable;->getNumberOfComments()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFOddFooter;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFOddFooter;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getOddHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFOddHeader;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    return-object v0
.end method

.method public getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
    .locals 10

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->isSetTopLeftCell()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getTopLeftCell()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance v9, Lorg/apache/poi/ss/util/PaneInformation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getXSplit()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-short v3, v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getYSplit()D

    move-result-wide v4

    double-to-int v2, v4

    int-to-short v4, v2

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v5

    :goto_0
    int-to-short v5, v5

    if-nez v1, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    move v6, v1

    :goto_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getActivePane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPane$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    int-to-byte v1, v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    move-result-object v0

    sget-object v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState;->FROZEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPaneState$Enum;

    if-ne v0, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/ss/util/PaneInformation;-><init>(SSSSBZ)V

    return-object v9
.end method

.method public getPhysicalNumberOfRows()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getPivotTables()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    move-result-object v0

    return-object v0
.end method

.method public getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    return-object v0
.end method

.method public getProtect()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    return v0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p1

    return-object p1
.end method

.method public getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    return-object p1
.end method

.method public getRowBreaks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_0
    return-object v0
.end method

.method public getRowSumsBelow()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getSummaryBelow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public getRowSumsRight()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetOutlinePr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->getSummaryRight()Z

    move-result v0

    return v0
.end method

.method public getScenarioProtect()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getScenarios()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    return-object p1
.end method

.method public bridge synthetic getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetTabColor()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getTabColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v1
.end method

.method public getTables()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFTable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTopRow()S
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTopLeftCell()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VML_DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .line 21
    .line 22
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p1, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    add-int/2addr p1, v1

    .line 35
    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v2, v1, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v3, v0

    .line 48
    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 59
    .line 60
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;->setId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;->getId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    .line 91
    .line 92
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    instance-of v6, v5, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    .line 97
    .line 98
    if-eqz v6, :cond_1

    .line 99
    .line 100
    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    .line 101
    .line 102
    invoke-virtual {v4}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    move-object v3, v5

    .line 117
    :cond_2
    if-nez v3, :cond_3

    .line 118
    .line 119
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    .line 120
    .line 121
    const-string v4, "Can\'t find VML drawing with id="

    .line 122
    .line 123
    const-string v5, " in the list of the sheet\'s relationships"

    .line 124
    .line 125
    invoke-static {v4, p1, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object p1, v1, v0

    .line 132
    .line 133
    const/4 p1, 0x7

    .line 134
    invoke-virtual {v2, p1, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_0
    return-object v3
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

.method public getVerticallyCenter()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getVerticalCentered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getParent()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-object v0
.end method

.method public groupColumn(II)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->groupColumn1Based(II)V

    return-void
.end method

.method public groupRow(II)V
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setOutlineLevel(S)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelRow()V

    return-void
.end method

.method public hasComments()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CommentsTable;->getNumberOfComments()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoFilterLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getAutoFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCellInArrayFormulaContext(Lorg/apache/poi/xssf/usermodel/XSSFCell;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isColumnBroken(I)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnBreaks()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isColumnHidden(I)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public isDeleteColumnsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getDeleteColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeleteRowsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getDeleteRows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayFormulas()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowGridLines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowRowColHeaders()Z

    move-result v0

    return v0
.end method

.method public isDisplayZeros()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getShowZeros()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFormatCellsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatCells()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFormatColumnsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFormatRowsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getFormatRows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsertColumnsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsertHyperlinksLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertHyperlinks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsertRowsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getInsertRows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isObjectsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getObjects()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPivotTablesLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getPivotTables()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrintGridlines()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getGridLines()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrintRowAndColumnHeadings()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->getHeadings()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getRightToLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRowBroken(I)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowBreaks()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isScenariosLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getScenarios()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectLockedCellsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSelectLockedCells()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelectUnlockedCellsLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSelectUnlockedCells()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->getTabSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSheetLocked()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSheetProtectionEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    return v0
.end method

.method public isSortLocked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->getSort()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lockAutoFilter(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setAutoFilter(Z)V

    return-void
.end method

.method public lockDeleteColumns(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteColumns(Z)V

    return-void
.end method

.method public lockDeleteRows(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteRows(Z)V

    return-void
.end method

.method public lockFormatCells(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatCells(Z)V

    return-void
.end method

.method public lockFormatColumns(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatColumns(Z)V

    return-void
.end method

.method public lockFormatRows(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatRows(Z)V

    return-void
.end method

.method public lockInsertColumns(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertColumns(Z)V

    return-void
.end method

.method public lockInsertHyperlinks(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertHyperlinks(Z)V

    return-void
.end method

.method public lockInsertRows(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertRows(Z)V

    return-void
.end method

.method public lockObjects(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setObjects(Z)V

    return-void
.end method

.method public lockPivotTables(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setPivotTables(Z)V

    return-void
.end method

.method public lockScenarios(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setScenarios(Z)V

    return-void
.end method

.method public lockSelectLockedCells(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectLockedCells(Z)V

    return-void
.end method

.method public lockSelectUnlockedCells(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectUnlockedCells(Z)V

    return-void
.end method

.method public lockSort(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSort(Z)V

    return-void
.end method

.method public onDocumentCreate()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->newSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    return-void
.end method

.method public onDocumentRead()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onReadCell(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->isSetRef()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v4

    if-gt p1, v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p1

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    if-le p1, v4, :cond_1

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v5

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v2

    invoke-direct {p1, v4, v5, v3, v2}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sharedFormulas:Ljava/util/Map;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object p1

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->ARRAY:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne p1, v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public onSheetDelete()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeTable(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setScenarios(Z)V

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setObjects(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetSheetProtection()V

    :goto_0
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorksheetDocument;->getWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initRows(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    new-instance p1, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-direct {p1, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v1

    instance-of v2, v1, Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/xssf/model/CommentsTable;

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of v0, v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->initHyperlinks()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readOleObject(J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "can\'t close reader"

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetOleObjects()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    const-string v4, "declare namespace p=\'http://schemas.openxmlformats.org/spreadsheetml/2006/main\' .//p:oleObject"

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v6

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getOleObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6, v4}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    move-object v4, v5

    :cond_1
    :goto_0
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v8, "shapeId"

    invoke-direct {v7, v5, v8}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/apache/xmlbeans/XmlCursor;->getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, p1

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v7

    instance-of v8, v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    if-eqz v8, :cond_3

    check-cast v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-object v4, v7

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_3
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    :try_start_1
    invoke-static {v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects$Factory;->parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->sizeOfOleObjectArray()I

    move-result v10
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v10, :cond_4

    :try_start_2
    invoke-interface {v7}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->close()V
    :try_end_2
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_3
    sget-object v9, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v3, v10, v2

    aput-object v7, v10, v0

    invoke-virtual {v9, v8, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-interface {v9, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObjects;->getOleObjectArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOleObject;

    move-result-object v4
    :try_end_4
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-interface {v7}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->close()V
    :try_end_5
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_6
    sget-object v9, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v3, v10, v2

    aput-object v7, v10, v0

    invoke-virtual {v9, v8, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v9

    :try_start_7
    sget-object v10, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v11, v1, [Ljava/lang/Object;

    const-string v12, "can\'t parse CTOleObjects"

    aput-object v12, v11, v2

    aput-object v9, v11, v0

    invoke-virtual {v10, v8, v11}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-interface {v7}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->close()V
    :try_end_8
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v7

    :try_start_9
    sget-object v9, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v3, v10, v2

    aput-object v7, v10, v0

    invoke-virtual {v9, v8, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_1
    const-string v7, "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

    const-string v8, "objectPr"

    invoke-interface {v6, v7, v8}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_4

    :goto_2
    :try_start_a
    invoke-interface {v7}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->close()V
    :try_end_a
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_4
    move-exception p2

    :try_start_b
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object p2, v1, v0

    invoke-virtual {v4, v8, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_3
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_5
    :goto_4
    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    move-object v5, v4

    :goto_5
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-object v5

    :goto_6
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    throw p1
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(Lorg/apache/poi/ss/usermodel/Cell;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 55
    .line 56
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object p1

    .line 63
    :cond_2
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v1, "Cell "

    .line 76
    .line 77
    const-string v2, " is not part of an array formula."

    .line 78
    .line 79
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string v0, "Specified cell does not belong to this sheet."

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
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

.method public removeColumnBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V

    :cond_0
    return-void
.end method

.method public removeHyperlink(II)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->removeMergeCell(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetMergeCells()V

    :goto_0
    return-void
.end method

.method public removeMergedRegions(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetMergeCells()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getMergeCells()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->sizeOfMergeCellArray()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->getMergeCellArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetMergeCells()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCells;->setMergeCellArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMergeCell;)V

    :goto_1
    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Row;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result p1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->removeRow(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComments()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/model/CommentsTable;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Specified row does not belong to this sheet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeRowBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V

    :cond_0
    return-void
.end method

.method public removeTable(Lorg/apache/poi/xssf/usermodel/XSSFTable;)V
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getId()J

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCTTable()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->getId()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;Z)Z

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->tables:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->onTableDelete()V

    :cond_2
    return-void
.end method

.method public rowIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setActiveCell(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;->setSqref(Ljava/util/List;)V

    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellRange;->getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->arrayFormulas:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge synthetic setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;

    move-result-object p1

    return-object p1
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;
    .locals 17

    .line 2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;

    move-result-object v1

    :cond_0
    new-instance v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;->setRef(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    const-string v3, "_xlnm._FilterDatabase"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setHidden(Z)V

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/4 v12, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object v1
.end method

.method public setAutobreaks(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->isSetPageSetUpPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->setAutoPageBreaks(Z)V

    return-void
.end method

.method public setColumnBreak(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnBroken(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetColBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V

    :cond_1
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->collapseColumn(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->expandColumn(I)V

    :goto_0
    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColHidden(JZ)V

    return-void
.end method

.method public setColumnWidth(II)V
    .locals 5

    const v0, 0xff00

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    int-to-double p1, p2

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    div-double/2addr p1, v3

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColWidth(JD)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setCustomWidth(JZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The maximum column width for an individual cell is 255 characters."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColDefaultStyle(JLorg/apache/poi/ss/usermodel/CellStyle;)V

    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setBaseColWidth(J)V

    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultRowHeightInPoints(F)V

    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    float-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setDefaultRowHeight(D)V

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setCustomHeight(Z)V

    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowFormulas(Z)V

    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowGridLines(Z)V

    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->addNewOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setShowOutlineSymbols(Z)V

    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowRowColHeaders(Z)V

    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setShowZeros(Z)V

    return-void
.end method

.method public setFitToPage(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypePageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->setFitToPage(Z)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetCalcPr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object v1

    :goto_0
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;->setFullCalcOnLoad(Z)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetCalcPr;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    move-result-object p1

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->MANUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    if-ne p1, v1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->AUTO:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;)V

    :cond_2
    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setHorizontalCentered(Z)V

    return-void
.end method

.method public setMargin(SD)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageMargins()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 10
    .line 11
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    .line 17
    .line 18
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    if-eqz p1, :cond_6

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq p1, v1, :cond_5

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq p1, v1, :cond_4

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-eq p1, v1, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    if-eq p1, v1, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    if-ne p1, v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setFooter(D)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p3, "Unknown margin constant:  "

    .line 46
    .line 47
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p2

    .line 55
    :cond_2
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setHeader(D)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setBottom(D)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setTop(D)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setRight(D)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    invoke-interface {v0, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->setLeft(D)V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void
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
.end method

.method public setPrintGridlines(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setGridLines(Z)V

    return-void
.end method

.method public setPrintRowAndColumnHeadings(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setHeadings(Z)V

    return-void
.end method

.method public setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setRightToLeft(Z)V

    return-void
.end method

.method public setRowBreak(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowBroken(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetRowBreaks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setBreak(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;I)V

    :cond_1
    return-void
.end method

.method public setRowGroupCollapsed(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->collapseRow(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->expandRow(I)V

    :goto_0
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setSummaryBelow(Z)V

    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ensureOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->setSummaryRight(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->getSheetViewArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setTabSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSheetPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    return-void
.end method

.method public setTabColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->setTabColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setVerticallyCenter(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPrintOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->setVerticalCentered(Z)V

    return-void
.end method

.method public setZoom(I)V
    .locals 3

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-gt p1, v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetTypeSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->setZoomScale(J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Valid scale values range from 10 to 400"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shiftRows(III)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftRows(IIIZZ)V

    return-void
.end method

.method public shiftRows(IIIZZ)V
    .locals 17

    .line 2
    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVMLDrawing(Z)Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v5

    invoke-static {v7, v8, v9, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shouldRemoveRow(IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v4

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v4, v6}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget-object v6, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetData()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetData;->removeRow(I)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-object v4, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v4

    array-length v6, v4

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_2

    aget-object v11, v4, v10

    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v12, v11}, Lorg/apache/poi/ss/util/CellAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v11

    if-ne v11, v5, :cond_1

    iget-object v11, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v11, v12}, Lorg/apache/poi/xssf/model/CommentsTable;->removeComment(Lorg/apache/poi/ss/util/CellAddress;)Z

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v11

    invoke-virtual {v12}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v12

    invoke-virtual {v2, v11, v12}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->removeCommentShape(II)Z

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    new-instance v10, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v6}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v10

    if-ne v10, v5, :cond_3

    iget-object v10, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/TreeMap;

    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;

    invoke-direct {v4, v0, v9}, Lorg/apache/poi/xssf/usermodel/XSSFSheet$1;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;I)V

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v6

    iget-object v10, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-eqz v10, :cond_7

    invoke-direct {v0, v7, v8, v9, v6}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->shiftedRowNum(IIII)I

    move-result v10

    if-eq v10, v6, :cond_7

    iget-object v11, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    invoke-virtual {v11}, Lorg/apache/poi/xssf/model/CommentsTable;->getCTComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;

    move-result-object v11

    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComments;->getCommentList()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;

    move-result-object v11

    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentList;->getCommentArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_7

    aget-object v14, v11, v13

    invoke-interface {v14}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->getRef()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v15}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v15

    if-ne v15, v6, :cond_6

    new-instance v15, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-object/from16 v16, v4

    iget-object v4, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheetComments:Lorg/apache/poi/xssf/model/CommentsTable;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {v2, v6, v1}, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;->findCommentShape(II)Lcom/microsoft/schemas/vml/CTShape;

    :goto_4
    const/4 v1, 0x0

    invoke-direct {v15, v4, v14, v1}, Lorg/apache/poi/xssf/usermodel/XSSFComment;-><init>(Lorg/apache/poi/xssf/model/CommentsTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;Lcom/microsoft/schemas/vml/CTShape;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v15, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move-object/from16 v16, v4

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v16

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v16, v4

    if-lt v6, v7, :cond_8

    if-le v6, v8, :cond_9

    :cond_8
    :goto_6
    move-object/from16 v4, v16

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    if-nez p4, :cond_a

    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    :cond_a
    invoke-virtual {v5, v9}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->shift(I)V

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFComment;->setRow(I)V

    goto :goto_7

    :cond_c
    new-instance v10, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;

    invoke-direct {v10, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v1

    invoke-virtual {v10, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-virtual {v10, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-virtual {v10, v7, v8, v9}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->shiftMergedRegions(III)Ljava/util/List;

    invoke-virtual {v10, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-virtual {v10, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public showInPane(II)V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;->setTopLeftCell(Ljava/lang/String;)V

    return-void
.end method

.method public ungroupColumn(II)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    :goto_0
    if-gt p1, p2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-short p1, p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->columnHelper:Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;

    invoke-virtual {v3, v0, v2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->removeCol(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1, v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelCol()V

    return-void
.end method

.method public ungroupRow(II)V
    .locals 4

    :goto_0
    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v2

    add-int/lit8 v3, v2, -0x1

    int-to-short v3, v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setOutlineLevel(S)V

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeRow(Lorg/apache/poi/ss/usermodel/Row;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSheetFormatPrOutlineLevelRow()V

    return-void
.end method

.method public validateMergedRegions()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->checkForMergedRegionsIntersectingArrayFormulas()V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->checkForIntersectingMergedRegions()V

    return-void
.end method

.method public validateSheetPassword(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSheetProtectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->sizeOfColsArray()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->sizeOfColArray()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColWidthAttribute(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->hyperlinks:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->generateRelationIfNeeded(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCTHyperlink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->setHyperlinkArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->sizeOfHyperlinkArray()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_5

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getHyperlinks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlinks;->removeHyperlink(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetHyperlinks()V

    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->_rows:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->onDocumentWrite()V

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getFirstCellNum()S

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_8
    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result v6

    if-eq v6, v7, :cond_7

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getLastCellNum()S

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_4

    :cond_9
    if-eq v4, v2, :cond_b

    new-instance v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstRowNum()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v5

    invoke-direct {v1, v2, v5, v4, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetDimension()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v2

    :goto_5
    invoke-interface {v2, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;->setRef(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewDimension()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetDimension;

    move-result-object v2

    goto :goto_5

    :cond_b
    :goto_6
    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "worksheet"

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2, p1, v1}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    if-eqz v0, :cond_c

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewCols()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    :cond_c
    return-void
.end method
