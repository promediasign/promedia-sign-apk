.class final Lio/netty/util/internal/SocketUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/SocketUtils;->bind(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$address:Ljava/net/SocketAddress;

.field final synthetic val$socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/SocketUtils$4;->val$socketChannel:Ljava/nio/channels/SocketChannel;

    iput-object p2, p0, Lio/netty/util/internal/SocketUtils$4;->val$address:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/util/internal/SocketUtils$4;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    .line 2
    iget-object v0, p0, Lio/netty/util/internal/SocketUtils$4;->val$socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lio/netty/util/internal/SocketUtils$4;->val$address:Ljava/net/SocketAddress;

    invoke-static {v0, v1}, Lio/netty/handler/ssl/a;->q(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V

    const/4 v0, 0x0

    return-object v0
.end method
