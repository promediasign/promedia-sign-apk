.class public interface abstract Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearAllCachedResultValues()V
.end method

.method public abstract evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
.end method

.method public abstract evaluateAll()V
.end method

.method public abstract evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I
.end method

.method public abstract evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
.end method

.method public abstract evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
.end method

.method public abstract notifyDeleteCell(Lorg/apache/poi/ss/usermodel/Cell;)V
.end method

.method public abstract notifySetFormula(Lorg/apache/poi/ss/usermodel/Cell;)V
.end method

.method public abstract notifyUpdateCell(Lorg/apache/poi/ss/usermodel/Cell;)V
.end method

.method public abstract setDebugEvaluationOutputForNextEval(Z)V
.end method

.method public abstract setIgnoreMissingWorkbooks(Z)V
.end method

.method public abstract setupReferencedWorkbooks(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation
.end method
