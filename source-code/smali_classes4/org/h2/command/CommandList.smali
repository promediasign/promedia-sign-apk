.class Lorg/h2/command/CommandList;
.super Lorg/h2/command/Command;
.source "SourceFile"


# instance fields
.field private final command:Lorg/h2/command/Command;

.field private final remaining:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/command/Parser;Ljava/lang/String;Lorg/h2/command/Command;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/Command;-><init>(Lorg/h2/command/Parser;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/h2/command/CommandList;->command:Lorg/h2/command/Command;

    iput-object p4, p0, Lorg/h2/command/CommandList;->remaining:Ljava/lang/String;

    return-void
.end method

.method private executeRemaining()V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/Command;->session:Lorg/h2/engine/Session;

    iget-object v1, p0, Lorg/h2/command/CommandList;->remaining:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/command/Command;->isQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/command/Command;->query(I)Lorg/h2/result/ResultInterface;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/command/Command;->update()I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCommandType()I
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandList;->command:Lorg/h2/command/Command;

    invoke-interface {v0}, Lorg/h2/command/CommandInterface;->getCommandType()I

    move-result v0

    return v0
.end method

.method public getParameters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/expression/ParameterInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/command/CommandList;->command:Lorg/h2/command/Command;

    invoke-virtual {v0}, Lorg/h2/command/Command;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isQuery()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandList;->command:Lorg/h2/command/Command;

    invoke-virtual {v0}, Lorg/h2/command/Command;->isQuery()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepareJoinBatch()V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandList;->command:Lorg/h2/command/Command;

    invoke-virtual {v0}, Lorg/h2/command/Command;->prepareJoinBatch()V

    return-void
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandList;->command:Lorg/h2/command/Command;

    invoke-virtual {v0, p1}, Lorg/h2/command/Command;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    invoke-direct {p0}, Lorg/h2/command/CommandList;->executeRemaining()V

    return-object p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandList;->command:Lorg/h2/command/Command;

    invoke-virtual {v0}, Lorg/h2/command/Command;->queryMeta()Lorg/h2/result/ResultInterface;

    move-result-object v0

    return-object v0
.end method

.method public update()I
    .locals 1

    iget-object v0, p0, Lorg/h2/command/CommandList;->command:Lorg/h2/command/Command;

    invoke-virtual {v0}, Lorg/h2/command/Command;->executeUpdate()I

    move-result v0

    invoke-direct {p0}, Lorg/h2/command/CommandList;->executeRemaining()V

    return v0
.end method
