.class Lorg/h2/util/ThreadDeadlockDetector$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/util/ThreadDeadlockDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/util/ThreadDeadlockDetector;


# direct methods
.method public constructor <init>(Lorg/h2/util/ThreadDeadlockDetector;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/util/ThreadDeadlockDetector$1;->this$0:Lorg/h2/util/ThreadDeadlockDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/h2/util/ThreadDeadlockDetector$1;->this$0:Lorg/h2/util/ThreadDeadlockDetector;

    invoke-virtual {v0}, Lorg/h2/util/ThreadDeadlockDetector;->checkForDeadlocks()V

    return-void
.end method
