.class Lcom/google/api/client/http/javanet/NetHttpRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/http/javanet/NetHttpRequest;->writeContentToOutputStream(Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/http/javanet/NetHttpRequest;

.field final synthetic val$content:Lcom/google/api/client/util/StreamingContent;

.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$outputWriter:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/javanet/NetHttpRequest;Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;Ljava/io/OutputStream;Lcom/google/api/client/util/StreamingContent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->this$0:Lcom/google/api/client/http/javanet/NetHttpRequest;

    iput-object p2, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$outputWriter:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;

    iput-object p3, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$out:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$content:Lcom/google/api/client/util/StreamingContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$outputWriter:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;

    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->val$content:Lcom/google/api/client/util/StreamingContent;

    invoke-interface {v0, v1, v2}, Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;->write(Ljava/io/OutputStream;Lcom/google/api/client/util/StreamingContent;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
