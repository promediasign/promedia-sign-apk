.class public abstract Lio/netty/handler/codec/MessageAggregator;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "C::",
        "Lio/netty/buffer/ByteBufHolder;",
        "O::",
        "Lio/netty/buffer/ByteBufHolder;",
        ">",
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "TI;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private aggregating:Z

.field private continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private currentMessage:Lio/netty/buffer/ByteBufHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private handlingOversizedMessage:Z

.field private final maxContentLength:I

.field private maxCumulationBufferComponents:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    invoke-static {p1}, Lio/netty/handler/codec/MessageAggregator;->validateMaxContentLength(I)V

    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+TI;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>(Ljava/lang/Class;)V

    const/16 p2, 0x400

    iput p2, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    invoke-static {p1}, Lio/netty/handler/codec/MessageAggregator;->validateMaxContentLength(I)V

    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    return-void
.end method

.method private static appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    :cond_0
    return-void
.end method

.method private finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation(Lio/netty/buffer/ByteBufHolder;)V

    return-void
.end method

.method private invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/MessageAggregator;->handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    throw p1
.end method

.method private releaseCurrentMessage()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->release()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    :cond_0
    return-void
.end method

.method private static validateMaxContentLength(I)V
    .locals 1

    const-string v0, "maxContentLength"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->acceptInboundMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/MessageAggregator;->isAggregated(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/MessageAggregator;->isStartMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    return v2

    :cond_2
    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->aggregating:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/MessageAggregator;->isContentMessage(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public aggregate(Lio/netty/buffer/ByteBufHolder;Lio/netty/buffer/ByteBufHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;TC;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/netty/buffer/ByteBuf;",
            ")TO;"
        }
    .end annotation
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    throw p1
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public abstract closeAfterContinueResponse(Ljava/lang/Object;)Z
.end method

.method public final ctx()Lio/netty/channel/ChannelHandlerContext;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not added to a pipeline yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageAggregator;->isStartMessage(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-nez v0, :cond_7

    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lio/netty/handler/codec/MessageAggregator;->newContinueResponse(Ljava/lang/Object;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

    if-nez v1, :cond_0

    new-instance v1, Lio/netty/handler/codec/MessageAggregator$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/MessageAggregator$1;-><init>(Lio/netty/handler/codec/MessageAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    iput-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->continueResponseWriteListener:Lio/netty/channel/ChannelFutureListener;

    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->closeAfterContinueResponse(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/MessageAggregator;->ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    if-eqz v2, :cond_1

    sget-object p1, Lio/netty/channel/ChannelFutureListener;->CLOSE:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void

    :cond_1
    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    if-eqz v0, :cond_3

    return-void

    :cond_2
    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-virtual {p0, p2, v0}, Lio/netty/handler/codec/MessageAggregator;->isContentLengthInvalid(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/MessageAggregator;->invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void

    :cond_3
    instance-of v0, p2, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/DecoderResultProvider;

    invoke-interface {v0}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_5

    instance-of p1, p2, Lio/netty/buffer/ByteBufHolder;

    if-eqz p1, :cond_4

    move-object p1, p2

    check-cast p1, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lio/netty/handler/codec/MessageAggregator;->beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object p1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :goto_1
    invoke-direct {p0, p1}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    iget p3, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    invoke-interface {p1, p3}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    instance-of p3, p2, Lio/netty/buffer/ByteBufHolder;

    if-eqz p3, :cond_6

    move-object p3, p2

    check-cast p3, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {p3}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p3

    invoke-static {p1, p3}, Lio/netty/handler/codec/MessageAggregator;->appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V

    :cond_6
    invoke-virtual {p0, p2, p1}, Lio/netty/handler/codec/MessageAggregator;->beginAggregation(Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    goto/16 :goto_3

    :cond_7
    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->release()Z

    iput-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    new-instance p1, Lio/netty/handler/codec/MessageAggregationException;

    invoke-direct {p1}, Lio/netty/handler/codec/MessageAggregationException;-><init>()V

    throw p1

    :cond_8
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageAggregator;->isContentMessage(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    check-cast p2, Lio/netty/buffer/ByteBufHolder;

    invoke-virtual {v0}, Lio/netty/buffer/AbstractByteBuf;->readableBytes()I

    move-result v2

    iget v3, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    invoke-interface {p2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_a

    iget-object p2, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/MessageAggregator;->invokeHandleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void

    :cond_a
    invoke-interface {p2}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-static {v0, p1}, Lio/netty/handler/codec/MessageAggregator;->appendPartialContent(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/ByteBuf;)V

    iget-object p1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/MessageAggregator;->aggregate(Lio/netty/buffer/ByteBufHolder;Lio/netty/buffer/ByteBufHolder;)V

    instance-of p1, p2, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz p1, :cond_b

    move-object p1, p2

    check-cast p1, Lio/netty/handler/codec/DecoderResultProvider;

    invoke-interface {p1}, Lio/netty/handler/codec/DecoderResultProvider;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p2, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    instance-of v0, p2, Lio/netty/handler/codec/DecoderResultProvider;

    if-eqz v0, :cond_c

    check-cast p2, Lio/netty/handler/codec/DecoderResultProvider;

    invoke-virtual {p1}, Lio/netty/handler/codec/DecoderResult;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/netty/handler/codec/DecoderResultProvider;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageAggregator;->isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    :goto_2
    iget-object p1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-direct {p0, p1}, Lio/netty/handler/codec/MessageAggregator;->finishAggregation0(Lio/netty/buffer/ByteBufHolder;)V

    iget-object p1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lio/netty/handler/codec/MessageAggregator;->currentMessage:Lio/netty/buffer/ByteBufHolder;

    :cond_d
    :goto_3
    return-void

    :cond_e
    new-instance p1, Lio/netty/handler/codec/MessageAggregationException;

    invoke-direct {p1}, Lio/netty/handler/codec/MessageAggregationException;-><init>()V

    throw p1
.end method

.method public finishAggregation(Lio/netty/buffer/ByteBufHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    return-void
.end method

.method public handleOversizedMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TS;)V"
        }
    .end annotation

    new-instance p2, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content length exceeded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/codec/MessageAggregator;->maxContentLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lio/netty/handler/codec/MessageAggregator;->releaseCurrentMessage()V

    throw p1
.end method

.method public abstract ignoreContentAfterContinueResponse(Ljava/lang/Object;)Z
.end method

.method public abstract isAggregated(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation
.end method

.method public abstract isContentLengthInvalid(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)Z"
        }
    .end annotation
.end method

.method public abstract isContentMessage(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation
.end method

.method public final isHandlingOversizedMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lio/netty/handler/codec/MessageAggregator;->handlingOversizedMessage:Z

    return v0
.end method

.method public abstract isLastContentMessage(Lio/netty/buffer/ByteBufHolder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract isStartMessage(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)Z"
        }
    .end annotation
.end method

.method public final maxContentLength()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxContentLength:I

    return v0
.end method

.method public final maxCumulationBufferComponents()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    return v0
.end method

.method public abstract newContinueResponse(Ljava/lang/Object;ILio/netty/channel/ChannelPipeline;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I",
            "Lio/netty/channel/ChannelPipeline;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lio/netty/handler/codec/MessageAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lio/netty/handler/codec/MessageAggregator;->maxCumulationBufferComponents:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "decoder properties cannot be changed once the decoder is added to a pipeline."

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "maxCumulationBufferComponents: "

    .line 22
    .line 23
    const-string v2, " (expected: >= 2)"

    .line 24
    .line 25
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
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
.end method
