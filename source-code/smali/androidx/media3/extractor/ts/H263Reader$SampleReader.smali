.class final Landroidx/media3/extractor/ts/H263Reader$SampleReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/H263Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation


# instance fields
.field private lookingForVopCodingType:Z

.field private final output:Landroidx/media3/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startCodeValue:I

.field private vopBytesRead:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public onData([BII)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    goto :goto_1

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr p3, v1

    iput p3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    :cond_2
    :goto_1
    return-void
.end method

.method public onDataEnd(JIZ)V
    .locals 9

    iget-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    sub-long v0, p1, v0

    long-to-int v6, v0

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    iget-object v2, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const/4 v8, 0x0

    move v7, p3

    invoke-interface/range {v2 .. v8}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_1
    iget p3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_2

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    :cond_2
    return-void
.end method

.method public onStartCode(IJ)V
    .locals 4

    iput p1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, 0x1

    const/16 v2, 0xb6

    if-eq p1, v2, :cond_1

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    return-void
.end method
