.class public Lorg/h2/expression/ConditionIn;
.super Lorg/h2/expression/Condition;
.source "SourceFile"


# instance fields
.field private final database:Lorg/h2/engine/Database;

.field private left:Lorg/h2/expression/Expression;

.field private queryLevel:I

.field private final valueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Database;",
            "Lorg/h2/expression/Expression;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/h2/expression/Condition;-><init>()V

    iput-object p1, p0, Lorg/h2/expression/ConditionIn;->database:Lorg/h2/engine/Database;

    iput-object p2, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    iput-object p3, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    return-void
.end method

.method private areAllValues(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public createIndexConditions(Lorg/h2/engine/Session;Lorg/h2/table/TableFilter;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    instance-of v1, v0, Lorg/h2/expression/ExpressionColumn;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getTableFilter()Lorg/h2/table/TableFilter;

    move-result-object v1

    if-eq p2, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeInList:Z

    if-eqz p1, :cond_4

    invoke-static {p2}, Lorg/h2/expression/ExpressionVisitor;->getNotFromResolverVisitor(Lorg/h2/table/ColumnResolver;)Lorg/h2/expression/ExpressionVisitor;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    invoke-virtual {v2, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_3
    iget-object p1, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/h2/index/IndexCondition;->getInList(Lorg/h2/expression/ExpressionColumn;Ljava/util/List;)Lorg/h2/index/IndexCondition;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/h2/table/TableFilter;->addIndexCondition(Lorg/h2/index/IndexCondition;)V

    :cond_4
    return-void
.end method

.method public getAdditional(Lorg/h2/expression/Comparison;)Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {p1, v0}, Lorg/h2/expression/Comparison;->getIfEquals(Lorg/h2/expression/Expression;)Lorg/h2/expression/Expression;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCost()I
    .locals 3

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getCost()I

    move-result v0

    iget-object v1, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getCost()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public bridge synthetic getDisplaySize()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getDisplaySize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrecision()J
    .locals 2

    invoke-super {p0}, Lorg/h2/expression/Condition;->getPrecision()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v1}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " IN("

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    iget-object v1, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/expression/Expression;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "))"

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScale()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getScale()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getType()I
    .locals 1

    invoke-super {p0}, Lorg/h2/expression/Condition;->getType()I

    move-result v0

    return v0
.end method

.method public getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;
    .locals 7

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v0

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/expression/Expression;

    invoke-virtual {v5, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v5

    sget-object v6, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/h2/value/Value;->getType()I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object v3

    iget-object v5, p0, Lorg/h2/expression/ConditionIn;->database:Lorg/h2/engine/Database;

    invoke-static {v5, v0, v3, v2}, Lorg/h2/expression/Comparison;->compareNotNull(Lorg/h2/engine/Database;Lorg/h2/value/Value;Lorg/h2/value/Value;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object p1

    :cond_4
    invoke-static {v3}, Lorg/h2/value/ValueBoolean;->get(Z)Lorg/h2/value/ValueBoolean;

    move-result-object p1

    return-object p1
.end method

.method public isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/expression/ConditionIn;->areAllValues(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p1

    return p1
.end method

.method public mapColumns(Lorg/h2/table/ColumnResolver;I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->mapColumns(Lorg/h2/table/ColumnResolver;I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/h2/expression/ConditionIn;->queryLevel:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/h2/expression/ConditionIn;->queryLevel:I

    return-void
.end method

.method public optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;
    .locals 10

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-static {}, Lorg/h2/expression/ValueExpression;->getNull()Lorg/h2/expression/ValueExpression;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    if-ge v4, v1, :cond_4

    iget-object v7, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/expression/Expression;

    invoke-virtual {v7, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v8

    sget-object v9, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v8, v9, :cond_1

    const/4 v6, 0x0

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v7}, Lorg/h2/expression/Expression;->isConstant()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v5, 0x0

    :cond_2
    iget-object v8, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    instance-of v9, v8, Lorg/h2/expression/ExpressionColumn;

    if-eqz v9, :cond_3

    instance-of v9, v7, Lorg/h2/expression/Parameter;

    if-eqz v9, :cond_3

    move-object v9, v7

    check-cast v9, Lorg/h2/expression/Parameter;

    check-cast v8, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v8}, Lorg/h2/expression/ExpressionColumn;->getColumn()Lorg/h2/table/Column;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/h2/expression/Parameter;->setColumn(Lorg/h2/table/Column;)V

    :cond_3
    iget-object v8, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {p0, p1}, Lorg/h2/expression/ConditionIn;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object p1

    return-object p1

    :cond_5
    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/Expression;

    new-instance v1, Lorg/h2/expression/Comparison;

    iget-object v2, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-direct {v1, p1, v3, v2, v0}, Lorg/h2/expression/Comparison;-><init>(Lorg/h2/engine/Session;ILorg/h2/expression/Expression;Lorg/h2/expression/Expression;)V

    invoke-virtual {v1, p1}, Lorg/h2/expression/Comparison;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz v5, :cond_8

    if-nez v6, :cond_8

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0}, Lorg/h2/expression/Expression;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lorg/h2/expression/ConditionInConstantSet;

    iget-object v1, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    iget-object v2, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, v2}, Lorg/h2/expression/ConditionInConstantSet;-><init>(Lorg/h2/engine/Session;Lorg/h2/expression/Expression;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Lorg/h2/expression/ConditionInConstantSet;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object p1

    return-object p1

    :cond_8
    return-object p0
.end method

.method public setEvaluatable(Lorg/h2/table/TableFilter;Z)V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1, p2}, Lorg/h2/expression/Expression;->setEvaluatable(Lorg/h2/table/TableFilter;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAggregate(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->left:Lorg/h2/expression/Expression;

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/expression/ConditionIn;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/expression/Expression;

    invoke-virtual {v1, p1}, Lorg/h2/expression/Expression;->updateAggregate(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_0
    return-void
.end method
