.class public final enum Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FUNCTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

.field public static final enum INTERCEPT:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

.field public static final enum SLOPE:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    const-string v1, "INTERCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->INTERCEPT:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    new-instance v1, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    const-string v3, "SLOPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->SLOPE:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->$VALUES:[Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->$VALUES:[Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    return-object v0
.end method
