.class public final enum Lorg/apache/commons/codec/language/bm/RuleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/codec/language/bm/RuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/codec/language/bm/RuleType;

.field public static final enum APPROX:Lorg/apache/commons/codec/language/bm/RuleType;

.field public static final enum EXACT:Lorg/apache/commons/codec/language/bm/RuleType;

.field public static final enum RULES:Lorg/apache/commons/codec/language/bm/RuleType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/commons/codec/language/bm/RuleType;

    const/4 v1, 0x0

    const-string v2, "approx"

    const-string v3, "APPROX"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/RuleType;->APPROX:Lorg/apache/commons/codec/language/bm/RuleType;

    new-instance v2, Lorg/apache/commons/codec/language/bm/RuleType;

    const/4 v3, 0x1

    const-string v4, "exact"

    const-string v5, "EXACT"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/codec/language/bm/RuleType;->EXACT:Lorg/apache/commons/codec/language/bm/RuleType;

    new-instance v4, Lorg/apache/commons/codec/language/bm/RuleType;

    const/4 v5, 0x2

    const-string v6, "rules"

    const-string v7, "RULES"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/commons/codec/language/bm/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/codec/language/bm/RuleType;->RULES:Lorg/apache/commons/codec/language/bm/RuleType;

    const/4 v6, 0x3

    new-array v6, v6, [Lorg/apache/commons/codec/language/bm/RuleType;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lorg/apache/commons/codec/language/bm/RuleType;->$VALUES:[Lorg/apache/commons/codec/language/bm/RuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/codec/language/bm/RuleType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/RuleType;
    .locals 1

    const-class v0, Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/codec/language/bm/RuleType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/codec/language/bm/RuleType;
    .locals 1

    sget-object v0, Lorg/apache/commons/codec/language/bm/RuleType;->$VALUES:[Lorg/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v0}, [Lorg/apache/commons/codec/language/bm/RuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/codec/language/bm/RuleType;

    return-object v0
.end method
