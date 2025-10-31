.class public final Landroidx/media3/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;,
        Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;


# instance fields
.field private dataEndPosition:J

.field private dataStartPosition:I

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

.field private rf64SampleDataSize:J

.field private state:I

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA0/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LA0/a;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/wav/WavExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    return-void
.end method

.method public static synthetic a()[Landroidx/media3/extractor/Extractor;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/extractor/wav/WavExtractor;->lambda$static$0()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method private assertInitialized()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    new-instance v0, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {v0}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private readFileType(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 6

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    return-void

    :cond_1
    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->checkFileType(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v4, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    return-void

    :cond_2
    const-string p1, "Unsupported or unrecognized wav file type."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readFormat(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 6

    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->readFormat(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/wav/WavFormat;

    move-result-object v3

    iget p1, v3, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-direct {p1, v0, v1, v3}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    new-instance p1, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v4, "audio/g711-alaw"

    const/4 v5, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    new-instance p1, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v4, "audio/g711-mlaw"

    const/4 v5, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget v0, v3, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    invoke-static {p1, v0}, Landroidx/media3/extractor/WavUtil;->getPcmEncodingForType(II)I

    move-result v5

    if-eqz v5, :cond_3

    new-instance p1, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v4, "audio/raw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported WAV format type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v3, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readRf64SampleDataSize(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 2

    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->readRf64SampleDataSize(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    return-void
.end method

.method private readSampleData(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 6

    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-interface {v2, p1, v0, v1}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->sampleData(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, -0x1

    :cond_1
    return v4
.end method

.method private skipToSampleData(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 9

    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->skipToSampleData(Landroidx/media3/extractor/ExtractorInput;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    move-wide v0, v2

    :cond_0
    iget v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    iget-wide v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Data exceeds input length: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WavExtractor"

    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    iget v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v1, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    return-void
.end method


# virtual methods
.method public final synthetic getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;
    .locals 1

    .line 1
    invoke-static {p0}, LI/b;->a(Landroidx/media3/extractor/Extractor;)Landroidx/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 2

    invoke-direct {p0}, Landroidx/media3/extractor/wav/WavExtractor;->assertInitialized()V

    iget p2, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->readSampleData(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->skipToSampleData(Landroidx/media3/extractor/ExtractorInput;)V

    return v0

    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->readFormat(Landroidx/media3/extractor/ExtractorInput;)V

    return v0

    :cond_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->readRf64SampleDataSize(Landroidx/media3/extractor/ExtractorInput;)V

    return v0

    :cond_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/wav/WavExtractor;->readFileType(Landroidx/media3/extractor/ExtractorInput;)V

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    iget-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    if-eqz p1, :cond_1

    invoke-interface {p1, p3, p4}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    :cond_1
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    invoke-static {p1}, Landroidx/media3/extractor/wav/WavHeaderReader;->checkFileType(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
