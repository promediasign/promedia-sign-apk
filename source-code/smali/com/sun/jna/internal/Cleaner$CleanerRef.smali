.class Lcom/sun/jna/internal/Cleaner$CleanerRef;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/internal/Cleaner$Cleanable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/internal/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanerRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/sun/jna/internal/Cleaner$Cleanable;"
    }
.end annotation


# instance fields
.field private final cleaner:Lcom/sun/jna/internal/Cleaner;

.field private final cleanupTask:Ljava/lang/Runnable;

.field private next:Lcom/sun/jna/internal/Cleaner$CleanerRef;

.field private previous:Lcom/sun/jna/internal/Cleaner$CleanerRef;


# direct methods
.method public constructor <init>(Lcom/sun/jna/internal/Cleaner;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/internal/Cleaner;",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->cleaner:Lcom/sun/jna/internal/Cleaner;

    iput-object p4, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->cleanupTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->cleaner:Lcom/sun/jna/internal/Cleaner;

    invoke-static {v0, p0}, Lcom/sun/jna/internal/Cleaner;->access$100(Lcom/sun/jna/internal/Cleaner;Lcom/sun/jna/internal/Cleaner$CleanerRef;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->cleanupTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public getNext()Lcom/sun/jna/internal/Cleaner$CleanerRef;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->next:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    return-object v0
.end method

.method public getPrevious()Lcom/sun/jna/internal/Cleaner$CleanerRef;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->previous:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    return-object v0
.end method

.method public setNext(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->next:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    return-void
.end method

.method public setPrevious(Lcom/sun/jna/internal/Cleaner$CleanerRef;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/jna/internal/Cleaner$CleanerRef;->previous:Lcom/sun/jna/internal/Cleaner$CleanerRef;

    return-void
.end method
