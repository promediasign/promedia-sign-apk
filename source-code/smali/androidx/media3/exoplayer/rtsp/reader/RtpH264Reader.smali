.class final Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# instance fields
.field private bufferFlags:I

.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private final fuScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCodeArray:Landroidx/media3/common/util/ParsableByteArray;

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->nalStartCodeArray:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    return-void
.end method

.method private static getBufferFlagsFromNalType(I)I
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processFragmentationUnitPacket(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v1, v1, 0xe0

    and-int/lit8 v5, v3, 0x1f

    or-int/2addr v1, v5

    and-int/lit16 v5, v3, 0x80

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v3, v3, 0x40

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v5, :cond_2

    iget p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->writeStartCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    int-to-byte v0, v1

    aput-byte v0, p2, v4

    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    :cond_2
    iget v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    invoke-static {v5}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v5

    if-eq p2, v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RtpH264Reader"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p2, v0, p1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    if-eqz v3, :cond_4

    and-int/lit8 p1, v1, 0x1f

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->getBufferFlagsFromNalType(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->bufferFlags:I

    :cond_4
    return-void
.end method

.method private processSingleNalUnitPacket(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->writeStartCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit8 p1, p1, 0x1f

    invoke-static {p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->getBufferFlagsFromNalType(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->bufferFlags:I

    return-void
.end method

.method private processSingleTimeAggregationPacket(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->writeStartCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->bufferFlags:I

    return-void
.end method

.method private writeStartCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->nalStartCodeArray:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->nalStartCodeArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->nalStartCodeArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v1, v2, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    return v0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    aget-byte v4, v4, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1f

    iget-object v5, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x18

    if-lez v4, :cond_0

    if-ge v4, v5, :cond_0

    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->processSingleNalUnitPacket(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_1

    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->processSingleTimeAggregationPacket(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_4

    move-object/from16 v5, p1

    invoke-direct {v1, v5, v0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->processFragmentationUnitPacket(Landroidx/media3/common/util/ParsableByteArray;I)V

    :goto_0
    if-eqz p5, :cond_3

    iget-wide v3, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    move-wide/from16 v3, p2

    if-nez v7, :cond_2

    iput-wide v3, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    :cond_2
    iget-wide v8, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->startTimeOffsetUs:J

    iget-wide v12, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const v14, 0x15f90

    move-wide/from16 v10, p2

    invoke-static/range {v8 .. v14}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    move-result-wide v16

    iget-object v15, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v3, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->bufferFlags:I

    iget v4, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-interface/range {v15 .. v21}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput v2, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    :cond_3
    iput v0, v1, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    return-void

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "RTP H264 packetization mode [%d] not supported."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v3, v0}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/TrackOutput;

    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;->startTimeOffsetUs:J

    return-void
.end method
