.class final Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field private streamState:I

.field final synthetic this$0:Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->streamState:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$000(Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$100(Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 8

    iget v0, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, -0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    return v1

    :cond_0
    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_5

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$000(Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, -0x3

    return p1

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {p1}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$300(Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p2, v5}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    const-wide/16 v6, 0x0

    iput-wide v6, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_3

    invoke-virtual {p2, p1}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object p2, p2, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$300(Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)[B

    move-result-object v0

    invoke-virtual {p2, v0, v4, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_4

    iput v2, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->streamState:I

    :cond_4
    return v1

    :cond_5
    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {p2}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$200(Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p2

    iput-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    iput v5, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 p1, -0x5

    return p1
.end method

.method public skipData(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
