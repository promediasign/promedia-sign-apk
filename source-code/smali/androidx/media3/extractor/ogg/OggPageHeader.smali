.class final Landroidx/media3/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->laces:[I

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public populate(Landroidx/media3/extractor/ExtractorInput;Z)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/extractor/ogg/OggPageHeader;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p2}, Landroidx/media3/extractor/ExtractorUtil;->peekFullyQuietly(Landroidx/media3/extractor/ExtractorInput;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->revision:I

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const-string p1, "unsupported bit stream revision"

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->pageChecksum:J

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    add-int/lit8 v1, v0, 0x1b

    iput v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-static {p1, v0, v2, v1, p2}, Landroidx/media3/extractor/ExtractorUtil;->peekFullyQuietly(Landroidx/media3/extractor/ExtractorInput;[BIIZ)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v2, p1, :cond_4

    iget-object p1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->laces:[I

    iget-object p2, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    aput p2, p1, v2

    iget p1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object p2, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->laces:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v2
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->revision:I

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    iput-wide v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    iput-wide v1, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->pageChecksum:J

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    return-void
.end method

.method public skipToNextPage(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result p1

    return p1
.end method

.method public skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z
    .locals 8

    .line 2
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    const-wide/16 v6, 0x4

    add-long/2addr v2, v6

    cmp-long v6, v2, p2

    if-gez v6, :cond_3

    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {p1, v2, v4, v1, v5}, Landroidx/media3/extractor/ExtractorUtil;->peekFullyQuietly(Landroidx/media3/extractor/ExtractorInput;[BIIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggPageHeader;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return v5

    :cond_2
    invoke-interface {p1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-gez v3, :cond_5

    :cond_4
    invoke-interface {p1, v5}, Landroidx/media3/extractor/ExtractorInput;->skip(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    goto :goto_2

    :cond_5
    return v4
.end method
