.class public final Landroidx/media3/exoplayer/metadata/MetadataRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

.field private decoder:Landroidx/media3/extractor/metadata/MetadataDecoder;

.field private final decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

.field private inputStreamEnded:Z

.field private final output:Landroidx/media3/exoplayer/metadata/MetadataOutput;

.field private final outputHandler:Landroid/os/Handler;

.field private final outputMetadataEarly:Z

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingMetadata:Landroidx/media3/common/Metadata;

.field private subsampleOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->DEFAULT:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;Z)V
    .locals 1

    .line 3
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/metadata/MetadataOutput;

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->output:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputMetadataEarly:Z

    new-instance p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method private decodeWrappedMetadata(Landroidx/media3/common/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Metadata;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Metadata$Entry;->getWrappedMetadataFormat()Landroidx/media3/common/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/MetadataDecoder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    array-length v4, v2

    invoke-virtual {v3, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    iget-object v3, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-interface {v1, v2}, Landroidx/media3/extractor/metadata/MetadataDecoder;->decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decodeWrappedMetadata(Landroidx/media3/common/Metadata;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getPresentationTimeUs(J)J
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-wide v4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private invokeRenderer(Landroidx/media3/common/Metadata;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->invokeRendererInternal(Landroidx/media3/common/Metadata;)V

    :goto_0
    return-void
.end method

.method private invokeRendererInternal(Landroidx/media3/common/Metadata;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->output:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/metadata/MetadataOutput;->onMetadata(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method private outputMetadata(J)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputMetadataEarly:Z

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->getPresentationTimeUs(J)J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-gtz v0, :cond_1

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->invokeRenderer(Landroidx/media3/common/Metadata;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    if-nez p2, :cond_2

    iput-boolean v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    :cond_2
    return p1
.end method

.method private readMetadata()V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    iget-wide v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    iget-wide v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->subsampleOffsetUs:J

    iput-wide v1, v0, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/MetadataDecoder;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/metadata/MetadataDecoder;

    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/metadata/MetadataDecoder;->decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/media3/common/Metadata;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decodeWrappedMetadata(Landroidx/media3/common/Metadata;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/media3/common/Metadata;

    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    iget-wide v2, v2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->getPresentationTimeUs(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroidx/media3/common/Metadata;-><init>(JLjava/util/List;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    goto :goto_0

    :cond_1
    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    iget-wide v0, v0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->subsampleOffsetUs:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/Metadata;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->invokeRendererInternal(Landroidx/media3/common/Metadata;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDisabled()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/MetadataDecoder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    return-void
.end method

.method public onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2

    iget-object p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/MetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/MetadataDecoder;

    iget-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    if-eqz p1, :cond_0

    iget-wide p2, p1, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    add-long/2addr p2, v0

    sub-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/Metadata;->copyWithPresentationTimeUs(J)Landroidx/media3/common/Metadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    :cond_0
    iput-wide p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method public render(JJ)V
    .locals 0

    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->readMetadata()V

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputMetadata(J)Z

    move-result p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Landroidx/media3/exoplayer/A;->a(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/A;->a(I)I

    move-result p1

    return p1
.end method
