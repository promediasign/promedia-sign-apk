.class public interface abstract Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createName()Lorg/apache/poi/ss/usermodel/Name;
.end method

.method public abstract get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
.end method

.method public abstract get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
.end method

.method public abstract getExternalSheetIndex(Ljava/lang/String;)I
.end method

.method public abstract getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
.end method

.method public abstract getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
.end method

.method public abstract getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
.end method

.method public abstract getTable(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Table;
.end method
