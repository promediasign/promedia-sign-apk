.class public interface abstract Lorg/apache/mina/filter/codec/demux/MessageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

.field public static final NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

.field public static final OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    sget-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    sget-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    return-void
.end method


# virtual methods
.method public abstract decodable(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
.end method

.method public abstract decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
.end method

.method public abstract finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
.end method
