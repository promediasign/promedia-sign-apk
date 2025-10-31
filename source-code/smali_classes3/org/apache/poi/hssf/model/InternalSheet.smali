.class public final Lorg/apache/poi/hssf/model/InternalSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;,
        Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final BottomMargin:S = 0x3s

.field public static final LeftMargin:S = 0x0s

.field public static final PANE_LOWER_LEFT:B = 0x2t

.field public static final PANE_LOWER_RIGHT:B = 0x0t

.field public static final PANE_UPPER_LEFT:B = 0x3t

.field public static final PANE_UPPER_RIGHT:B = 0x1t

.field public static final RightMargin:S = 0x1s

.field public static final TopMargin:S = 0x2s

.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field _columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

.field private _dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

.field private _dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

.field private _gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

.field protected _isUncalced:Z

.field private final _mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

.field private final _protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

.field private _psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

.field private _records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final _rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

.field protected _selection:Lorg/apache/poi/hssf/record/SelectionRecord;

.field private condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

.field protected defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

.field protected defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

.field protected gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

.field protected printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

.field protected printHeaders:Lorg/apache/poi/hssf/record/PrintHeadersRecord;

.field private rowRecIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/RowRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printHeaders:Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    new-instance v1, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    new-instance v1, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "Sheet createsheet from scratch called"

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createBOF()Lorg/apache/poi/hssf/record/BOFRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createCalcMode()Lorg/apache/poi/hssf/record/CalcModeRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createCalcCount()Lorg/apache/poi/hssf/record/CalcCountRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createRefMode()Lorg/apache/poi/hssf/record/RefModeRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createIteration()Lorg/apache/poi/hssf/record/IterationRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createDelta()Lorg/apache/poi/hssf/record/DeltaRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createSaveRecalc()Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printHeaders:Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createGridset()Lorg/apache/poi/hssf/record/GridsetRecord;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createGuts()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createDefaultRowHeight()Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createWSBool()Lorg/apache/poi/hssf/record/WSBoolRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>()V

    iput-object v4, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createDefaultColWidth()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createDimensions()Lorg/apache/poi/hssf/record/DimensionsRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createSelection()Lorg/apache/poi/hssf/record/SelectionRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v1, v5}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Sheet createsheet from scratch exit"

    aput-object v3, v2, v0

    invoke-virtual {v1, v5, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 11

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printHeaders:Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    new-instance v2, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    new-instance v2, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    new-instance v3, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v5

    const/16 v6, 0x809

    if-ne v5, v6, :cond_25

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v7

    const/16 v8, 0x40

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/hssf/record/EOFRecord;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v7

    const/16 v8, 0x23e

    if-eqz v7, :cond_1e

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v7

    const/16 v9, 0x1b0

    if-eq v7, v9, :cond_1d

    const/16 v9, 0x879

    if-ne v7, v9, :cond_4

    goto/16 :goto_6

    :cond_4
    const/16 v9, 0x7d

    if-ne v7, v9, :cond_5

    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    :goto_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/16 v9, 0x1b2

    if-ne v7, v9, :cond_6

    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    invoke-direct {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    goto :goto_3

    :cond_6
    invoke-static {v7}, Lorg/apache/poi/hssf/model/RecordOrderer;->isRowBlockRecord(I)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v1, :cond_7

    new-instance v1, Lorg/apache/poi/hssf/model/RowBlocksReader;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/model/RowBlocksReader;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/RowBlocksReader;->getLooseMergedCells()[Lorg/apache/poi/hssf/record/MergeCellsRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->addRecords([Lorg/apache/poi/hssf/record/MergeCellsRecord;)V

    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/RowBlocksReader;->getPlainRecordStream()Lorg/apache/poi/hssf/model/RecordStream;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/RowBlocksReader;->getSharedFormulaManager()Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;

    move-result-object v1

    invoke-direct {v7, v8, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    goto :goto_2

    :cond_7
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "row/cell records found in the wrong place"

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {v7}, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->isBeginRecord(I)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    invoke-direct {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    goto :goto_3

    :cond_9
    invoke-static {v7}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isComponentRecord(I)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-nez v7, :cond_a

    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->addLateRecords(Lorg/apache/poi/hssf/model/RecordStream;)V

    :goto_4
    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-virtual {v7, v3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->positionRecords(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_b
    invoke-static {v7}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isComponentRecord(I)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-virtual {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->addRecords(Lorg/apache/poi/hssf/model/RecordStream;)V

    goto/16 :goto_2

    :cond_c
    const/16 v9, 0xe5

    if-ne v7, v9, :cond_d

    iget-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-virtual {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->read(Lorg/apache/poi/hssf/model/RecordStream;)V

    goto/16 :goto_2

    :cond_d
    if-ne v7, v6, :cond_e

    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;

    invoke-direct {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/ChartSubstreamRecordAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-static {v7, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->spillAggregate(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v9

    const/16 v10, 0x20b

    if-ne v7, v10, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v10, 0x5e

    if-ne v7, v10, :cond_10

    iput-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    goto/16 :goto_2

    :cond_10
    const/16 v10, 0x868

    if-eq v7, v10, :cond_1c

    const/16 v10, 0x867

    if-ne v7, v10, :cond_11

    goto/16 :goto_5

    :cond_11
    const/16 v10, 0xa

    if-ne v7, v10, :cond_12

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_12
    const/16 v10, 0x200

    if-ne v7, v10, :cond_14

    iget-object v5, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    if-nez v5, :cond_13

    new-instance v5, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;-><init>()V

    iput-object v5, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object v5, v9

    check-cast v5, Lorg/apache/poi/hssf/record/DimensionsRecord;

    iput-object v5, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_5

    :cond_14
    const/16 v10, 0x55

    if-ne v7, v10, :cond_15

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    goto :goto_5

    :cond_15
    const/16 v10, 0x225

    if-ne v7, v10, :cond_16

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    goto :goto_5

    :cond_16
    const/16 v10, 0x2b

    if-ne v7, v10, :cond_17

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    goto :goto_5

    :cond_17
    const/16 v10, 0x2a

    if-ne v7, v10, :cond_18

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printHeaders:Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    goto :goto_5

    :cond_18
    const/16 v10, 0x82

    if-ne v7, v10, :cond_19

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/GridsetRecord;

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    goto :goto_5

    :cond_19
    const/16 v10, 0x1d

    if-ne v7, v10, :cond_1a

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/SelectionRecord;

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    goto :goto_5

    :cond_1a
    if-ne v7, v8, :cond_1b

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    goto :goto_5

    :cond_1b
    if-ne v7, v4, :cond_1c

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/hssf/record/GutsRecord;

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    :cond_1c
    :goto_5
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1d
    :goto_6
    new-instance v7, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-direct {v7, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    iput-object v7, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    goto/16 :goto_3

    :cond_1e
    :goto_7
    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-eqz p1, :cond_24

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    if-nez p1, :cond_21

    if-nez v1, :cond_1f

    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>()V

    goto :goto_8

    :cond_1f
    sget-object p1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result p1

    if-eqz p1, :cond_20

    sget-object p1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "DIMENSION record not found even though row/cells present"

    aput-object v6, v5, v2

    invoke-virtual {p1, v4, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_20
    :goto_8
    invoke-virtual {p0, v8}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v5

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createDimensions()Lorg/apache/poi/hssf/record/DimensionsRecord;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {v3, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_21
    if-nez v1, :cond_22

    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;-><init>()V

    add-int/2addr v5, v0

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_22
    iput-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    invoke-static {v3, p1}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    invoke-static {v3, p1}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    sget-object p1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result p1

    if-eqz p1, :cond_23

    sget-object p1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "sheet createSheet (existing file) exited"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_23
    return-void

    :cond_24
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "WINDOW2 was not found"

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "BOF record expected"

    invoke-direct {p1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createBOF()Lorg/apache/poi/hssf/record/BOFRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>()V

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setVersion(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setType(I)V

    const/16 v1, 0xdbb

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuild(I)V

    const/16 v1, 0x7cc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setBuildYear(I)V

    const/16 v1, 0xc1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setHistoryBitMask(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;->setRequiredVersion(I)V

    return-object v0
.end method

.method private static createCalcCount()Lorg/apache/poi/hssf/record/CalcCountRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/CalcCountRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CalcCountRecord;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CalcCountRecord;->setIterations(S)V

    return-object v0
.end method

.method private static createCalcMode()Lorg/apache/poi/hssf/record/CalcModeRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/CalcModeRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CalcModeRecord;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CalcModeRecord;->setCalcMode(S)V

    return-object v0
.end method

.method private static createDefaultColWidth()Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->setColWidth(I)V

    return-object v0
.end method

.method private static createDefaultRowHeight()Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->setOptionFlags(S)V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->setRowHeight(S)V

    return-object v0
.end method

.method private static createDelta()Lorg/apache/poi/hssf/record/DeltaRecord;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/DeltaRecord;

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/DeltaRecord;-><init>(D)V

    return-object v0
.end method

.method private static createDimensions()Lorg/apache/poi/hssf/record/DimensionsRecord;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstCol(S)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastRow(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstRow(I)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastCol(S)V

    return-object v0
.end method

.method private static createGridset()Lorg/apache/poi/hssf/record/GridsetRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/GridsetRecord;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GridsetRecord;->setGridset(Z)V

    return-object v0
.end method

.method private static createGuts()Lorg/apache/poi/hssf/record/GutsRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setLeftRowGutter(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setTopColGutter(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setRowLevelMax(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setColLevelMax(S)V

    return-object v0
.end method

.method private static createIteration()Lorg/apache/poi/hssf/record/IterationRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/IterationRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/IterationRecord;-><init>(Z)V

    return-object v0
.end method

.method private static createPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->setPrintGridlines(Z)V

    return-object v0
.end method

.method private static createPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->setPrintHeaders(Z)V

    return-object v0
.end method

.method private static createRefMode()Lorg/apache/poi/hssf/record/RefModeRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/RefModeRecord;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RefModeRecord;->setMode(S)V

    return-object v0
.end method

.method private static createSaveRecalc()Lorg/apache/poi/hssf/record/SaveRecalcRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->setRecalc(Z)V

    return-object v0
.end method

.method private static createSelection()Lorg/apache/poi/hssf/record/SelectionRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/SelectionRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/hssf/record/SelectionRecord;-><init>(II)V

    return-object v0
.end method

.method public static createSheet()Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-direct {v0}, Lorg/apache/poi/hssf/model/InternalSheet;-><init>()V

    return-object v0
.end method

.method public static createSheet(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/model/InternalSheet;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    return-object v0
.end method

.method private static createWSBool()Lorg/apache/poi/hssf/record/WSBoolRecord;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setWSBool1(B)V

    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setWSBool2(B)V

    return-object v0
.end method

.method private static createWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;-><init>()V

    const/16 v1, 0x6b6

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setOptions(S)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setTopRow(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setLeftCol(S)V

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setHeaderColor(I)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setPageBreakZoom(S)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setNormalZoom(S)V

    return-object v0
.end method

.method private getGutsRecord()Lorg/apache/poi/hssf/record/GutsRecord;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createGuts()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_gutsRecord:Lorg/apache/poi/hssf/record/GutsRecord;

    return-object v0
.end method

.method private getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_mergedCellsTable:Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    return-object v0
.end method

.method private getSizeOfInitialSheetRecords(I)I
    .locals 3

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/apache/poi/hssf/record/UncalcedRecord;->getStaticRecordSize()I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method private recalcRowGutter()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getGutsRecord()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/GutsRecord;->setRowLevelMax(S)V

    mul-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1d

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/GutsRecord;->setLeftRowGutter(S)V

    return-void
.end method

.method private setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static spillAggregate(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/hssf/model/InternalSheet$1;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    return-void
.end method


# virtual methods
.method public addMergedRegion(IIII)I
    .locals 2

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    if-lt p3, p1, :cond_1

    .line 4
    .line 5
    if-lt p4, p2, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->addArea(IIII)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->getNumberOfMergedRegions()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    add-int/lit8 p1, p1, -0x1

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p3, "The \'to\' col ("

    .line 24
    .line 25
    const-string v1, ") must not be less than the \'from\' col ("

    .line 26
    .line 27
    invoke-static {p3, p4, v1, p2, v0}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p4, "The \'to\' row ("

    .line 38
    .line 39
    const-string v1, ") must not be less than the \'from\' row ("

    .line 40
    .line 41
    invoke-static {p4, p3, v1, p1, v0}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2
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
.end method

.method public addRow(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "addRow "

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastRow()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastRow(I)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstRow()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstRow(I)V

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    sget-object p1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "exit addRow"

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    .line 11
    .line 12
    const-string v2, "add value record  row"

    .line 13
    .line 14
    invoke-static {p1, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object p1, v2, v3

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    .line 27
    .line 28
    invoke-interface {p2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastCol()S

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-lt v0, v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    int-to-short v0, v0

    .line 44
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastCol(S)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstCol()S

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ge v0, v1, :cond_2

    .line 56
    .line 57
    invoke-interface {p2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstCol(S)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 67
    .line 68
    .line 69
    return-void
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

.method public aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I
    .locals 1

    const/16 p1, 0xec

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_0

    return v0

    :cond_0
    new-instance p1, Lorg/apache/poi/hssf/record/EscherAggregate;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/apache/poi/hssf/record/EscherAggregate;-><init>(Z)V

    const/16 p2, 0x2694

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result p2

    if-ne p2, v0, :cond_1

    const/16 p2, 0x23e

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return p2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->createAggregate(Ljava/util/List;I)Lorg/apache/poi/hssf/record/EscherAggregate;

    return p1
.end method

.method public cloneSheet()Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v4, v3, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    new-instance v4, Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;

    invoke-direct {v4, v0}, Lorg/apache/poi/hssf/model/InternalSheet$RecordCloner;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lorg/apache/poi/hssf/record/EscherAggregate;

    if-eqz v4, :cond_1

    new-instance v3, Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/DrawingRecord;-><init>()V

    :cond_1
    :try_start_0
    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {v1, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v2, Lorg/apache/poi/hssf/model/RecordStream;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    invoke-static {v2}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    return-object v0
.end method

.method public createFreezePane(IIII)V
    .locals 5

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    const/16 v0, 0x1d

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanes(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanesNoSplit(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/SelectionRecord;

    const/4 p2, 0x3

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/SelectionRecord;->setPane(B)V

    return-void

    :cond_1
    const/16 v2, 0x23e

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v2

    new-instance v3, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>()V

    int-to-short v4, p1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setX(S)V

    int-to-short v4, p2

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/PaneRecord;->setY(S)V

    int-to-short p3, p3

    invoke-virtual {v3, p3}, Lorg/apache/poi/hssf/record/PaneRecord;->setTopRow(S)V

    int-to-short p3, p4

    invoke-virtual {v3, p3}, Lorg/apache/poi/hssf/record/PaneRecord;->setLeftColumn(S)V

    const/4 p3, 0x1

    if-nez p2, :cond_2

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/record/PaneRecord;->setTopRow(S)V

    invoke-virtual {v3, p3}, Lorg/apache/poi/hssf/record/PaneRecord;->setActivePane(S)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/record/PaneRecord;->setLeftColumn(S)V

    const/4 p1, 0x2

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/PaneRecord;->setActivePane(S)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/record/PaneRecord;->setActivePane(S)V

    :goto_1
    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    add-int/2addr v2, p3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {p1, p3}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanes(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {p1, p3}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanesNoSplit(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/PaneRecord;->getActivePane()S

    move-result p2

    int-to-byte p2, p2

    goto :goto_0
.end method

.method public createSplitPane(IIIII)V
    .locals 2

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    const/16 v0, 0x23e

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    new-instance v1, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>()V

    int-to-short p1, p1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/PaneRecord;->setX(S)V

    int-to-short p1, p2

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/PaneRecord;->setY(S)V

    int-to-short p1, p3

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/PaneRecord;->setTopRow(S)V

    int-to-short p1, p4

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/PaneRecord;->setLeftColumn(S)V

    int-to-short p1, p5

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/PaneRecord;->setActivePane(S)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanes(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setFreezePanesNoSplit(Z)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/SelectionRecord;->setPane(B)V

    return-void
.end method

.method public findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/Record;

    return-object p1
.end method

.method public findFirstRecordLocBySid(S)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/apache/poi/hssf/record/Record;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getActiveCellCol()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getActiveCellRow()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellRow()I

    move-result v0

    return v0
.end method

.method public getCellValueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/CellValueRecordInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getCellValueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getOutlineLevel(I)I

    move-result p1

    return p1
.end method

.method public getColumnWidth(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result p1

    mul-int/lit16 p1, p1, 0x100

    return p1
.end method

.method public getConditionalFormattingTable()Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    return-object v0
.end method

.method public getDefaultColumnWidth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result v0

    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->getRowHeight()S

    move-result v0

    return v0
.end method

.method public getGridsetRecord()Lorg/apache/poi/hssf/record/GridsetRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    return-object v0
.end method

.method public getLeftCol()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getLeftCol()S

    move-result v0

    :goto_0
    return v0
.end method

.method public getMergedRegionAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->getNumberOfMergedRegions()I

    move-result v1

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->get(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    return-object p1
.end method

.method public getNextRow()Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->rowRecIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RowRecord;

    return-object v0
.end method

.method public getNoteRecords()[Lorg/apache/poi/hssf/record/NoteRecord;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v4, v3, Lorg/apache/poi/hssf/record/NoteRecord;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_2

    sget-object v0, Lorg/apache/poi/hssf/record/NoteRecord;->EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getNumMergedRegions()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->getNumberOfMergedRegions()I

    move-result v0

    return v0
.end method

.method public getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dataValidityTable:Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    return-object v0
.end method

.method public getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_psBlock:Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    return-object v0
.end method

.method public getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
    .locals 9

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PaneRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v8, Lorg/apache/poi/ss/util/PaneInformation;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PaneRecord;->getX()S

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PaneRecord;->getY()S

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PaneRecord;->getTopRow()S

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PaneRecord;->getLeftColumn()S

    move-result v5

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PaneRecord;->getActivePane()S

    move-result v0

    int-to-byte v6, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getFreezePanes()Z

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/util/PaneInformation;-><init>(SSSSBZ)V

    return-object v8
.end method

.method public getPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    return-object v0
.end method

.method public getPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printHeaders:Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    return-object v0
.end method

.method public getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_protectionBlock:Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p1

    return-object p1
.end method

.method public getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    return-object v0
.end method

.method public getSelection()Lorg/apache/poi/hssf/record/SelectionRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    return-object v0
.end method

.method public getTopRow()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getTopRow()S

    move-result v0

    :goto_0
    return v0
.end method

.method public getUncalced()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    return v0
.end method

.method public getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    return-object v0
.end method

.method public getXFIndexForColAt(S)S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result p1

    int-to-short p1, p1

    return p1

    :cond_0
    const/16 p1, 0xf

    return p1
.end method

.method public groupColumnRange(IIZ)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->groupColumnRange(IIZ)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->getMaxOutlineLevel()I

    move-result p1

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getGutsRecord()Lorg/apache/poi/hssf/record/GutsRecord;

    move-result-object p2

    add-int/lit8 p3, p1, 0x1

    int-to-short p3, p3

    invoke-virtual {p2, p3}, Lorg/apache/poi/hssf/record/GutsRecord;->setColLevelMax(S)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lorg/apache/poi/hssf/record/GutsRecord;->setTopColGutter(S)V

    goto :goto_1

    :cond_0
    const/16 p3, 0xc

    const/4 v0, 0x1

    const/16 v1, 0x1d

    invoke-static {p1, v0, p3, v1}, Lch/qos/logback/core/joran/util/a;->b(IIII)I

    move-result p1

    int-to-short p1, p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public groupRowRange(IIZ)V
    .locals 3

    :goto_0
    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createRow(I)Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v1

    if-eqz p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setOutlineLevel(S)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->recalcRowGutter()V

    return-void
.end method

.method public isColumnHidden(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->findColumnInfo(I)Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result p1

    return p1
.end method

.method public isDisplayFormulas()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayGridlines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public isGridsPrinted()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createGridset()Lorg/apache/poi/hssf/record/GridsetRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/GridsetRecord;->getGridset()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPrintRowColHeadings()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public preSerialize()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/EscherAggregate;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRecords()Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->getNumberOfMergedRegions()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;->remove(I)V

    return-void
.end method

.method public removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    return-void
.end method

.method public removeValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    .line 2
    .line 3
    const-string v1, "remove value record row "

    .line 4
    .line 5
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p1, v2, v3

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 21
    .line 22
    .line 23
    return-void
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

.method public replaceValueRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 5

    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "replaceValueRecord "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->removeCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->insertCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    return-void
.end method

.method public setActiveCellCol(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SelectionRecord;->setActiveCellCol(S)V

    :cond_0
    return-void
.end method

.method public setActiveCellRow(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SelectionRecord;->setActiveCellRow(I)V

    :cond_0
    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->collapseColumn(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_columnInfos:Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;->expandColumn(I)V

    :goto_0
    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setColumnWidth(II)V
    .locals 8

    const v0, 0xff00

    if-gt p2, v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The maximum column width for an individual cell is 255 characters."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultColumnStyle(II)V
    .locals 7

    int-to-short p2, p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumn(ILjava/lang/Short;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultcolwidth:Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->setColWidth(I)V

    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->setRowHeight(S)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->defaultrowheight:Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/DefaultRowHeightRecord;->setOptionFlags(S)V

    return-void
.end method

.method public setDimensions(ISIS)V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Sheet.setDimensions"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    sget-object v1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "firstrow"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "firstcol"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "lastrow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "lastcol"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstCol(S)V

    iget-object p2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setFirstRow(I)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {p1, p4}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastCol(S)V

    iget-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_dimensions:Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-virtual {p1, p3}, Lorg/apache/poi/hssf/record/DimensionsRecord;->setLastRow(I)V

    sget-object p1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/poi/hssf/model/InternalSheet;->log:Lorg/apache/poi/util/POILogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Sheet.setDimensions exiting"

    aput-object p3, p2, v0

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayFormulas(Z)V

    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayGridlines(Z)V

    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayRowColHeadings(Z)V

    return-void
.end method

.method public setGridsPrinted(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->gridset:Lorg/apache/poi/hssf/record/GridsetRecord;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/GridsetRecord;->setGridset(Z)V

    return-void
.end method

.method public setLeftCol(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setLeftCol(S)V

    :cond_0
    return-void
.end method

.method public setPrintGridlines(Lorg/apache/poi/hssf/record/PrintGridlinesRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printGridlines:Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    return-void
.end method

.method public setPrintHeaders(Lorg/apache/poi/hssf/record/PrintHeadersRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->printHeaders:Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    return-void
.end method

.method public setPrintRowColHeadings(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayRowColHeadings(Z)V

    return-void
.end method

.method public setSCLRecord(Lorg/apache/poi/hssf/record/SCLRecord;)V
    .locals 2

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x23e

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setSelected(Z)V

    return-void
.end method

.method public setSelection(Lorg/apache/poi/hssf/record/SelectionRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_selection:Lorg/apache/poi/hssf/record/SelectionRecord;

    return-void
.end method

.method public setTopRow(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->windowTwo:Lorg/apache/poi/hssf/record/WindowTwoRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setTopRow(S)V

    :cond_0
    return-void
.end method

.method public setUncalced(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    return-void
.end method

.method public updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->updateFormulasAfterRowShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/model/InternalSheet;->condFormatting:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/InternalSheet;->getConditionalFormattingTable()Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    :cond_0
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;-><init>(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_records:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    goto :goto_1

    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    :goto_1
    instance-of v1, v1, Lorg/apache/poi/hssf/record/BOFRecord;

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_isUncalced:Z

    if-eqz p2, :cond_1

    new-instance p2, Lorg/apache/poi/hssf/record/UncalcedRecord;

    invoke-direct {p2}, Lorg/apache/poi/hssf/record/UncalcedRecord;-><init>()V

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getSizeOfInitialSheetRecords(I)I

    move-result p2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->getPosition()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/model/InternalSheet;->_rowsAggregate:Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    invoke-virtual {v2, v1, p2}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createIndexRecord(II)Lorg/apache/poi/hssf/record/IndexRecord;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$PositionTrackingVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    :cond_2
    const/4 p2, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
