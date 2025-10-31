.class public Lorg/mozilla/javascript/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Parser$PerFunctionVariables;,
        Lorg/mozilla/javascript/Parser$ConditionData;,
        Lorg/mozilla/javascript/Parser$ParserException;
    }
.end annotation


# static fields
.field public static final ARGC_LIMIT:I = 0x10000

.field static final CLEAR_TI_MASK:I = 0xffff

.field private static final GET_ENTRY:I = 0x2

.field private static final METHOD_ENTRY:I = 0x8

.field private static final PROP_ENTRY:I = 0x1

.field private static final SET_ENTRY:I = 0x4

.field static final TI_AFTER_EOL:I = 0x10000

.field static final TI_CHECK_LABEL:I = 0x20000


# instance fields
.field calledByCompileFunction:Z

.field compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private currentFlaggedToken:I

.field private currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

.field private currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

.field currentScope:Lorg/mozilla/javascript/ast/Scope;

.field currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private currentToken:I

.field private defaultUseStrictDirective:Z

.field private endFlags:I

.field private errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private inDestructuringAssignment:Z

.field private inForInit:Z

.field protected inUseStrictDirective:Z

.field private labelSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/ast/LabeledStatement;",
            ">;"
        }
    .end annotation
.end field

.field private loopAndSwitchSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Jump;",
            ">;"
        }
    .end annotation
.end field

.field private loopSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Loop;",
            ">;"
        }
    .end annotation
.end field

.field protected nestingOfFunction:I

.field private parseFinished:Z

.field private prevNameTokenLineno:I

.field private prevNameTokenStart:I

.field private prevNameTokenString:Ljava/lang/String;

.field private scannedComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private sourceChars:[C

.field private sourceURI:Ljava/lang/String;

.field private syntaxErrorCount:I

.field private ts:Lorg/mozilla/javascript/TokenStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    instance-of p1, p2, Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/mozilla/javascript/ast/IdeErrorReporter;

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    :cond_0
    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/javascript/Parser;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$202(Lorg/mozilla/javascript/Parser;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$300(Lorg/mozilla/javascript/Parser;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/mozilla/javascript/Parser;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$400(Lorg/mozilla/javascript/Parser;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$402(Lorg/mozilla/javascript/Parser;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$500(Lorg/mozilla/javascript/Parser;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    return p0
.end method

.method public static synthetic access$502(Lorg/mozilla/javascript/Parser;I)I
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    return p1
.end method

.method public static synthetic access$600(Lorg/mozilla/javascript/Parser;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return p0
.end method

.method public static synthetic access$602(Lorg/mozilla/javascript/Parser;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return p1
.end method

.method private addError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 7

    .line 6
    iget v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v2, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private addExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mulExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x15

    if-eq v1, v3, :cond_1

    const/16 v3, 0x16

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mulExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private addStrictWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private addWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 6

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->reportWarningAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v1, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    move v3, p5

    move-object v4, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private andExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitOrExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x6a

    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->andExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    :cond_0
    return-object v0
.end method

.method private argumentList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x59

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    if-ne v5, v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3

    const-string v5, "msg.yield.parenthesized"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x78

    if-ne v6, v7, :cond_4

    :try_start_1
    invoke-direct {p0, v5, v4, v1}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_0
    :goto_1
    const/16 v5, 0x5a

    invoke-direct {p0, v5, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    :goto_2
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const-string v3, "msg.no.paren.arg"

    invoke-direct {p0, v0, v3, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    return-object v2

    :goto_3
    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw v0
.end method

.method private arrayComprehension(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->arrayComprehensionLoop()Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    const-string v3, "msg.no.bracket.arg"

    const/4 v4, 0x1

    const/16 v5, 0x55

    invoke-direct {p0, v5, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    new-instance v3, Lorg/mozilla/javascript/ast/ArrayComprehension;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v4, p2

    invoke-direct {v3, p2, v4}, Lorg/mozilla/javascript/ast/ArrayComprehension;-><init>(II)V

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setResult(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setLoops(Ljava/util/List;)V

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setIfPosition(I)V

    iget-object p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilter(Lorg/mozilla/javascript/ast/AstNode;)V

    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilterLp(I)V

    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->setFilterRp(I)V

    :cond_2
    return-object v3
.end method

.method private arrayComprehensionLoop()Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    .locals 13

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v2, 0x27

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "msg.no.paren.for"

    const/4 v6, -0x1

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "each"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v4, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_2
    const/4 v4, -0x1

    :goto_0
    const/16 v7, 0x58

    invoke-direct {p0, v7, v5, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v5, v0

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v7

    if-eq v7, v2, :cond_5

    const/16 v8, 0x54

    if-eq v7, v8, :cond_4

    const/16 v8, 0x56

    if-eq v7, v8, :cond_4

    const-string v7, "msg.bad.var"

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v7

    :goto_2
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v8

    if-ne v8, v2, :cond_6

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9a

    invoke-virtual {p0, v9, v8, v3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    :cond_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v2, :cond_8

    const/16 v2, 0x34

    if-eq v8, v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    :goto_3
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    const-string v2, "of"

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v8}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eq v4, v6, :cond_9

    const-string v2, "msg.invalid.for.each"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    const-string v2, "msg.in.after.for.name"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_3

    :goto_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    const-string v11, "msg.no.paren.for.ctrl"

    const/16 v12, 0x59

    invoke-direct {p0, v12, v11, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v11, v0

    goto :goto_6

    :cond_b
    const/4 v11, -0x1

    :goto_6
    iget-object v12, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v12, v12, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v12, v0

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v10}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/ForInLoop;->setEachPosition(I)V

    if-eq v4, v6, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForEach(Z)V

    invoke-virtual {v1, v5, v11}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForOf(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :goto_8
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v0
.end method

.method private arrayLiteral()Lorg/mozilla/javascript/ast/AstNode;
    .locals 12

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/mozilla/javascript/ast/ArrayLiteral;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/ast/ArrayLiteral;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, -0x1

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v10

    const/16 v11, 0x5a

    if-ne v10, v11, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v9, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    new-instance v10, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v11, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v11, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v10, v11, v6}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/16 v11, 0xa2

    if-ne v10, v11, :cond_3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_1

    :cond_3
    const/16 v11, 0x55

    if-ne v10, v11, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setDestructuringLength(I)V

    invoke-virtual {v3, v8}, Lorg/mozilla/javascript/ast/ArrayLiteral;->setSkipCount(I)V

    if-eq v9, v5, :cond_6

    invoke-direct {p0, v1, v2, v9}, Lorg/mozilla/javascript/Parser;->warnTrailingComma(ILjava/util/List;I)V

    goto :goto_2

    :cond_4
    const/16 v9, 0x78

    if-ne v10, v9, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v6, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->arrayComprehension(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v9, "msg.no.bracket.arg"

    if-nez v10, :cond_8

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/ArrayLiteral;->addElement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_3

    :cond_7
    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v3

    :cond_8
    if-nez v7, :cond_9

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private arrowFunction(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    new-instance v2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v2, v1}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v6, p0, v2}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    :try_start_0
    instance-of v7, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Lorg/mozilla/javascript/ast/FunctionNode;->setParens(II)V

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    instance-of v7, p1, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-nez v7, :cond_2

    :cond_1
    invoke-direct {p0, v2, p1, v4, v5}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x5a

    invoke-direct {p1, v5}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/Node;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/16 v8, 0x7b

    invoke-virtual {p0, v8, v7, v5}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_3
    const/16 v4, 0x17

    invoke-virtual {v2, v4, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    :cond_4
    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/Parser;->parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v2, v1, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "msg.arrowfunction.generator"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->setBaseLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    return-object v2

    :goto_3
    invoke-virtual {v6}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw p1
.end method

.method private arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ast/FunctionNode;",
            "Lorg/mozilla/javascript/ast/AstNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Node;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p2, Lorg/mozilla/javascript/ast/ArrayLiteral;

    const/16 v1, 0x58

    if-nez v0, :cond_6

    instance-of v0, p2, Lorg/mozilla/javascript/ast/ObjectLiteral;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/mozilla/javascript/ast/InfixExpression;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    check-cast p2, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->arrowFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;Lorg/mozilla/javascript/ast/AstNode;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    instance-of p3, p2, Lorg/mozilla/javascript/ast/Name;

    if-eqz p3, :cond_5

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    check-cast p2, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    iget-boolean p2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz p2, :cond_7

    const-string p2, "eval"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "arguments"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const-string p2, "msg.bad.id.strict"

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "msg.dup.param.strict"

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p3

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p2

    const-string p4, "msg.no.parm"

    invoke-virtual {p0, p4, p3, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p0, v1, p1, p4}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    return-void
.end method

.method private assignExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x49

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/Parser;->returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5b

    if-gt v3, v1, :cond_4

    const/16 v3, 0x66

    if-gt v1, v3, :cond_4

    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    if-eqz v2, :cond_2

    const-string v2, "msg.destruct.default.vals"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v4, Lorg/mozilla/javascript/ast/Assignment;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v4, v1, v0, v5, v3}, Lorg/mozilla/javascript/ast/Assignment;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    if-eqz v2, :cond_3

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    const/16 v3, 0x53

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    const/16 v2, 0xa5

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->arrowFunction(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private attributeAccess()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const-string v0, "msg.no.name.after.xmlAttr"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v2, v0, v1}, Lorg/mozilla/javascript/Parser;->xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "*"

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v2, v0, v1}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method private autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekFlaggedToken()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_2

    const/16 v3, 0x53

    if-eq v2, v3, :cond_1

    const/16 v3, 0x57

    if-eq v2, v3, :cond_2

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    const-string p1, "msg.no.semi.stmt"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p1

    :goto_0
    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/Parser;->warnMissingSemi(II)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->eqExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->eqExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private bitOrExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private bitXorExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->bitAndExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private block()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x56

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    const-string v2, "msg.no.brace.block"

    const/4 v3, 0x1

    const/16 v4, 0x57

    invoke-direct {p0, v4, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v0
.end method

.method private breakStatement()Lorg/mozilla/javascript/ast/BreakStatement;
    .locals 7

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    .line 2
    .line 3
    const/16 v1, 0x79

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 14
    .line 15
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 16
    .line 17
    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 18
    .line 19
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/16 v4, 0x27

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v0

    .line 40
    move-object v0, v5

    .line 41
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    :goto_1
    if-nez v5, :cond_5

    .line 53
    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-static {v4, v5}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    move-object v5, v4

    .line 75
    check-cast v5, Lorg/mozilla/javascript/ast/Jump;

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    :goto_2
    const-string v4, "msg.bad.break"

    .line 79
    .line 80
    sub-int v6, v3, v2

    .line 81
    .line 82
    invoke-virtual {p0, v4, v2, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_3
    new-instance v4, Lorg/mozilla/javascript/ast/BreakStatement;

    .line 86
    .line 87
    sub-int/2addr v3, v2

    .line 88
    invoke-direct {v4, v2, v3}, Lorg/mozilla/javascript/ast/BreakStatement;-><init>(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/BreakStatement;->setBreakLabel(Lorg/mozilla/javascript/ast/Name;)V

    .line 92
    .line 93
    .line 94
    if-eqz v5, :cond_6

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/BreakStatement;->setBreakTarget(Lorg/mozilla/javascript/ast/Jump;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 100
    .line 101
    .line 102
    return-object v4
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
.end method

.method private checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p1

    const/16 v0, 0x6b

    if-ne p1, v0, :cond_0

    const-string p1, "msg.bad.incr"

    goto :goto_0

    :cond_0
    const-string p1, "msg.bad.decr"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkCallRequiresActivation(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x27

    const-string v2, "eval"

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    :cond_2
    return-void
.end method

.method private codeBug()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ts.cursor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ts.tokenBeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private condExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->orExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/16 v4, 0x68

    const-string v6, "msg.no.colon.cond"

    invoke-direct {p0, v4, v6, v2}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v6

    invoke-static {v4}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v7

    sub-int/2addr v7, v6

    new-instance v8, Lorg/mozilla/javascript/ast/ConditionalExpression;

    invoke-direct {v8, v6, v7}, Lorg/mozilla/javascript/ast/ConditionalExpression;-><init>(II)V

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setTestExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setTrueExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v8, v4}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setFalseExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    sub-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setQuestionMarkPosition(I)V

    sub-int/2addr v2, v6

    invoke-virtual {v8, v2}, Lorg/mozilla/javascript/ast/ConditionalExpression;->setColonPosition(I)V

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private condition()Lorg/mozilla/javascript/Parser$ConditionData;
    .locals 5

    new-instance v0, Lorg/mozilla/javascript/Parser$ConditionData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser$ConditionData;-><init>(Lorg/mozilla/javascript/Parser$1;)V

    const/16 v1, 0x58

    const-string v2, "msg.no.paren.cond"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    const/16 v1, 0x59

    const-string v2, "msg.no.paren.after.cond"

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    :cond_1
    iget-object v1, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v2, v1, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    iget-object v2, v0, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    const-string v3, "msg.equal.as.assign"

    const-string v4, ""

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    return-object v0
.end method

.method private consumeToken()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return-void
.end method

.method private continueStatement()Lorg/mozilla/javascript/ast/ContinueStatement;
    .locals 8

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    .line 2
    .line 3
    const/16 v1, 0x7a

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 14
    .line 15
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 16
    .line 17
    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 18
    .line 19
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/16 v4, 0x27

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v0

    .line 40
    move-object v0, v5

    .line 41
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_4

    .line 46
    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-static {v4, v5}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :goto_1
    move-object v5, v4

    .line 68
    check-cast v5, Lorg/mozilla/javascript/ast/Loop;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    :goto_2
    const-string v4, "msg.continue.outside"

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    if-eqz v4, :cond_5

    .line 78
    .line 79
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    instance-of v6, v6, Lorg/mozilla/javascript/ast/Loop;

    .line 84
    .line 85
    if-nez v6, :cond_6

    .line 86
    .line 87
    :cond_5
    const-string v6, "msg.continue.nonloop"

    .line 88
    .line 89
    sub-int v7, v3, v2

    .line 90
    .line 91
    invoke-virtual {p0, v6, v2, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    .line 92
    .line 93
    .line 94
    :cond_6
    if-nez v4, :cond_7

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    goto :goto_1

    .line 102
    :goto_3
    new-instance v4, Lorg/mozilla/javascript/ast/ContinueStatement;

    .line 103
    .line 104
    sub-int/2addr v3, v2

    .line 105
    invoke-direct {v4, v2, v3}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    .line 106
    .line 107
    .line 108
    if-eqz v5, :cond_8

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/ContinueStatement;->setTarget(Lorg/mozilla/javascript/ast/Loop;)V

    .line 111
    .line 112
    .line 113
    :cond_8
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 117
    .line 118
    .line 119
    return-object v4
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
.end method

.method private createNameNode()Lorg/mozilla/javascript/ast/Name;
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    return-object v0
.end method

.method private createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v1, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    const/4 v3, 0x0

    iput v3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    iput-object v4, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    iput v3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    :cond_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    move-object v4, v0

    :goto_0
    new-instance v0, Lorg/mozilla/javascript/ast/Name;

    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/ast/Name;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, p2}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method private createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v2, Lorg/mozilla/javascript/ast/StringLiteral;

    sub-int/2addr v0, v1

    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/ast/StringLiteral;-><init>(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/StringLiteral;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getQuoteChar()C

    move-result v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/StringLiteral;->setQuoteCharacter(C)V

    return-object v2
.end method

.method private defaultXmlNamespace()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    const-string v5, "msg.bad.namespace"

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "xml"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "namespace"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_4
    const/16 v2, 0x5b

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    new-instance v4, Lorg/mozilla/javascript/ast/UnaryExpression;

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v0, v5}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(II)V

    const/16 v0, 0x4b

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperator(I)V

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperand(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    new-instance v0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {v0, v4, v3}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    return-object v0
.end method

.method private destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->primaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    throw v0
.end method

.method private doLoop()Lorg/mozilla/javascript/ast/DoLoop;
    .locals 6

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x77

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/DoLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/DoLoop;-><init>(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V

    :try_start_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    const-string v3, "msg.no.while.do"

    const/4 v4, 0x1

    const/16 v5, 0x76

    invoke-direct {p0, v5, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/DoLoop;->setWhilePosition(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v3

    iget-object v5, v3, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ast/DoLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    iget v5, v3, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v5, v0

    iget v3, v3, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v5, v3}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    const/16 v2, 0x53

    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_1
    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v0
.end method

.method private enterLoop(Lorg/mozilla/javascript/ast/Loop;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Jump;->setLoop(Lorg/mozilla/javascript/ast/Jump;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_2
    return-void
.end method

.method private enterSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private eqExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->relExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    const/16 v5, 0xd

    const/16 v6, 0xc

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v7

    const/16 v8, 0x78

    if-ne v7, v8, :cond_2

    if-ne v1, v6, :cond_1

    const/16 v1, 0x2e

    goto :goto_1

    :cond_1
    if-ne v1, v5, :cond_2

    const/16 v1, 0x2f

    :cond_2
    :goto_1
    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->relExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private exitLoop()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/Loop;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-void
.end method

.method private exitSwitch()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->loopAndSwitchSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private expr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    const/16 v3, 0x5a

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    sub-int/2addr v4, v1

    const-string v5, "msg.no.side.effects"

    const-string v6, ""

    invoke-virtual {p0, v5, v6, v1, v4}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const-string v4, "msg.yield.parenthesized"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    new-instance v4, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-direct {v4, v3, v0, v5, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private forLoop()Lorg/mozilla/javascript/ast/Loop;
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v2, 0x78

    if-eq v0, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    new-instance v3, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/16 v4, 0x27

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {v1, v4, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "msg.no.paren.for"

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    :try_start_1
    const-string v6, "each"

    iget-object v10, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v10}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v6, v2

    const/4 v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_2
    const/4 v6, -0x1

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x58

    invoke-direct {v1, v11, v7, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v7, v2

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v11

    invoke-direct {v1, v11}, Lorg/mozilla/javascript/Parser;->forLoopInit(I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v11

    const/16 v12, 0x34

    invoke-direct {v1, v12, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v12

    const/16 v13, 0x59

    const/4 v14, 0x0

    if-eqz v12, :cond_4

    iget-object v4, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v4, v2

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v12

    move-object v15, v14

    const/4 v8, 0x1

    move-object v14, v12

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_4
    iget-object v12, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v12}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v12

    const/16 v15, 0xc8

    if-lt v12, v15, :cond_5

    invoke-direct {v1, v4, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "of"

    iget-object v12, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v12}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v4, v2

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v12

    move-object v15, v14

    move-object v14, v12

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const-string v4, "msg.no.semi.for"

    const/16 v12, 0x53

    invoke-direct {v1, v12, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    if-ne v4, v12, :cond_6

    new-instance v4, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v14, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v14, v14, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v4, v14, v5}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    iget-object v14, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v14, v14, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v4, v14}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    :goto_2
    const-string v14, "msg.no.semi.for.cond"

    invoke-direct {v1, v12, v14, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v12, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v12, v12, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v14

    if-ne v14, v13, :cond_7

    new-instance v14, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v14, v12, v5}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    iget-object v12, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v12, v12, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v14, v12}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_3
    move-object v15, v14

    const/4 v12, 0x0

    move-object v14, v4

    const/4 v4, -0x1

    goto :goto_4

    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v14

    goto :goto_3

    :goto_4
    const-string v9, "msg.no.paren.for.ctrl"

    invoke-direct {v1, v13, v9, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v1, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v9, v2

    goto :goto_5

    :cond_8
    const/4 v9, -0x1

    :goto_5
    if-nez v8, :cond_a

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_9
    new-instance v4, Lorg/mozilla/javascript/ast/ForLoop;

    invoke-direct {v4, v2}, Lorg/mozilla/javascript/ast/ForLoop;-><init>(I)V

    invoke-virtual {v4, v11}, Lorg/mozilla/javascript/ast/ForLoop;->setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v4, v14}, Lorg/mozilla/javascript/ast/ForLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v4, v15}, Lorg/mozilla/javascript/ast/ForLoop;->setIncrement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_7

    :cond_a
    :goto_6
    new-instance v8, Lorg/mozilla/javascript/ast/ForInLoop;

    invoke-direct {v8, v2}, Lorg/mozilla/javascript/ast/ForInLoop;-><init>(I)V

    instance-of v13, v11, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v13, :cond_b

    move-object v13, v11

    check-cast v13, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v5, :cond_b

    const-string v5, "msg.mult.index"

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_b
    if-eqz v12, :cond_c

    if-eqz v10, :cond_c

    const-string v5, "msg.invalid.for.each"

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v8, v11}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v8, v14}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v8, v4}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    invoke-virtual {v8, v10}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForEach(Z)V

    invoke-virtual {v8, v6}, Lorg/mozilla/javascript/ast/ForInLoop;->setEachPosition(I)V

    invoke-virtual {v8, v12}, Lorg/mozilla/javascript/ast/ForInLoop;->setIsForOf(Z)V

    move-object v4, v8

    :goto_7
    iget-object v5, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/Scope;->replaceWith(Lorg/mozilla/javascript/ast/Scope;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    invoke-direct {v1, v4}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {v1, v4}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v2, v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_d
    invoke-virtual {v4, v7, v9}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v4

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    iget-object v2, v1, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v2, v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    :cond_e
    throw v0
.end method

.method private forLoopInit(I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/16 v2, 0x53

    if-ne p1, v2, :cond_0

    new-instance p1, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p1, v2, v0}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9a

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object p1

    :goto_2
    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw p1
.end method

.method private function(I)Lorg/mozilla/javascript/ast/FunctionNode;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p1

    return-object p1
.end method

.method private function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;
    .locals 11

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    const-string v5, "msg.no.paren.parms"

    const/4 v6, 0x0

    const/16 v7, 0x58

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const-string v9, "eval"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "arguments"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, "msg.bad.id.strict"

    invoke-virtual {p0, v9, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v7, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowMemberExprAsFunctionName()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v6, v2}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    move-object v10, v8

    move-object v8, v2

    move-object v2, v10

    :cond_2
    invoke-direct {p0, v7, v5, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v7, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v8

    goto :goto_1

    :cond_4
    const/16 v2, 0x17

    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v2

    const/16 v4, 0xc8

    if-lt v2, v4, :cond_5

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/Parser;->function(IZ)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isAllowMemberExprAsFunctionName()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    goto :goto_0

    :cond_6
    move-object v2, v8

    :goto_0
    invoke-direct {p0, v7, v5, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-object v10, v8

    move-object v8, v2

    move-object v2, v10

    :cond_7
    :goto_1
    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/4 v4, -0x1

    if-ne v3, v7, :cond_8

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_2

    :cond_8
    const/4 v3, -0x1

    :goto_2
    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    const/4 v5, 0x2

    if-eq p1, v5, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v5

    if-lez v5, :cond_a

    const/16 v5, 0x6e

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    :cond_a
    :goto_3
    new-instance v5, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-direct {v5, v0, v2}, Lorg/mozilla/javascript/ast/FunctionNode;-><init>(ILorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    if-eqz p2, :cond_b

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsES6Generator()V

    :cond_b
    if-eq v3, v4, :cond_c

    sub-int/2addr v3, v0

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/FunctionNode;->setLp(I)V

    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object p2

    invoke-virtual {v5, p2}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    new-instance p2, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {p2, p0, v5}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    :try_start_0
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->parseFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;)V

    invoke-direct {p0, p1, v5}, Lorg/mozilla/javascript/Parser;->parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v5, v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p1, v0

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->hasConsistentReturnUsage()Z

    move-result p1

    if-nez p1, :cond_f

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result p1

    if-lez p1, :cond_d

    const-string p1, "msg.no.return.value"

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_d
    const-string p1, "msg.anon.no.return.value"

    :goto_4
    if-nez v2, :cond_e

    const-string v0, ""

    goto :goto_5

    :cond_e
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    invoke-virtual {p2}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    if-eqz v8, :cond_10

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/ast/FunctionNode;->setMemberExprNode(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_10
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setBaseLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_11
    return-object v5

    :goto_6
    invoke-virtual {p2}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw p1
.end method

.method private generatorExpression(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1
.end method

.method private generatorExpression(Lorg/mozilla/javascript/ast/AstNode;IZ)Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->generatorExpressionLoop()Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-nez p3, :cond_2

    const-string p3, "msg.no.paren.let"

    const/4 v3, 0x1

    const/16 v4, 0x59

    invoke-direct {p0, v4, p3, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    :cond_2
    new-instance p3, Lorg/mozilla/javascript/ast/GeneratorExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, p2

    invoke-direct {p3, p2, v3}, Lorg/mozilla/javascript/ast/GeneratorExpression;-><init>(II)V

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setResult(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setLoops(Ljava/util/List;)V

    if-eqz v2, :cond_3

    invoke-virtual {p3, v1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setIfPosition(I)V

    iget-object p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilter(Lorg/mozilla/javascript/ast/AstNode;)V

    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilterLp(I)V

    iget p1, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ast/GeneratorExpression;->setFilterRp(I)V

    :cond_3
    return-object p3
.end method

.method private generatorExpressionLoop()Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;
    .locals 10

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/GeneratorExpressionLoop;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_0
    const-string v2, "msg.no.paren.for"

    const/4 v3, 0x1

    const/16 v4, 0x58

    invoke-direct {p0, v4, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0x27

    if-eq v5, v6, :cond_3

    const/16 v7, 0x54

    if-eq v5, v7, :cond_2

    const/16 v7, 0x56

    if-eq v5, v7, :cond_2

    const-string v5, "msg.bad.var"

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    if-ne v7, v6, :cond_4

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9a

    invoke-virtual {p0, v7, v6, v3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    :cond_4
    const-string v6, "msg.in.after.for.name"

    const/16 v7, 0x34

    invoke-direct {p0, v7, v6, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v6, v0

    goto :goto_2

    :cond_5
    const/4 v6, -0x1

    :goto_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    const-string v8, "msg.no.paren.for.ctrl"

    const/16 v9, 0x59

    invoke-direct {p0, v9, v8, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int v4, v3, v0

    :cond_6
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ast/ForInLoop;->setIterator(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ast/ForInLoop;->setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/ForInLoop;->setInPosition(I)V

    invoke-virtual {v1, v2, v4}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v1

    :goto_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw v0
.end method

.method private getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    return-object v0
.end method

.method private static getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p0

    instance-of v0, p0, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0xa2

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    :goto_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private ifStatement()Lorg/mozilla/javascript/ast/IfStatement;
    .locals 8

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    .line 2
    .line 3
    const/16 v1, 0x71

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 14
    .line 15
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 16
    .line 17
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 18
    .line 19
    new-instance v2, Lorg/mozilla/javascript/ast/IfStatement;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Lorg/mozilla/javascript/ast/IfStatement;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/16 v5, 0x72

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    invoke-direct {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/16 v7, 0xa2

    .line 46
    .line 47
    if-ne v5, v7, :cond_1

    .line 48
    .line 49
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v5, v6}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    .line 56
    .line 57
    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/ast/IfStatement;->setElseKeyWordInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 64
    .line 65
    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 66
    .line 67
    sub-int/2addr v5, v1

    .line 68
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v5, -0x1

    .line 74
    const/4 v6, 0x0

    .line 75
    :goto_0
    if-eqz v6, :cond_3

    .line 76
    .line 77
    move-object v7, v6

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object v7, v4

    .line 80
    :goto_1
    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    sub-int/2addr v7, v1

    .line 85
    invoke-virtual {v2, v7}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    .line 86
    .line 87
    .line 88
    iget-object v7, v3, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    .line 89
    .line 90
    invoke-virtual {v2, v7}, Lorg/mozilla/javascript/ast/IfStatement;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 91
    .line 92
    .line 93
    iget v7, v3, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    .line 94
    .line 95
    sub-int/2addr v7, v1

    .line 96
    iget v3, v3, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    .line 97
    .line 98
    sub-int/2addr v3, v1

    .line 99
    invoke-virtual {v2, v7, v3}, Lorg/mozilla/javascript/ast/IfStatement;->setParens(II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/IfStatement;->setThenPart(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ast/IfStatement;->setElsePart(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/ast/IfStatement;->setElsePosition(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 112
    .line 113
    .line 114
    return-object v2
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
.end method

.method private let(ZI)Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    new-instance v0, Lorg/mozilla/javascript/ast/LetNode;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/ast/LetNode;-><init>(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    const/16 v1, 0x58

    const-string v2, "msg.no.paren.after.let"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setLp(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v2, 0x9a

    invoke-direct {p0, v2, v1, p1}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)V

    const-string v1, "msg.no.paren.let"

    const/16 v4, 0x59

    invoke-direct {p0, v4, v1, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setRp(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v4, 0x56

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statements()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    const-string v4, "msg.no.curly.let"

    const/16 v5, 0x57

    invoke-direct {p0, v5, v4, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v3, p1

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/LetNode;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V

    if-eqz p1, :cond_3

    new-instance p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-direct {p1, v0, p2}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->setLineno(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    return-object v0

    :goto_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method private letStatement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0x58

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/Parser;->let(ZI)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v0, v5}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0
.end method

.method private lineBeginningFor(I)I
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-gtz p1, :cond_1

    return v1

    :cond_1
    array-length v2, v0

    if-lt p1, v2, :cond_2

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_2
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ltz v2, :cond_4

    aget-char v3, v0, v2

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v3

    if-eqz v3, :cond_3

    return p1

    :cond_3
    move p1, v2

    goto :goto_0

    :cond_4
    return v1
.end method

.method private makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/ast/ErrorNode;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/ast/ErrorNode;-><init>(II)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0
.end method

.method private matchJumpLabelName()Lorg/mozilla/javascript/ast/LabeledStatement;
    .locals 3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v0

    const/16 v1, 0x27

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/mozilla/javascript/ast/LabeledStatement;

    :cond_0
    if-nez v2, :cond_1

    const-string v0, "msg.undef.label"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method private matchToken(IZ)Z
    .locals 2

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 p1, 0x1

    return p1
.end method

.method private memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;
    .locals 8

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->primaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v2, Lorg/mozilla/javascript/ast/NewExpression;

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/ast/NewExpression;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/FunctionCall;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    const/16 v3, 0x58

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->argumentList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v7, 0x10000

    if-le v6, v7, :cond_1

    const-string v6, "msg.too.many.constructor.args"

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/FunctionCall;->setArguments(Ljava/util/List;)V

    :cond_2
    sub-int/2addr v3, v0

    sub-int/2addr v7, v0

    invoke-virtual {v2, v3, v7}, Lorg/mozilla/javascript/ast/FunctionCall;->setParens(II)V

    move v4, v6

    :cond_3
    const/16 v3, 0x56

    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/NewExpression;->setInitializer(Lorg/mozilla/javascript/ast/ObjectLiteral;)V

    :cond_4
    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1
.end method

.method private memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    const/16 v2, 0x54

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_9

    const/16 v2, 0x58

    const/high16 v5, 0x10000

    if-eq v1, v2, :cond_6

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_5

    const/16 v2, 0x90

    if-eq v1, v2, :cond_5

    const/16 v2, 0x93

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    and-int v3, v1, v5

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    iput v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    const/16 v7, 0x59

    const-string v8, "msg.no.paren"

    invoke-direct {p0, v7, v8, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_4
    new-instance v3, Lorg/mozilla/javascript/ast/XmlDotQuery;

    sub-int/2addr v6, v0

    invoke-direct {v3, v0, v6}, Lorg/mozilla/javascript/ast/XmlDotQuery;-><init>(II)V

    invoke-virtual {v3, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/XmlDotQuery;->setRp(I)V

    :goto_1
    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    move-object p2, v3

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/Parser;->propertyAccess(ILorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    :goto_2
    return-object p2

    :cond_7
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/Parser;->checkCallRequiresActivation(Lorg/mozilla/javascript/ast/AstNode;)V

    new-instance v2, Lorg/mozilla/javascript/ast/FunctionCall;

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/ast/FunctionCall;-><init>(I)V

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/FunctionCall;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/FunctionCall;->setLp(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->argumentList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_8

    const-string v1, "msg.too.many.function.args"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/FunctionCall;->setArguments(Ljava/util/List;)V

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/FunctionCall;->setRp(I)V

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    move-object p2, v2

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    const/16 v7, 0x55

    const-string v8, "msg.no.bracket.index"

    invoke-direct {p0, v7, v8, v3}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v6, v3, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_a
    new-instance v3, Lorg/mozilla/javascript/ast/ElementGet;

    sub-int/2addr v6, v0

    invoke-direct {v3, v0, v6}, Lorg/mozilla/javascript/ast/ElementGet;-><init>(II)V

    invoke-virtual {v3, p2}, Lorg/mozilla/javascript/ast/ElementGet;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/ast/ElementGet;->setElement(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v2, v4}, Lorg/mozilla/javascript/ast/ElementGet;->setParens(II)V

    goto/16 :goto_1
.end method

.method private methodDefinition(ILorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "msg.bad.prop"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v2, p1}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>(I)V

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsNormalMethod()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsNormalMethod()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsSetterMethod()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsSetterMethod()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->setIsGetterMethod()V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionIsGetterMethod()V

    :goto_0
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p3

    invoke-virtual {v2, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    sub-int/2addr p3, p1

    invoke-virtual {v2, p3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v2
.end method

.method private mulExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private mustHaveXML()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "msg.XML.not.available"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private mustMatchToken(ILjava/lang/String;IIZ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    const/4 p1, 0x0

    return p1
.end method

.method private mustMatchToken(ILjava/lang/String;Z)Z
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int v5, v0, v4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;IIZ)Z

    move-result p1

    return p1
.end method

.method private name(II)Lorg/mozilla/javascript/ast/AstNode;
    .locals 3

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/high16 v2, 0x20000

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result p1

    const/16 v2, 0x68

    if-ne p1, v2, :cond_0

    new-instance p1, Lorg/mozilla/javascript/ast/Label;

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-direct {p1, v1, v0}, Lorg/mozilla/javascript/ast/Label;-><init>(II)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/Label;->setName(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p2, p2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object p1

    :cond_0
    invoke-direct {p0, v1, p2, v0}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const/16 p2, 0x27

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    return-object p1
.end method

.method private nameOrLabel()Lorg/mozilla/javascript/ast/AstNode;
    .locals 8

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x83

    if-eq v4, v5, :cond_0

    new-instance v0, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    iget v1, v2, Lorg/mozilla/javascript/Node;->lineno:I

    iput v1, v0, Lorg/mozilla/javascript/Node;->lineno:I

    return-object v0

    :cond_0
    new-instance v4, Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-direct {v4, v0}, Lorg/mozilla/javascript/ast/LabeledStatement;-><init>(I)V

    check-cast v2, Lorg/mozilla/javascript/ast/Label;

    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    const/4 v6, 0x0

    if-ne v2, v1, :cond_2

    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    if-eq v7, v5, :cond_1

    new-instance v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    :cond_1
    check-cast v2, Lorg/mozilla/javascript/ast/Label;

    invoke-direct {p0, v2, v4}, Lorg/mozilla/javascript/Parser;->recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V

    goto :goto_0

    :cond_2
    move-object v1, v6

    :goto_1
    :try_start_0
    iput-object v4, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statementHelper()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_2
    iput-object v6, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/Label;

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    :goto_4
    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/ast/LabeledStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v4

    :goto_5
    iput-object v6, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Label;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    throw v0

    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private nextToken()I
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    return v0
.end method

.method private static nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private static final nowAllSet(III)Z
    .locals 0

    and-int/2addr p0, p2

    if-eq p0, p2, :cond_0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v11

    const/16 v12, 0xa2

    if-ne v10, v12, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {v0, v10}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    move-result v10

    :cond_1
    const/16 v12, 0x57

    if-ne v10, v12, :cond_3

    if-eq v9, v8, :cond_2

    invoke-direct {v0, v2, v3, v9}, Lorg/mozilla/javascript/Parser;->warnTrailingComma(ILjava/util/List;I)V

    :cond_2
    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    const/16 v15, 0x5a

    const-string v5, "msg.bad.prop"

    if-nez v9, :cond_4

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    const/4 v10, 0x1

    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_4
    iget-object v13, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v13}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v13

    iget-object v8, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v14

    if-eq v14, v15, :cond_c

    const/16 v15, 0x68

    if-eq v14, v15, :cond_c

    if-eq v14, v12, :cond_c

    const/16 v10, 0x58

    if-ne v14, v10, :cond_5

    const/16 v10, 0x8

    :goto_3
    const/4 v13, 0x2

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v10

    const/16 v14, 0x27

    if-ne v10, v14, :cond_7

    const-string v10, "get"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x2

    goto :goto_3

    :cond_6
    const-string v10, "set"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x4

    goto :goto_3

    :cond_7
    const/4 v10, 0x1

    goto :goto_3

    :goto_4
    if-eq v10, v13, :cond_8

    const/4 v13, 0x4

    if-ne v10, v13, :cond_a

    :cond_8
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    if-nez v9, :cond_9

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    :cond_a
    if-nez v9, :cond_b

    goto :goto_2

    :cond_b
    iget-object v5, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v5}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v8, v9, v10}, Lorg/mozilla/javascript/Parser;->methodDefinition(ILorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v5

    invoke-virtual {v9, v11}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-virtual {v9, v11}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    invoke-direct {v0, v9, v10}, Lorg/mozilla/javascript/Parser;->plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    :goto_5
    iget-boolean v5, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v5, :cond_14

    if-eqz v13, :cond_14

    const-string v5, "msg.dup.obj.lit.prop.strict"

    const/4 v8, 0x1

    if-eq v10, v8, :cond_11

    const/4 v8, 0x2

    if-eq v10, v8, :cond_f

    const/4 v8, 0x4

    if-eq v10, v8, :cond_d

    const/16 v8, 0x8

    if-eq v10, v8, :cond_11

    goto :goto_7

    :cond_d
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v0, v5, v13}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v0, v5, v13}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_12
    invoke-virtual {v0, v5, v13}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    const/4 v5, 0x1

    const/16 v8, 0x5a

    invoke-direct {v0, v8, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v5, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_15
    :goto_8
    const-string v4, "msg.no.brace.prop"

    invoke-direct {v0, v12, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    new-instance v4, Lorg/mozilla/javascript/ast/ObjectLiteral;

    iget-object v5, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v5, v2

    invoke-direct {v4, v2, v5}, Lorg/mozilla/javascript/ast/ObjectLiteral;-><init>(II)V

    if-eqz v7, :cond_16

    invoke-virtual {v4, v7}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_16
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/ObjectLiteral;->setElements(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v4
.end method

.method private objliteralProperty()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/mozilla/javascript/ast/NumberLiteral;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v3}, Lorg/mozilla/javascript/TokenStream;->getNumber()D

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>(ILjava/lang/String;D)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private orExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->andExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x69

    invoke-direct {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->orExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    :cond_0
    return-object v0
.end method

.method private parenExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 8

    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x59

    if-ne v4, v5, :cond_0

    new-instance v4, Lorg/mozilla/javascript/ast/EmptyExpression;

    invoke-direct {v4, v2}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/Parser;->generatorExpression(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v1

    :cond_1
    :try_start_1
    const-string v6, "msg.no.paren"

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x81

    if-ne v5, v6, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0xa5

    if-eq v5, v6, :cond_2

    const-string v1, "msg.syntax"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v1

    :cond_2
    :try_start_2
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v5, v2

    new-instance v6, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-direct {v6, v2, v5, v4}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v6, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    return-object v6

    :goto_1
    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    throw v1
.end method

.method private parse()Lorg/mozilla/javascript/ast/AstRoot;
    .locals 10

    .line 1
    new-instance v0, Lorg/mozilla/javascript/ast/AstRoot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/AstRoot;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->defaultUseStrictDirective:Z

    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v7

    if-gtz v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v8, 0x6e

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v7, p0, Lorg/mozilla/javascript/Parser;->calledByCompileFunction:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v7
    :try_end_1
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    :goto_2
    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    goto :goto_4

    :cond_3
    const/16 v8, 0xa2

    if-ne v7, v8, :cond_4

    :try_start_2
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/AstNode;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    if-eqz v3, :cond_6

    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const-string v9, "use strict"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iput-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    :cond_6
    :goto_3
    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_2
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_3
    const-string v3, "msg.too.deep.parser.recursion"

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_a

    goto :goto_2

    :goto_4
    iget v1, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg.got.syntax.errors"

    invoke-virtual {p0, v2, v1}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-interface/range {v3 .. v8}, Lorg/mozilla/javascript/ErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_5
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/AstRoot;->addComment(Lorg/mozilla/javascript/ast/Comment;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setSourceName(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/ast/ScriptNode;->setBaseLineno(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEndLineno(I)V

    return-object v0

    :cond_a
    :try_start_4
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    iput-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    throw v0
.end method

.method private parseFunctionBody(ILorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 10

    const/16 v0, 0x56

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v0

    const/16 v4, 0xb4

    if-ge v0, v4, :cond_0

    if-eq p1, v2, :cond_0

    const-string v0, "msg.no.brace.body"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v4, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v4, v2}, Lorg/mozilla/javascript/ast/Block;-><init>(I)V

    iget-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iput-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v4, v6}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    const/16 v6, 0x57

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p2

    new-instance v3, Lorg/mozilla/javascript/ast/ReturnStatement;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v7

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v8

    invoke-direct {v3, v7, v8, p2}, Lorg/mozilla/javascript/ast/ReturnStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v7, 0x19

    invoke-virtual {v3, v7, p2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v4, v7, p2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    if-eqz p1, :cond_3

    const/16 p1, 0x1b

    invoke-virtual {v3, p1, p2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_3
    :goto_3
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ast/Block;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_6

    :cond_4
    const/4 p1, 0x1

    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    if-eqz v7, :cond_9

    if-eq v7, v6, :cond_9

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_7

    const/16 v8, 0xa2

    if-eq v7, v8, :cond_6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    if-eqz p1, :cond_8

    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getDirective(Lorg/mozilla/javascript/ast/AstNode;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    const-string v9, "use strict"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iput-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    invoke-virtual {p2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setInStrictMode(Z)V

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/AstNode;

    goto :goto_5

    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-virtual {v4, v7}, Lorg/mozilla/javascript/ast/Block;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catch_0
    :cond_9
    :goto_6
    iget p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    goto :goto_8

    :goto_7
    iget p2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    iput-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    throw p1

    :goto_8
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    if-nez v0, :cond_a

    const-string p2, "msg.no.brace.after.body"

    invoke-direct {p0, v6, p2, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget p1, p1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    :cond_a
    sub-int/2addr p1, v2

    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object v4
.end method

.method private parseFunctionParams(Lorg/mozilla/javascript/ast/FunctionNode;)V
    .locals 8

    const/16 v0, 0x59

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRp(I)V

    return-void

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v4

    const/16 v5, 0x54

    const/16 v6, 0x58

    if-eq v4, v5, :cond_8

    const/16 v5, 0x56

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x27

    const-string v5, "msg.no.parm"

    invoke-direct {p0, v4, v5, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_3
    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;)V

    iget-boolean v5, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v5, :cond_a

    const-string v5, "eval"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "arguments"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v5, "msg.bad.id.strict"

    invoke-virtual {p0, v5, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "msg.dup.param.strict"

    invoke-virtual {p0, v5, v4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    :cond_8
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/ast/FunctionNode;->addParam(Lorg/mozilla/javascript/ast/AstNode;)V

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_9
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v5, v7}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_1
    const/16 v4, 0x5a

    invoke-direct {p0, v4, v1}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_c

    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/Node;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    const/16 v6, 0x7b

    invoke-virtual {p0, v6, v5, v4}, Lorg/mozilla/javascript/Parser;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    :cond_b
    const/16 v3, 0x17

    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    :cond_c
    const-string v2, "msg.no.paren.after.parms"

    invoke-direct {p0, v0, v2, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRp(I)V

    :cond_d
    return-void
.end method

.method private peekFlaggedToken()I
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return v0
.end method

.method private peekToken()I
    .locals 6

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    const/16 v5, 0xa2

    if-ne v1, v5, :cond_3

    :cond_1
    if-ne v1, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v4}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getAndResetCurrentComment()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lorg/mozilla/javascript/Parser;->recordComment(ILjava/lang/String;)V

    :cond_3
    iput v1, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    if-eqz v3, :cond_4

    const/high16 v2, 0x10000

    :cond_4
    or-int v0, v1, v2

    iput v0, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    return v1

    :cond_5
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getToken()I

    move-result v1

    goto :goto_0
.end method

.method private peekTokenOrEOL()I
    .locals 3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/Parser;->currentFlaggedToken:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private peekUntilNonComment(I)I
    .locals 1

    :goto_0
    const/16 v0, 0xa2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private plainProperty(Lorg/mozilla/javascript/ast/AstNode;I)Lorg/mozilla/javascript/ast/ObjectProperty;
    .locals 3

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v0, 0x27

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p2

    const/16 v0, 0xb4

    if-lt p2, v0, :cond_2

    iget-boolean p2, p0, Lorg/mozilla/javascript/Parser;->inDestructuringAssignment:Z

    if-nez p2, :cond_1

    const-string p2, "msg.bad.object.init"

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/mozilla/javascript/ast/Name;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v0

    :cond_2
    const-string p2, "msg.no.colon.prop"

    const/4 v0, 0x1

    const/16 v1, 0x68

    invoke-direct {p0, v1, p2, v0}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    new-instance p2, Lorg/mozilla/javascript/ast/ObjectProperty;

    invoke-direct {p2}, Lorg/mozilla/javascript/ast/ObjectProperty;-><init>()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    return-object p2
.end method

.method private primaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekFlaggedToken()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v1, v0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_e

    .line 11
    .line 12
    if-eqz v1, :cond_d

    .line 13
    .line 14
    const/16 v2, 0x18

    .line 15
    .line 16
    if-eq v1, v2, :cond_c

    .line 17
    .line 18
    const/16 v2, 0x54

    .line 19
    .line 20
    if-eq v1, v2, :cond_b

    .line 21
    .line 22
    const/16 v2, 0x56

    .line 23
    .line 24
    if-eq v1, v2, :cond_a

    .line 25
    .line 26
    const/16 v2, 0x58

    .line 27
    .line 28
    if-eq v1, v2, :cond_9

    .line 29
    .line 30
    const/16 v2, 0x65

    .line 31
    .line 32
    if-eq v1, v2, :cond_c

    .line 33
    .line 34
    const/16 v2, 0x6e

    .line 35
    .line 36
    if-eq v1, v2, :cond_8

    .line 37
    .line 38
    const/16 v2, 0x80

    .line 39
    .line 40
    if-eq v1, v2, :cond_7

    .line 41
    .line 42
    const/16 v2, 0x94

    .line 43
    .line 44
    if-eq v1, v2, :cond_6

    .line 45
    .line 46
    const/16 v2, 0x9a

    .line 47
    .line 48
    if-eq v1, v2, :cond_5

    .line 49
    .line 50
    packed-switch v1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 54
    .line 55
    .line 56
    const-string v0, "msg.syntax"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 67
    .line 68
    iget v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 69
    .line 70
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 71
    .line 72
    new-instance v3, Lorg/mozilla/javascript/ast/KeywordLiteral;

    .line 73
    .line 74
    sub-int/2addr v0, v2

    .line 75
    invoke-direct {v3, v2, v0, v1}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    .line 76
    .line 77
    .line 78
    return-object v3

    .line 79
    :pswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createStringLiteral()Lorg/mozilla/javascript/ast/StringLiteral;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :pswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 97
    .line 98
    if-eqz v1, :cond_0

    .line 99
    .line 100
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 101
    .line 102
    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberOldOctal()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    .line 108
    const-string v1, "msg.no.old.octal.strict"

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 114
    .line 115
    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberBinary()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_1

    .line 120
    .line 121
    const-string v1, "0b"

    .line 122
    .line 123
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 128
    .line 129
    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberOldOctal()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    const-string v1, "0"

    .line 136
    .line 137
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 142
    .line 143
    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberOctal()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    const-string v1, "0o"

    .line 150
    .line 151
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :cond_3
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 156
    .line 157
    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->isNumberHex()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_4

    .line 162
    .line 163
    const-string v1, "0x"

    .line 164
    .line 165
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :cond_4
    new-instance v1, Lorg/mozilla/javascript/ast/NumberLiteral;

    .line 170
    .line 171
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 172
    .line 173
    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 174
    .line 175
    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getNumber()D

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    invoke-direct {v1, v3, v0, v4, v5}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>(ILjava/lang/String;D)V

    .line 180
    .line 181
    .line 182
    return-object v1

    .line 183
    :pswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->name(II)Lorg/mozilla/javascript/ast/AstNode;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    return-object v0

    .line 191
    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 195
    .line 196
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->let(ZI)Lorg/mozilla/javascript/ast/AstNode;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    return-object v0

    .line 204
    :cond_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 205
    .line 206
    .line 207
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    .line 208
    .line 209
    .line 210
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->attributeAccess()Lorg/mozilla/javascript/ast/AstNode;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    return-object v0

    .line 215
    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 219
    .line 220
    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "msg.reserved.id"

    .line 225
    .line 226
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 231
    .line 232
    .line 233
    const/4 v0, 0x2

    .line 234
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    return-object v0

    .line 239
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 240
    .line 241
    .line 242
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parenExpr()Lorg/mozilla/javascript/ast/AstNode;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    return-object v0

    .line 247
    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 248
    .line 249
    .line 250
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->objectLiteral()Lorg/mozilla/javascript/ast/ObjectLiteral;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    return-object v0

    .line 255
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 256
    .line 257
    .line 258
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->arrayLiteral()Lorg/mozilla/javascript/ast/AstNode;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    return-object v0

    .line 263
    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/TokenStream;->readRegExp(I)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 272
    .line 273
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 274
    .line 275
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 276
    .line 277
    new-instance v2, Lorg/mozilla/javascript/ast/RegExpLiteral;

    .line 278
    .line 279
    sub-int/2addr v0, v1

    .line 280
    invoke-direct {v2, v1, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;-><init>(II)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 284
    .line 285
    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;->setValue(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 293
    .line 294
    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->readAndClearRegExpFlags()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/RegExpLiteral;->setFlags(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-object v2

    .line 302
    :cond_d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 303
    .line 304
    .line 305
    const-string v0, "msg.unexpected.eof"

    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto :goto_0

    .line 311
    :cond_e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 312
    .line 313
    .line 314
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 315
    .line 316
    .line 317
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    return-object v0

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
.end method

.method private propertyAccess(ILorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    if-nez p2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/16 v2, 0x90

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->mustHaveXML()V

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v3

    const-string v4, "msg.no.name.after.dot"

    const/16 v5, 0x27

    if-nez v3, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result p1

    if-eq p1, v5, :cond_3

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v2

    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    invoke-static {p1, v2, v3}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    const/16 v2, 0x21

    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    new-instance v2, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {v2, p2, p1, v0}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/Name;I)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v2

    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v1

    const/16 v3, 0x17

    const/4 v6, -0x1

    if-eq v1, v3, :cond_a

    if-eq v1, v5, :cond_5

    const/16 v3, 0x32

    if-eq v1, v3, :cond_9

    const/16 v3, 0x80

    if-eq v1, v3, :cond_8

    const/16 v3, 0x94

    if-eq v1, v3, :cond_7

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Lorg/mozilla/javascript/Token;->keywordToName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v4, v1, v3}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    :cond_5
    :goto_2
    invoke-direct {p0, v6, v2}, Lorg/mozilla/javascript/Parser;->propertyName(II)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->attributeAccess()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const-string v4, "throw"

    :goto_3
    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v3, v4, v1}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const-string v4, "*"

    goto :goto_3

    :goto_4
    instance-of v2, v1, Lorg/mozilla/javascript/ast/XmlRef;

    if-eqz v2, :cond_b

    new-instance v3, Lorg/mozilla/javascript/ast/XmlMemberGet;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/XmlMemberGet;-><init>()V

    goto :goto_5

    :cond_b
    new-instance v3, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-direct {v3}, Lorg/mozilla/javascript/ast/PropertyGet;-><init>()V

    :goto_5
    if-eqz v2, :cond_c

    const/16 v2, 0x6d

    if-ne p1, v2, :cond_c

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    :cond_c
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/AstNode;->setPosition(I)V

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    sub-int/2addr v0, p1

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {v3, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    return-object v3
.end method

.method private propertyName(II)Lorg/mozilla/javascript/ast/AstNode;
    .locals 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v3, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v3

    const/16 v5, 0x91

    invoke-direct {p0, v5, v4}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v5

    const/16 v6, 0x17

    if-eq v5, v6, :cond_3

    const/16 v6, 0x27

    if-eq v5, v6, :cond_2

    const/16 p2, 0x54

    if-eq v5, p2, :cond_1

    const-string p1, "msg.no.name.after.coloncolon"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, v3, v4}, Lorg/mozilla/javascript/Parser;->xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const-string v7, "*"

    iget v5, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0, v6, v7, v5}, Lorg/mozilla/javascript/Parser;->saveNameTokenData(ILjava/lang/String;I)V

    const/4 v5, 0x0

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/Parser;->createNameNode(ZI)Lorg/mozilla/javascript/ast/Name;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    move-object v5, v3

    move-object v3, v4

    const/4 v4, -0x1

    :goto_1
    if-nez v3, :cond_5

    if-nez p2, :cond_5

    if-ne p1, v0, :cond_5

    return-object v5

    :cond_5
    new-instance p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p2, v1, v0}, Lorg/mozilla/javascript/ast/XmlPropRef;-><init>(II)V

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ast/XmlRef;->setAtPos(I)V

    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/ast/XmlRef;->setNamespace(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {p2, v4}, Lorg/mozilla/javascript/ast/XmlRef;->setColonPos(I)V

    invoke-virtual {p2, v5}, Lorg/mozilla/javascript/ast/XmlPropRef;->setPropName(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object p2
.end method

.method private recordComment(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/ast/Comment;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v1

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v3, v3, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    invoke-direct {v0, v2, v1, v3, p2}, Lorg/mozilla/javascript/ast/Comment;-><init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v1, v1, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    sget-object v2, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingLocalJsDocComments()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/mozilla/javascript/ast/Comment;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v2}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v2

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget-object v4, v4, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    invoke-direct {v1, v3, v2, v4, p2}, Lorg/mozilla/javascript/ast/Comment;-><init>(IILorg/mozilla/javascript/Token$CommentType;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->currentJsDocComment:Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :cond_1
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private recordLabel(Lorg/mozilla/javascript/ast/Label;Lorg/mozilla/javascript/ast/LabeledStatement;)V
    .locals 4

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v2

    const-string v3, "msg.dup.label"

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabelByName(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Label;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    invoke-virtual {p0, v3, v2, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_3
    :goto_0
    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->addLabel(Lorg/mozilla/javascript/ast/Label;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->labelSet:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private relExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->shiftExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x34

    if-eq v1, v3, :cond_0

    const/16 v3, 0x35

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    if-eqz v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->shiftExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;
    .locals 12

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    const-string v1, "msg.bad.yield"

    const/4 v2, 0x4

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_0

    const-string v0, "msg.bad.return"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v4, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 v5, 0x1

    const/16 v6, 0xc8

    const/16 v7, 0x49

    if-ne p1, v7, :cond_2

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v8

    if-lt v8, v6, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v8

    const/16 v9, 0x17

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    if-eqz v9, :cond_5

    if-eq v9, v5, :cond_5

    if-eq v9, v7, :cond_3

    const/16 v5, 0x53

    if-eq v9, v5, :cond_5

    const/16 v5, 0x55

    if-eq v9, v5, :cond_5

    const/16 v5, 0x57

    if-eq v9, v5, :cond_5

    const/16 v5, 0x59

    if-eq v9, v5, :cond_5

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v5}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v5

    if-ge v5, v6, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v5

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x0

    move-object v11, v5

    move v5, v0

    move-object v0, v11

    :goto_4
    iget v6, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const-string v7, ""

    if-ne p1, v2, :cond_7

    if-nez v0, :cond_6

    const/4 v2, 0x2

    :cond_6
    or-int p1, v6, v2

    iput p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    new-instance p1, Lorg/mozilla/javascript/ast/ReturnStatement;

    sub-int/2addr v5, v4

    invoke-direct {p1, v4, v5, v0}, Lorg/mozilla/javascript/ast/ReturnStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    iget p2, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const/4 v0, 0x6

    invoke-static {v6, p2, v0}, Lorg/mozilla/javascript/Parser;->nowAllSet(III)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "msg.return.inconsistent"

    invoke-virtual {p0, p2, v7, v4, v5}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_8
    iget p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    new-instance p1, Lorg/mozilla/javascript/ast/Yield;

    sub-int/2addr v5, v4

    invoke-direct {p1, v4, v5, v0, v8}, Lorg/mozilla/javascript/ast/Yield;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setIsGenerator()V

    if-nez p2, :cond_9

    new-instance p2, Lorg/mozilla/javascript/ast/ExpressionStatement;

    invoke-direct {p2, p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;)V

    move-object p1, p2

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p0, Lorg/mozilla/javascript/Parser;->endFlags:I

    const/16 v0, 0xc

    invoke-static {v6, p2, v0}, Lorg/mozilla/javascript/Parser;->nowAllSet(III)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast p2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast p2, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const-string v0, "msg.generator.returns"

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    :goto_6
    const-string p2, "msg.anon.generator.returns"

    invoke-virtual {p0, p2, v7}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_7
    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object p1
.end method

.method private saveNameTokenData(ILjava/lang/String;I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenStart:I

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenString:Ljava/lang/String;

    iput p3, p0, Lorg/mozilla/javascript/Parser;->prevNameTokenLineno:I

    return-void
.end method

.method private shiftExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->addExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/InfixExpression;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->addExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private statement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statementHelper()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    instance-of v4, v2, Lorg/mozilla/javascript/ast/EmptyStatement;

    if-eqz v4, :cond_0

    const-string v4, "msg.extra.trailing.semi"

    goto :goto_0

    :cond_0
    const-string v4, "msg.no.side.effects"

    :goto_0
    const-string v5, ""

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->nodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0, v4, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v3

    const/16 v4, 0xa2

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V
    :try_end_0
    .catch Lorg/mozilla/javascript/Parser$ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_4

    const/16 v3, 0x53

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Lorg/mozilla/javascript/ast/EmptyStatement;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    invoke-direct {v1, v0, v2}, Lorg/mozilla/javascript/ast/EmptyStatement;-><init>(II)V

    return-object v1
.end method

.method private statementHelper()Lorg/mozilla/javascript/ast/AstNode;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentLabel:Lorg/mozilla/javascript/ast/LabeledStatement;

    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 19
    .line 20
    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq v0, v2, :cond_11

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    if-eq v0, v2, :cond_10

    .line 27
    .line 28
    const/16 v2, 0x27

    .line 29
    .line 30
    if-eq v0, v2, :cond_e

    .line 31
    .line 32
    const/16 v2, 0x32

    .line 33
    .line 34
    if-eq v0, v2, :cond_d

    .line 35
    .line 36
    const/16 v2, 0x49

    .line 37
    .line 38
    if-eq v0, v2, :cond_10

    .line 39
    .line 40
    const/16 v2, 0x56

    .line 41
    .line 42
    if-eq v0, v2, :cond_c

    .line 43
    .line 44
    const/16 v2, 0x6e

    .line 45
    .line 46
    if-eq v0, v2, :cond_b

    .line 47
    .line 48
    const/16 v2, 0x71

    .line 49
    .line 50
    if-eq v0, v2, :cond_a

    .line 51
    .line 52
    const/16 v2, 0x73

    .line 53
    .line 54
    if-eq v0, v2, :cond_9

    .line 55
    .line 56
    const/16 v2, 0x52

    .line 57
    .line 58
    if-eq v0, v2, :cond_8

    .line 59
    .line 60
    const/16 v2, 0x53

    .line 61
    .line 62
    if-eq v0, v2, :cond_7

    .line 63
    .line 64
    const/16 v3, 0x9a

    .line 65
    .line 66
    if-eq v0, v3, :cond_5

    .line 67
    .line 68
    const/16 v2, 0x9b

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    if-eq v0, v2, :cond_4

    .line 72
    .line 73
    const/16 v2, 0xa1

    .line 74
    .line 75
    if-eq v0, v2, :cond_3

    .line 76
    .line 77
    const/16 v2, 0xa2

    .line 78
    .line 79
    if-eq v0, v2, :cond_2

    .line 80
    .line 81
    packed-switch v0, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    iget v0, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 85
    .line 86
    new-instance v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    .line 87
    .line 88
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    xor-int/2addr v3, v4

    .line 97
    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :pswitch_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    const-string v0, "msg.no.with.strict"

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->withStatement()Lorg/mozilla/javascript/ast/WithStatement;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0

    .line 119
    :pswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->continueStatement()Lorg/mozilla/javascript/ast/ContinueStatement;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->breakStatement()Lorg/mozilla/javascript/ast/BreakStatement;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :pswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->forLoop()Lorg/mozilla/javascript/ast/Loop;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0

    .line 136
    :pswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->doLoop()Lorg/mozilla/javascript/ast/DoLoop;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :pswitch_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->whileLoop()Lorg/mozilla/javascript/ast/WhileLoop;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0

    .line 146
    :pswitch_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->defaultXmlNamespace()Lorg/mozilla/javascript/ast/AstNode;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    .line 153
    .line 154
    invoke-static {v0, v3}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 162
    .line 163
    .line 164
    new-instance v1, Lorg/mozilla/javascript/ast/KeywordLiteral;

    .line 165
    .line 166
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 167
    .line 168
    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 169
    .line 170
    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 171
    .line 172
    sub-int/2addr v2, v3

    .line 173
    invoke-direct {v1, v3, v2, v0}, Lorg/mozilla/javascript/ast/KeywordLiteral;-><init>(III)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 177
    .line 178
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_4
    :pswitch_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 188
    .line 189
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 190
    .line 191
    iget v2, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    .line 192
    .line 193
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 194
    .line 195
    invoke-direct {p0, v2, v0, v3}, Lorg/mozilla/javascript/Parser;->variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 200
    .line 201
    .line 202
    move-object v1, v0

    .line 203
    goto :goto_0

    .line 204
    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->letStatement()Lorg/mozilla/javascript/ast/AstNode;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    instance-of v0, v1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    .line 209
    .line 210
    if-eqz v0, :cond_6

    .line 211
    .line 212
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-ne v0, v2, :cond_6

    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_6
    return-object v1

    .line 220
    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 224
    .line 225
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 226
    .line 227
    new-instance v1, Lorg/mozilla/javascript/ast/EmptyStatement;

    .line 228
    .line 229
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 230
    .line 231
    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 232
    .line 233
    sub-int/2addr v2, v0

    .line 234
    invoke-direct {v1, v0, v2}, Lorg/mozilla/javascript/ast/EmptyStatement;-><init>(II)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    .line 238
    .line 239
    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 242
    .line 243
    .line 244
    return-object v1

    .line 245
    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->tryStatement()Lorg/mozilla/javascript/ast/TryStatement;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    return-object v0

    .line 250
    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->switchStatement()Lorg/mozilla/javascript/ast/SwitchStatement;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    return-object v0

    .line 255
    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->ifStatement()Lorg/mozilla/javascript/ast/IfStatement;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    return-object v0

    .line 260
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 261
    .line 262
    .line 263
    const/4 v0, 0x3

    .line 264
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->function(I)Lorg/mozilla/javascript/ast/FunctionNode;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0

    .line 269
    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->block()Lorg/mozilla/javascript/ast/AstNode;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0

    .line 274
    :cond_d
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->throwStatement()Lorg/mozilla/javascript/ast/ThrowStatement;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    goto :goto_0

    .line 279
    :cond_e
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nameOrLabel()Lorg/mozilla/javascript/ast/AstNode;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    instance-of v0, v1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    .line 284
    .line 285
    if-eqz v0, :cond_f

    .line 286
    .line 287
    goto :goto_0

    .line 288
    :cond_f
    return-object v1

    .line 289
    :cond_10
    const/4 v1, 0x0

    .line 290
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/Parser;->returnOrYield(IZ)Lorg/mozilla/javascript/ast/AstNode;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    :goto_0
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->autoInsertSemicolon(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 295
    .line 296
    .line 297
    return-object v1

    .line 298
    :cond_11
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    .line 299
    .line 300
    .line 301
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    return-object v0

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
.end method

.method private statements()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method private statements(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 3

    .line 2
    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x56

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/ast/Block;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v2, 0x57

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->addChild(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-object p1
.end method

.method private switchStatement()Lorg/mozilla/javascript/ast/SwitchStatement;
    .locals 14

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/SwitchStatement;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/SwitchStatement;-><init>(I)V

    const/16 v2, 0x58

    const-string v3, "msg.no.paren.switch"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/SwitchStatement;->setLp(I)V

    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/SwitchStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->enterSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)V

    :try_start_0
    const-string v2, "msg.no.paren.after.switch"

    const/16 v3, 0x59

    invoke-direct {p0, v3, v2, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/SwitchStatement;->setRp(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    :goto_0
    const-string v2, "msg.no.brace.switch"

    const/16 v3, 0x56

    invoke-direct {p0, v3, v2, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->nextToken()I

    move-result v3

    iget-object v5, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v5, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v7, v5, Lorg/mozilla/javascript/TokenStream;->lineno:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x57

    if-eq v3, v8, :cond_a

    const/16 v5, 0xa2

    if-eq v3, v5, :cond_9

    const-string v9, "msg.no.colon.case"

    const/16 v10, 0x68

    const/16 v11, 0x75

    const/16 v12, 0x74

    if-eq v3, v12, :cond_5

    if-eq v3, v11, :cond_3

    :try_start_1
    const-string v0, "msg.bad.switch"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    if-eqz v2, :cond_4

    const-string v2, "msg.double.switch.default"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v10, v9, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-direct {p0, v10, v9, v4}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-object v13, v3

    move v3, v2

    move-object v2, v13

    :goto_2
    new-instance v9, Lorg/mozilla/javascript/ast/SwitchCase;

    invoke-direct {v9, v6}, Lorg/mozilla/javascript/ast/SwitchCase;-><init>(I)V

    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/ast/SwitchCase;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v9, v7}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v2

    if-eq v2, v8, :cond_8

    if-eq v2, v12, :cond_8

    if-eq v2, v11, :cond_8

    if-eqz v2, :cond_8

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v6

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v7

    if-ne v6, v7, :cond_6

    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/ast/SwitchCase;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    :goto_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/ast/SwitchCase;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/ast/SwitchStatement;->addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V

    move v2, v3

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->addChild(Lorg/mozilla/javascript/ast/AstNode;)V

    goto/16 :goto_1

    :cond_a
    iget v2, v5, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitSwitch()V

    return-object v1

    :goto_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitSwitch()V

    throw v0
.end method

.method private throwStatement()Lorg/mozilla/javascript/ast/ThrowStatement;
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "msg.bad.throw.eol"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    new-instance v3, Lorg/mozilla/javascript/ast/ThrowStatement;

    invoke-direct {v3, v1, v2}, Lorg/mozilla/javascript/ast/ThrowStatement;-><init>(ILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v3
.end method

.method private tryStatement()Lorg/mozilla/javascript/ast/TryStatement;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v2, 0x52

    if-eq v1, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    iget-object v2, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    new-instance v4, Lorg/mozilla/javascript/ast/TryStatement;

    invoke-direct {v4, v3}, Lorg/mozilla/javascript/ast/TryStatement;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    const/16 v6, 0xa2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Lorg/mozilla/javascript/Parser;->scannedComments:Ljava/util/List;

    .line 1
    invoke-static {v5, v7}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    .line 2
    check-cast v5, Lorg/mozilla/javascript/ast/Comment;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/AstNode;->setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v5

    :cond_1
    const/16 v6, 0x56

    if-eq v5, v6, :cond_2

    const-string v5, "msg.no.brace.try"

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v9

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_e

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-direct {v0, v10, v7}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v15

    if-eqz v15, :cond_d

    iget-object v8, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->lineno:I

    if-eqz v9, :cond_3

    const-string v15, "msg.catch.unreachable"

    invoke-virtual {v0, v15}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_3
    iget-object v15, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v15, v15, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v10, 0x58

    const-string v12, "msg.no.paren.catch"

    invoke-direct {v0, v10, v12, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v10, v10, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_1

    :cond_4
    const/4 v10, -0x1

    :goto_1
    const/16 v12, 0x27

    const-string v11, "msg.bad.catchcond"

    invoke-direct {v0, v12, v11, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v12, v13}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_5
    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    iget-boolean v6, v0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v6, :cond_7

    const-string v6, "eval"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "arguments"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const-string v6, "msg.bad.id.strict"

    invoke-virtual {v0, v6, v13}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v6, 0x71

    invoke-direct {v0, v6, v7}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    move/from16 v17, v9

    goto :goto_2

    :cond_8
    const/4 v6, -0x1

    const/4 v13, 0x0

    const/16 v17, 0x1

    :goto_2
    const/16 v9, 0x59

    invoke-direct {v0, v9, v11, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v9, v9, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_3

    :cond_9
    const/4 v9, -0x1

    :goto_3
    const-string v11, "msg.no.brace.catchblock"

    move-object/from16 v18, v1

    const/16 v1, 0x56

    invoke-direct {v0, v1, v11, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statements()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v11

    check-cast v11, Lorg/mozilla/javascript/ast/Block;

    invoke-static {v11}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v16

    new-instance v1, Lorg/mozilla/javascript/ast/CatchClause;

    invoke-direct {v1, v15}, Lorg/mozilla/javascript/ast/CatchClause;-><init>(I)V

    invoke-virtual {v1, v12}, Lorg/mozilla/javascript/ast/CatchClause;->setVarName(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {v1, v13}, Lorg/mozilla/javascript/ast/CatchClause;->setCatchCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v1, v11}, Lorg/mozilla/javascript/ast/CatchClause;->setBody(Lorg/mozilla/javascript/ast/Block;)V

    const/4 v11, -0x1

    if-eq v6, v11, :cond_a

    sub-int/2addr v6, v15

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/CatchClause;->setIfPosition(I)V

    :cond_a
    invoke-virtual {v1, v10, v9}, Lorg/mozilla/javascript/ast/CatchClause;->setParens(II)V

    invoke-virtual {v1, v8}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    const/16 v6, 0x57

    const-string v8, "msg.no.brace.after.body"

    invoke-direct {v0, v6, v8, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v8, v6

    goto :goto_4

    :cond_b
    move/from16 v8, v16

    :goto_4
    sub-int v6, v8, v15

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    if-nez v14, :cond_c

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v17

    move-object/from16 v1, v18

    const/16 v6, 0x56

    const/16 v10, 0x7d

    goto/16 :goto_0

    :cond_d
    move-object/from16 v18, v1

    const/16 v1, 0x7e

    goto :goto_5

    :cond_e
    move-object/from16 v18, v1

    const/16 v1, 0x7e

    if-eq v9, v1, :cond_f

    const-string v6, "msg.try.no.catchfinally"

    invoke-direct {v0, v1, v6, v7}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    :cond_f
    const/4 v14, 0x0

    :goto_5
    invoke-direct {v0, v1, v7}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v11, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Parser;->statement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v12

    invoke-static {v12}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    goto :goto_6

    :cond_10
    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_6
    sub-int/2addr v8, v3

    invoke-virtual {v4, v8}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/TryStatement;->setTryBlock(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v4, v14}, Lorg/mozilla/javascript/ast/TryStatement;->setCatchClauses(Ljava/util/List;)V

    invoke-virtual {v4, v12}, Lorg/mozilla/javascript/ast/TryStatement;->setFinallyBlock(Lorg/mozilla/javascript/ast/AstNode;)V

    const/4 v1, -0x1

    if-eq v11, v1, :cond_11

    sub-int/2addr v11, v3

    invoke-virtual {v4, v11}, Lorg/mozilla/javascript/ast/TryStatement;->setFinallyPosition(I)V

    :cond_11
    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    if-eqz v18, :cond_12

    move-object/from16 v1, v18

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_12
    return-object v4
.end method

.method private unaryExpr()Lorg/mozilla/javascript/ast/AstNode;
    .locals 6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Parser;->peekUntilNonComment(I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    const/16 v2, 0xe

    const/16 v3, 0x6c

    const/16 v4, 0x6b

    const/4 v5, 0x1

    if-eq v0, v2, :cond_6

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_5

    const/16 v2, 0x15

    if-eq v0, v2, :cond_4

    const/16 v2, 0x16

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Parser;->checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V

    return-object v2

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v2

    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v0, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v0, v4, v2, v3}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0

    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v0, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    const/16 v4, 0x1c

    invoke-direct {v0, v4, v2, v3}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0

    :cond_5
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v2, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->unaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v2

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isXmlAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->xmlInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lorg/mozilla/javascript/Parser;->memberExprTail(ZLorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_0
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->memberExpr(Z)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekTokenOrEOL()I

    move-result v2

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    new-instance v3, Lorg/mozilla/javascript/ast/UnaryExpression;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {v3, v2, v4, v0, v5}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Parser;->checkBadIncDec(Lorg/mozilla/javascript/ast/UnaryExpression;)V

    return-object v3

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0
.end method

.method private variables(IIZ)Lorg/mozilla/javascript/ast/VariableDeclaration;
    .locals 11

    new-instance v0, Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/ast/VariableDeclaration;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setType(I)Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v2, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v4, 0x54

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_4

    const/16 v4, 0x56

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x27

    const-string v4, "msg.bad.var"

    invoke-direct {p0, v1, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->createNameNode()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    iget-boolean v4, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "eval"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v7}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "arguments"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const-string v7, "msg.bad.id.strict"

    invoke-virtual {p0, v7, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v4}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    invoke-virtual {p0, p1, v4, v7}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    move v4, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->destructuringPrimaryExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v2

    instance-of v4, v1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-nez v4, :cond_5

    const-string v4, "msg.bad.assign.left"

    sub-int v7, v2, v3

    invoke-virtual {p0, v4, v3, v7}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;II)V

    :cond_5
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    move v4, v2

    move-object v2, v6

    :goto_1
    iget-object v7, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v7, v7, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v8

    const/16 v9, 0x5b

    invoke-direct {p0, v9, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->assignExpr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    :cond_6
    new-instance v9, Lorg/mozilla/javascript/ast/VariableInitializer;

    sub-int v10, v4, v3

    invoke-direct {v9, v3, v10}, Lorg/mozilla/javascript/ast/VariableInitializer;-><init>(II)V

    if-eqz v1, :cond_8

    if-nez v6, :cond_7

    iget-boolean v2, p0, Lorg/mozilla/javascript/Parser;->inForInit:Z

    if-nez v2, :cond_7

    const-string v2, "msg.destruct.assign.no.init"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v9, v1}, Lorg/mozilla/javascript/ast/VariableInitializer;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v9, v2}, Lorg/mozilla/javascript/ast/VariableInitializer;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    :goto_2
    invoke-virtual {v9, v6}, Lorg/mozilla/javascript/ast/VariableInitializer;->setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v9, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    invoke-virtual {v9, v7}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addVariable(Lorg/mozilla/javascript/ast/VariableInitializer;)V

    const/16 v1, 0x5a

    invoke-direct {p0, v1, v5}, Lorg/mozilla/javascript/Parser;->matchToken(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    sub-int/2addr v4, p2

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setIsStatement(Z)V

    return-object v0
.end method

.method private warnMissingSemi(II)V
    .locals 10

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v1, p2, v0}, Lorg/mozilla/javascript/TokenStream;->getLine(I[I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget v1, v0, v2

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    move v5, p1

    if-eqz v8, :cond_1

    sub-int v6, p2, v5

    const/4 p1, 0x0

    aget v7, v0, p1

    aget v9, v0, v2

    const-string v3, "msg.missing.semi"

    const-string v4, ""

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    sub-int/2addr p2, v5

    const-string v0, "msg.missing.semi"

    invoke-virtual {p0, v0, p1, v5, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private warnTrailingComma(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getWarnTrailingComma()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result p1

    :cond_0
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/Parser;->lineBeginningFor(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string p2, "msg.extra.trailing.comma"

    sub-int/2addr p3, p1

    invoke-virtual {p0, p2, p1, p3}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private whileLoop()Lorg/mozilla/javascript/ast/WhileLoop;
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x76

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    new-instance v1, Lorg/mozilla/javascript/ast/WhileLoop;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/ast/WhileLoop;-><init>(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v2, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->enterLoop(Lorg/mozilla/javascript/ast/Loop;)V

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->condition()Lorg/mozilla/javascript/Parser$ConditionData;

    move-result-object v2

    iget-object v3, v2, Lorg/mozilla/javascript/Parser$ConditionData;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/WhileLoop;->setCondition(Lorg/mozilla/javascript/ast/AstNode;)V

    iget v3, v2, Lorg/mozilla/javascript/Parser$ConditionData;->lp:I

    sub-int/2addr v3, v0

    iget v2, v2, Lorg/mozilla/javascript/Parser$ConditionData;->rp:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/javascript/ast/Loop;->setParens(II)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Loop;->setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->exitLoop()V

    throw v0
.end method

.method private withStatement()Lorg/mozilla/javascript/ast/WithStatement;
    .locals 9

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->consumeToken()V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->getAndResetJsDoc()Lorg/mozilla/javascript/ast/Comment;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v3, 0x58

    const-string v4, "msg.no.paren.with"

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    const/16 v7, 0x59

    const-string v8, "msg.no.paren.after.with"

    invoke-direct {p0, v7, v8, v5}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v4, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    :cond_2
    new-instance v5, Lorg/mozilla/javascript/ast/WithStatement;

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/ast/WithStatement;-><init>(I)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/Parser;->getNextStatementAfterInlineComments(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v7

    invoke-static {v7}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v5, v8}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/Node;->setJsDocNode(Lorg/mozilla/javascript/ast/Comment;)V

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/WithStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v5, v7}, Lorg/mozilla/javascript/ast/WithStatement;->setStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v5, v3, v4}, Lorg/mozilla/javascript/ast/WithStatement;->setParens(II)V

    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v5
.end method

.method private xmlElemRef(ILorg/mozilla/javascript/ast/Name;I)Lorg/mozilla/javascript/ast/XmlElemRef;
    .locals 9

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/Parser;->getNodeEnd(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result v4

    const-string v5, "msg.no.bracket.index"

    const/4 v6, 0x1

    const/16 v7, 0x55

    invoke-direct {p0, v7, v5, v6}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v4, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    move v8, v4

    move v4, v1

    move v1, v8

    :cond_1
    new-instance v5, Lorg/mozilla/javascript/ast/XmlElemRef;

    sub-int/2addr v4, v2

    invoke-direct {v5, v2, v4}, Lorg/mozilla/javascript/ast/XmlElemRef;-><init>(II)V

    invoke-virtual {v5, p2}, Lorg/mozilla/javascript/ast/XmlRef;->setNamespace(Lorg/mozilla/javascript/ast/Name;)V

    invoke-virtual {v5, p3}, Lorg/mozilla/javascript/ast/XmlRef;->setColonPos(I)V

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/ast/XmlRef;->setAtPos(I)V

    invoke-virtual {v5, v3}, Lorg/mozilla/javascript/ast/XmlElemRef;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    invoke-virtual {v5, v0, v1}, Lorg/mozilla/javascript/ast/XmlElemRef;->setBrackets(II)V

    return-object v5
.end method

.method private xmlInitializer()Lorg/mozilla/javascript/ast/AstNode;
    .locals 9

    iget v0, p0, Lorg/mozilla/javascript/Parser;->currentToken:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getFirstXMLToken()I

    move-result v0

    const/16 v2, 0x95

    const/16 v3, 0x92

    const-string v4, "msg.syntax"

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->makeErrorNode()Lorg/mozilla/javascript/ast/ErrorNode;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v5, Lorg/mozilla/javascript/ast/XmlLiteral;

    invoke-direct {v5, v1}, Lorg/mozilla/javascript/ast/XmlLiteral;-><init>(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v1, Lorg/mozilla/javascript/TokenStream;->lineno:I

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    :goto_1
    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/mozilla/javascript/ast/XmlString;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v2, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/mozilla/javascript/ast/XmlString;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    return-object v5

    :cond_3
    new-instance v0, Lorg/mozilla/javascript/ast/XmlString;

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-virtual {v1}, Lorg/mozilla/javascript/TokenStream;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lorg/mozilla/javascript/ast/XmlString;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    const/16 v0, 0x56

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->peekToken()I

    move-result v6

    const/16 v7, 0x57

    if-ne v6, v7, :cond_4

    new-instance v6, Lorg/mozilla/javascript/ast/EmptyExpression;

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v8, v8, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v8, v0

    invoke-direct {v6, v0, v8}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>(II)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->expr()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    :goto_2
    invoke-direct {p0, v7, v4, v1}, Lorg/mozilla/javascript/Parser;->mustMatchToken(ILjava/lang/String;Z)Z

    new-instance v1, Lorg/mozilla/javascript/ast/XmlExpression;

    invoke-direct {v1, v0, v6}, Lorg/mozilla/javascript/ast/XmlExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;)V

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v6}, Lorg/mozilla/javascript/TokenStream;->isXMLAttribute()Z

    move-result v6

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/XmlExpression;->setIsXmlAttribute(Z)V

    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v6, v6, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;II)V

    return-void
.end method

.method public addError(Ljava/lang/String;I)V
    .locals 2

    .line 2
    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public addError(Ljava/lang/String;II)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public addError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public addError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 5
    iget v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Parser;->syntaxErrorCount:I

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v3, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v1

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p2}, Lorg/mozilla/javascript/TokenStream;->getOffset()I

    move-result p2

    move-object v6, p1

    move v7, p2

    move v5, v1

    goto :goto_0

    :cond_1
    const-string p1, ""

    move-object v6, p1

    const/4 v5, 0x1

    const/4 v7, 0x1

    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v4, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public addStrictWarning(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public addWarning(Ljava/lang/String;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public addWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public addWarning(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->reportWarningAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->errorCollector:Lorg/mozilla/javascript/ast/IdeErrorReporter;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    invoke-interface {p1, v1, p2, p3, p4}, Lorg/mozilla/javascript/ast/IdeErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getLineno()I

    move-result v3

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {p1}, Lorg/mozilla/javascript/TokenStream;->getOffset()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public checkActivationName(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "arguments"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getActivationNames()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->getActivationNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x21

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    const/16 p2, 0x78

    if-ne p1, p2, :cond_3

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->setRequiresActivation()V

    :cond_3
    return-void
.end method

.method public checkMutableReference(Lorg/mozilla/javascript/Node;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const-string p1, "msg.bad.assign.left"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    return-object p1
.end method

.method public createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_0
    return-object p2
.end method

.method public createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 1

    .line 2
    const/16 v0, 0x27

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->checkActivationName(Ljava/lang/String;I)V

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method public createNumber(D)Lorg/mozilla/javascript/Node;
    .locals 0

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method

.method public createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/ast/Scope;

    invoke-direct {v0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    return-object v0
.end method

.method public defineSymbol(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    return-void
.end method

.method public defineSymbol(ILjava/lang/String;Z)V
    .locals 9

    .line 2
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Symbol;->getDeclType()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x6e

    const-string v4, "msg.var.redecl"

    const/16 v5, 0x7b

    const/16 v6, 0x9a

    const/16 v7, 0x9b

    if-eqz v1, :cond_9

    if-eq v2, v7, :cond_4

    if-eq p1, v7, :cond_4

    iget-object v8, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-ne v0, v8, :cond_9

    if-ne v2, v6, :cond_9

    :cond_4
    if-ne v2, v7, :cond_5

    const-string v4, "msg.const.redecl"

    goto :goto_2

    :cond_5
    if-ne v2, v6, :cond_6

    const-string v4, "msg.let.redecl"

    goto :goto_2

    :cond_6
    if-ne v2, v5, :cond_7

    goto :goto_2

    :cond_7
    if-ne v2, v3, :cond_8

    const-string v4, "msg.fn.redecl"

    goto :goto_2

    :cond_8
    const-string v4, "msg.parm.redecl"

    :goto_2
    invoke-virtual {p0, v4, p2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const/16 v0, 0x58

    if-eq p1, v0, :cond_12

    if-eq p1, v3, :cond_e

    if-eq p1, v5, :cond_e

    if-eq p1, v6, :cond_b

    if-ne p1, v7, :cond_a

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_b
    if-nez p3, :cond_d

    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p3

    const/16 v0, 0x71

    if-eq p3, v0, :cond_c

    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    instance-of p3, p3, Lorg/mozilla/javascript/ast/Loop;

    if-eqz p3, :cond_d

    :cond_c
    const-string p1, "msg.let.decl.not.in.block"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    return-void

    :cond_e
    :goto_3
    if-eqz v1, :cond_10

    if-ne v2, v5, :cond_f

    invoke-virtual {p0, v4, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    if-ne v2, v0, :cond_11

    const-string p1, "msg.var.hides.arg"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->addStrictWarning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    :cond_11
    :goto_4
    return-void

    :cond_12
    if-eqz v1, :cond_13

    const-string p3, "msg.dup.parms"

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object p3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v0, Lorg/mozilla/javascript/ast/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/ast/Symbol;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/ast/Scope;->putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    return-void
.end method

.method public destructuringArray(Lorg/mozilla/javascript/ast/ArrayLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ast/ArrayLiteral;",
            "I",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x9b

    if-ne p2, v0, :cond_0

    const/16 v0, 0x9c

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x81

    if-ne v6, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    int-to-double v7, v4

    invoke-virtual {p0, v7, v8}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v7

    const/16 v8, 0x24

    invoke-direct {v3, v8, v6, v7}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x31

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v5, v8}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {v6, v0, v7, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p4, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    invoke-virtual {p0, p2, v5, v2}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v5, v3, v6}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    return v3
.end method

.method public destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 9

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v0

    const/16 v1, 0x9f

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x27

    invoke-virtual {p0, v2, p4, p3}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    const/16 v2, 0x9a

    invoke-direct {v1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    const/4 p3, 0x1

    invoke-virtual {p0, v2, p4, p3}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    new-instance p3, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x5a

    invoke-direct {p3, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v0, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x21

    const-string v5, "msg.bad.assign.left"

    if-eq v3, v4, :cond_2

    const/16 v4, 0x24

    if-eq v3, v4, :cond_2

    const/16 v2, 0x42

    if-eq v3, v2, :cond_1

    const/16 v2, 0x43

    if-eq v3, v2, :cond_0

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move-object v4, p2

    check-cast v4, Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-object v3, p0

    move v5, p1

    move-object v6, p4

    move-object v7, p3

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/Parser;->destructuringObject(Lorg/mozilla/javascript/ast/ObjectLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move-object v4, p2

    check-cast v4, Lorg/mozilla/javascript/ast/ArrayLiteral;

    move-object v3, p0

    move v5, p1

    move-object v6, p4

    move-object v7, p3

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/Parser;->destructuringArray(Lorg/mozilla/javascript/ast/ArrayLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_2
    const/16 v3, 0x7b

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9b

    if-eq p1, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/javascript/Parser;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :goto_2
    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_4
    const/16 p1, 0x16

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->popScope()V

    throw p1
.end method

.method public destructuringObject(Lorg/mozilla/javascript/ast/ObjectLiteral;ILjava/lang/String;Lorg/mozilla/javascript/Node;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ast/ObjectLiteral;",
            "I",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/Node;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x9b

    if-ne p2, v0, :cond_0

    const/16 v0, 0x9c

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/ObjectProperty;

    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, v3, Lorg/mozilla/javascript/TokenStream;->lineno:I

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    instance-of v6, v5, Lorg/mozilla/javascript/ast/Name;

    const/16 v7, 0x21

    if-eqz v6, :cond_2

    check-cast v5, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :cond_2
    instance-of v6, v5, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/mozilla/javascript/ast/StringLiteral;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    :cond_3
    instance-of v6, v5, Lorg/mozilla/javascript/ast/NumberLiteral;

    if-eqz v6, :cond_6

    check-cast v5, Lorg/mozilla/javascript/ast/NumberLiteral;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v5

    double-to-int v5, v5

    int-to-double v5, v5

    invoke-virtual {p0, v5, v6}, Lorg/mozilla/javascript/Parser;->createNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v5

    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x24

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Parser;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_3
    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v5, 0x27

    if-ne v3, v5, :cond_4

    check-cast v2, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x31

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v2, v7}, Lorg/mozilla/javascript/Parser;->createName(ILjava/lang/String;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-direct {v3, v0, v5, v6}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p4, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    const/4 v3, -0x1

    if-eq p2, v3, :cond_5

    invoke-virtual {p0, p2, v2, v1}, Lorg/mozilla/javascript/Parser;->defineSymbol(ILjava/lang/String;Z)V

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v6, v3}, Lorg/mozilla/javascript/Parser;->destructuringAssignmentHelper(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {p4, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    :cond_5
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_7
    return v2
.end method

.method public eof()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-virtual {v0}, Lorg/mozilla/javascript/TokenStream;->eof()Z

    move-result v0

    return v0
.end method

.method public inUseStrictDirective()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    return v0
.end method

.method public insideFunction()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/Parser;->nestingOfFunction:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookupMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lookupMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    instance-of v0, p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/ast/DestructuringForm;->setIsDestructuring(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->markDestructuring(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public parse(Ljava/io/Reader;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    new-instance p2, Lorg/mozilla/javascript/TokenStream;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1, p3}, Lorg/mozilla/javascript/TokenStream;-><init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parse()Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parser reused"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    .locals 1

    .line 3
    iget-boolean v0, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    if-nez v0, :cond_1

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceURI:Ljava/lang/String;

    iget-object p2, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p2}, Lorg/mozilla/javascript/CompilerEnvirons;->isIdeMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->sourceChars:[C

    :cond_0
    new-instance p2, Lorg/mozilla/javascript/TokenStream;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1, p3}, Lorg/mozilla/javascript/TokenStream;-><init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object p2, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->parse()Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->parseFinished:Z

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parser reused"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public popScope()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-void
.end method

.method public pushScope(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Scope;->addChildScope(Lorg/mozilla/javascript/ast/Scope;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mozilla/javascript/Parser;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-void
.end method

.method public removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    :goto_0
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;II)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->ts:Lorg/mozilla/javascript/TokenStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->recoverFromErrors()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/mozilla/javascript/Parser$ParserException;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/Parser$ParserException;-><init>(Lorg/mozilla/javascript/Parser$1;)V

    throw p1
.end method

.method public setDefaultUseStrictDirective(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/javascript/Parser;->defaultUseStrictDirective:Z

    return-void
.end method

.method public setIsGenerator()V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setIsGenerator()V

    :cond_0
    return-void
.end method

.method public setRequiresActivation()V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Parser;->insideFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Parser;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    :cond_0
    return-void
.end method

.method public simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v2, 0x24

    if-eq v0, v2, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->checkMutableReference(Lorg/mozilla/javascript/Node;)V

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x45

    invoke-direct {v0, v1, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mozilla/javascript/Parser;->inUseStrictDirective:Z

    if-eqz v1, :cond_3

    const-string v1, "eval"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "arguments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "msg.bad.id.strict"

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v0

    :cond_4
    instance-of v2, p1, Lorg/mozilla/javascript/ast/PropertyGet;

    if-eqz v2, :cond_5

    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object p1

    goto :goto_0

    :cond_5
    instance-of v2, p1, Lorg/mozilla/javascript/ast/ElementGet;

    if-eqz v2, :cond_6

    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    const/16 v0, 0x23

    goto :goto_1

    :cond_7
    const/16 v0, 0x25

    :goto_1
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, v0, v2, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v1
.end method
