.class Lorg/apache/mina/filter/codec/ProtocolCodecSession$1;
.super Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/ProtocolCodecSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/codec/ProtocolCodecSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolCodecSession;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession$1;->this$0:Lorg/apache/mina/filter/codec/ProtocolCodecSession;

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession$1;->this$0:Lorg/apache/mina/filter/codec/ProtocolCodecSession;

    invoke-static {v0}, Lorg/apache/mina/filter/codec/ProtocolCodecSession;->access$000(Lorg/apache/mina/filter/codec/ProtocolCodecSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method
