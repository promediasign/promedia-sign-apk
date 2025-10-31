.class final Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# instance fields
.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private fragmentedSampleTimeUs:J

.field private gotFirstPacketOfVp8Frame:Z

.field private isKeyFrame:Z

.field private isOutputFormatSet:Z

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->previousSequenceNumber:I

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleTimeUs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->startTimeOffsetUs:J

    return-void
.end method

.method private outputSampleMetadataForFragmentedPackets()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleTimeUs:J

    iget-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->isKeyFrame:Z

    iget v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleTimeUs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    return-void
.end method

.method private validateVp8Descriptor(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x10

    and-int/lit8 v3, v1, 0x10

    const/4 v4, 0x1

    if-ne v3, v2, :cond_1

    and-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_1

    iget-boolean p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    if-eqz p2, :cond_0

    iget p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    if-lez p2, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->outputSampleMetadataForFragmentedPackets()V

    :cond_0
    iput-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    const-string v5, "RtpVP8Reader"

    if-eqz v3, :cond_7

    iget v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->previousSequenceNumber:I

    invoke-static {v3}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v3

    if-ge p2, v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v4

    const-string p1, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    invoke-static {p1, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v5, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_1
    and-int/lit16 p2, v1, 0x80

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_3
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_4
    and-int/lit8 v0, p2, 0x20

    if-nez v0, :cond_5

    and-int/2addr p2, v2

    if-eqz p2, :cond_6

    :cond_5
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_6
    return v4

    :cond_7
    const-string p1, "RTP packet is not the start of a new VP8 partition, skipping."

    goto :goto_0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p4}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->validateVp8Descriptor(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->isKeyFrame:Z

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->isOutputFormatSet:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v3

    and-int/lit16 v3, v3, 0x3fff

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v4

    and-int/lit16 v4, v4, 0x3fff

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v0, v0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget v5, v0, Landroidx/media3/common/Format;->width:I

    if-ne v3, v5, :cond_2

    iget v5, v0, Landroidx/media3/common/Format;->height:I

    if-eq v4, v5, :cond_3

    :cond_2
    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    invoke-interface {v5, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    :cond_3
    iput-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->isOutputFormatSet:Z

    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    if-ne p1, v1, :cond_5

    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    goto :goto_1

    :cond_5
    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    :goto_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->startTimeOffsetUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    const v6, 0x15f90

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleTimeUs:J

    if-eqz p5, :cond_6

    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->outputSampleMetadataForFragmentedPackets()V

    :cond_6
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->previousSequenceNumber:I

    :cond_7
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->startTimeOffsetUs:J

    return-void
.end method
