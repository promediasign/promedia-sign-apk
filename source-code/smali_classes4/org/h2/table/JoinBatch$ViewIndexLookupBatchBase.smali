.class abstract Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/IndexLookupBatch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/table/JoinBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewIndexLookupBatchBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lorg/h2/table/JoinBatch$QueryRunnerBase;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/h2/index/IndexLookupBatch;"
    }
.end annotation


# instance fields
.field private findCalled:Z

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;>;"
        }
    .end annotation
.end field

.field private resultSize:I

.field protected final viewIndex:Lorg/h2/index/ViewIndex;


# direct methods
.method public constructor <init>(Lorg/h2/index/ViewIndex;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->result:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->viewIndex:Lorg/h2/index/ViewIndex;

    return-void
.end method


# virtual methods
.method public final addSearchRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resetAfterFind()Z

    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->viewIndex:Lorg/h2/index/ViewIndex;

    invoke-virtual {v0}, Lorg/h2/index/ViewIndex;->getSession()Lorg/h2/engine/Session;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/h2/index/ViewIndex;->setupQueryParameters(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    iget v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    iget-object v1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    invoke-virtual {p0, v0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->queryRunner(I)Lorg/h2/table/JoinBatch$QueryRunnerBase;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->result:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->newQueryRunner()Lorg/h2/table/JoinBatch$QueryRunnerBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :goto_0
    iput-object p1, v0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->first:Lorg/h2/result/SearchRow;

    iput-object p2, v0, Lorg/h2/table/JoinBatch$QueryRunnerBase;->last:Lorg/h2/result/SearchRow;

    invoke-virtual {p0, v0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->collectSearchRows(Lorg/h2/table/JoinBatch$QueryRunnerBase;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->clear()V

    const/4 p1, 0x0

    return p1

    :cond_1
    iget p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    return p2
.end method

.method public abstract collectSearchRows(Lorg/h2/table/JoinBatch$QueryRunnerBase;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation
.end method

.method public final find()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lorg/h2/index/Cursor;",
            ">;>;"
        }
    .end annotation

    iget v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->findCalled:Z

    invoke-virtual {p0, v0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->startQueryRunners(I)V

    iget v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    iget-object v1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->result:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->result:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    const-string v0, "view"

    return-object v0
.end method

.method public abstract newQueryRunner()Lorg/h2/table/JoinBatch$QueryRunnerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public queryRunner(I)Lorg/h2/table/JoinBatch$QueryRunnerBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/JoinBatch$QueryRunnerBase;

    return-object p1
.end method

.method public reset(Z)V
    .locals 2

    iget p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resetAfterFind()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->queryRunner(I)Lorg/h2/table/JoinBatch$QueryRunnerBase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    :cond_1
    return-void
.end method

.method public final resetAfterFind()Z
    .locals 3

    iget-boolean v0, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->findCalled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->findCalled:Z

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->queryRunner(I)Lorg/h2/table/JoinBatch$QueryRunnerBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/table/JoinBatch$QueryRunnerBase;->reset()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lorg/h2/table/JoinBatch$ViewIndexLookupBatchBase;->resultSize:I

    const/4 v0, 0x1

    return v0
.end method

.method public abstract startQueryRunners(I)V
.end method
