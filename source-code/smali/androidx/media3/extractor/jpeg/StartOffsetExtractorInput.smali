.class final Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;
.super Landroidx/media3/extractor/ForwardingExtractorInput;
.source "SourceFile"


# instance fields
.field private final startOffset:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorInput;J)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ForwardingExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 4

    invoke-super {p0}, Landroidx/media3/extractor/ForwardingExtractorInput;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    invoke-super {p0}, Landroidx/media3/extractor/ForwardingExtractorInput;->getPeekPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 4

    invoke-super {p0}, Landroidx/media3/extractor/ForwardingExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
