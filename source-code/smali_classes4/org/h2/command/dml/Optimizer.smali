.class Lorg/h2/command/dml/Optimizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_BRUTE_FORCE:I = 0x7d0

.field private static final MAX_BRUTE_FORCE_FILTERS:I = 0x7

.field private static final MAX_GENETIC:I = 0x1f4


# instance fields
.field private bestPlan:Lorg/h2/table/Plan;

.field private final condition:Lorg/h2/expression/Expression;

.field private cost:D

.field private final filters:[Lorg/h2/table/TableFilter;

.field private random:Ljava/util/Random;

.field private final session:Lorg/h2/engine/Session;

.field private startNs:J

.field private switched:Lorg/h2/util/BitField;

.field private topFilter:Lorg/h2/table/TableFilter;


# direct methods
.method public constructor <init>([Lorg/h2/table/TableFilter;Lorg/h2/expression/Expression;Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    iput-object p2, p0, Lorg/h2/command/dml/Optimizer;->condition:Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/command/dml/Optimizer;->session:Lorg/h2/engine/Session;

    return-void
.end method

.method private calculateBestPlan()V
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->isForceJoinOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/command/dml/Optimizer;->startNs:J

    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v0, v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateBruteForceAll()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateBruteForceSome()V

    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/h2/command/dml/Optimizer;->random:Ljava/util/Random;

    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateGenetic()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    invoke-direct {p0, v0}, Lorg/h2/command/dml/Optimizer;->testPlan([Lorg/h2/table/TableFilter;)Z

    :goto_1
    return-void
.end method

.method private calculateBruteForceAll()V
    .locals 4

    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v1, v0

    new-array v1, v1, [Lorg/h2/table/TableFilter;

    invoke-static {v0, v1}, Lorg/h2/util/Permutations;->create([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/h2/util/Permutations;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lorg/h2/command/dml/Optimizer;->canStop(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/h2/util/Permutations;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lorg/h2/command/dml/Optimizer;->testPlan([Lorg/h2/table/TableFilter;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateBruteForceSome()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v1, v1

    invoke-static {v1}, Lorg/h2/command/dml/Optimizer;->getMaxBruteForceFilters(I)I

    move-result v1

    iget-object v2, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v3, v2

    new-array v3, v3, [Lorg/h2/table/TableFilter;

    invoke-static {v2, v3, v1}, Lorg/h2/util/Permutations;->create([Ljava/lang/Object;[Ljava/lang/Object;I)Lorg/h2/util/Permutations;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-direct {v0, v5}, Lorg/h2/command/dml/Optimizer;->canStop(I)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v2}, Lorg/h2/util/Permutations;->next()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    invoke-virtual {v9, v4}, Lorg/h2/table/TableFilter;->setUsed(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    if-ge v6, v1, :cond_1

    aget-object v8, v3, v6

    invoke-virtual {v8, v7}, Lorg/h2/table/TableFilter;->setUsed(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_3
    iget-object v8, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v8, v8

    if-ge v6, v8, :cond_6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_4
    iget-object v12, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v13, v12

    if-ge v11, v13, :cond_5

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lorg/h2/table/TableFilter;->isUsed()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v13, v12

    sub-int/2addr v13, v7

    if-ne v6, v13, :cond_2

    move v10, v11

    goto :goto_5

    :cond_2
    aget-object v12, v12, v11

    aput-object v12, v3, v6

    new-instance v12, Lorg/h2/table/Plan;

    add-int/lit8 v13, v6, 0x1

    iget-object v14, v0, Lorg/h2/command/dml/Optimizer;->condition:Lorg/h2/expression/Expression;

    invoke-direct {v12, v3, v13, v14}, Lorg/h2/table/Plan;-><init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V

    iget-object v13, v0, Lorg/h2/command/dml/Optimizer;->session:Lorg/h2/engine/Session;

    invoke-virtual {v12, v13}, Lorg/h2/table/Plan;->calculateCost(Lorg/h2/engine/Session;)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpg-double v16, v8, v14

    if-ltz v16, :cond_3

    cmpg-double v14, v12, v8

    if-gez v14, :cond_4

    :cond_3
    move v10, v11

    move-wide v8, v12

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v8, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    aget-object v8, v8, v10

    invoke-virtual {v8, v7}, Lorg/h2/table/TableFilter;->setUsed(Z)V

    iget-object v8, v0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    aget-object v8, v8, v10

    aput-object v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    invoke-direct {v0, v3}, Lorg/h2/command/dml/Optimizer;->testPlan([Lorg/h2/table/TableFilter;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private calculateFakePlan()V
    .locals 4

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    new-instance v0, Lorg/h2/table/Plan;

    iget-object v1, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v2, v1

    iget-object v3, p0, Lorg/h2/command/dml/Optimizer;->condition:Lorg/h2/expression/Expression;

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/table/Plan;-><init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V

    iput-object v0, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    return-void
.end method

.method private calculateGenetic()V
    .locals 6

    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v1, v0

    new-array v1, v1, [Lorg/h2/table/TableFilter;

    array-length v0, v0

    new-array v0, v0, [Lorg/h2/table/TableFilter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_5

    invoke-direct {p0, v3}, Lorg/h2/command/dml/Optimizer;->canStop(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    and-int/lit8 v4, v3, 0x7f

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    iget-object v5, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v5, v5

    invoke-static {v1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/h2/command/dml/Optimizer;->shuffleTwo([Lorg/h2/table/TableFilter;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    :goto_2
    new-instance v4, Lorg/h2/util/BitField;

    invoke-direct {v4}, Lorg/h2/util/BitField;-><init>()V

    iput-object v4, p0, Lorg/h2/command/dml/Optimizer;->switched:Lorg/h2/util/BitField;

    iget-object v4, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v5, v4

    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lorg/h2/command/dml/Optimizer;->shuffleAll([Lorg/h2/table/TableFilter;)V

    iget-object v4, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v4, v4

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    invoke-direct {p0, v0}, Lorg/h2/command/dml/Optimizer;->testPlan([Lorg/h2/table/TableFilter;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lorg/h2/util/BitField;

    invoke-direct {v4}, Lorg/h2/util/BitField;-><init>()V

    iput-object v4, p0, Lorg/h2/command/dml/Optimizer;->switched:Lorg/h2/util/BitField;

    iget-object v4, p0, Lorg/h2/command/dml/Optimizer;->filters:[Lorg/h2/table/TableFilter;

    array-length v4, v4

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private canStop(I)Z
    .locals 6

    and-int/lit8 p1, p1, 0x7f

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/command/dml/Optimizer;->startNs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    const-wide/16 v4, 0x0

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_0

    const-wide/16 v4, 0xa

    mul-long v0, v0, v4

    long-to-double v0, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v2, v2, v4

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static getMaxBruteForceFilters(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v0, p0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v2, p0, -0x1

    mul-int v2, v2, p0

    div-int/lit8 v2, v2, 0x2

    mul-int v2, v2, v0

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_0

    add-int/lit8 p0, p0, -0x1

    mul-int v0, v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private shuffleAll([Lorg/h2/table/TableFilter;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/h2/command/dml/Optimizer;->random:Ljava/util/Random;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    if-eq v1, v0, :cond_0

    aget-object v2, p1, v0

    aget-object v3, p1, v1

    aput-object v3, p1, v0

    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private shuffleTwo([Lorg/h2/table/TableFilter;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x14

    if-ge v1, v4, :cond_3

    iget-object v2, p0, Lorg/h2/command/dml/Optimizer;->random:Ljava/util/Random;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, p0, Lorg/h2/command/dml/Optimizer;->random:Ljava/util/Random;

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    move v7, v3

    move v3, v2

    move v2, v7

    :cond_1
    array-length v5, p1

    mul-int v5, v5, v2

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/h2/command/dml/Optimizer;->switched:Lorg/h2/util/BitField;

    invoke-virtual {v6, v5}, Lorg/h2/util/BitField;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lorg/h2/command/dml/Optimizer;->switched:Lorg/h2/util/BitField;

    invoke-virtual {v6, v5}, Lorg/h2/util/BitField;->set(I)V

    :cond_3
    if-ne v1, v4, :cond_4

    return v0

    :cond_4
    aget-object v0, p1, v2

    aget-object v1, p1, v3

    aput-object v1, p1, v2

    aput-object v0, p1, v3

    const/4 p1, 0x1

    return p1
.end method

.method private testPlan([Lorg/h2/table/TableFilter;)Z
    .locals 7

    new-instance v0, Lorg/h2/table/Plan;

    array-length v1, p1

    iget-object v2, p0, Lorg/h2/command/dml/Optimizer;->condition:Lorg/h2/expression/Expression;

    invoke-direct {v0, p1, v1, v2}, Lorg/h2/table/Plan;-><init>([Lorg/h2/table/TableFilter;ILorg/h2/expression/Expression;)V

    iget-object p1, p0, Lorg/h2/command/dml/Optimizer;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1}, Lorg/h2/table/Plan;->calculateCost(Lorg/h2/engine/Session;)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    const-wide/16 v5, 0x0

    cmpg-double p1, v3, v5

    if-ltz p1, :cond_1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iput-wide v1, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    iput-object v0, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getCost()D
    .locals 2

    iget-wide v0, p0, Lorg/h2/command/dml/Optimizer;->cost:D

    return-wide v0
.end method

.method public getTopFilter()Lorg/h2/table/TableFilter;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->topFilter:Lorg/h2/table/TableFilter;

    return-object v0
.end method

.method public optimize(Z)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateFakePlan()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/h2/command/dml/Optimizer;->calculateBestPlan()V

    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    invoke-virtual {v0}, Lorg/h2/table/Plan;->removeUnusableIndexConditions()V

    :goto_0
    iget-object v0, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    invoke-virtual {v0}, Lorg/h2/table/Plan;->getFilters()[Lorg/h2/table/TableFilter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lorg/h2/command/dml/Optimizer;->topFilter:Lorg/h2/table/TableFilter;

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v4, v0, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v1, v5}, Lorg/h2/table/TableFilter;->addJoin(Lorg/h2/table/TableFilter;ZZLorg/h2/expression/Expression;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    return-void

    :cond_2
    array-length p1, v0

    :goto_2
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/h2/command/dml/Optimizer;->bestPlan:Lorg/h2/table/Plan;

    invoke-virtual {v3, v2}, Lorg/h2/table/Plan;->getItem(Lorg/h2/table/TableFilter;)Lorg/h2/table/PlanItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/table/TableFilter;->setPlanItem(Lorg/h2/table/PlanItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
