.class final enum Lorg/simpleframework/xml/transform/DateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/transform/DateType$DateFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/transform/DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/transform/DateType;

.field public static final enum FULL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum LONG:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum NORMAL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum SHORT:Lorg/simpleframework/xml/transform/DateType;


# instance fields
.field private format:Lorg/simpleframework/xml/transform/DateType$DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd HH:mm:ss.S z"

    const-string v3, "FULL"

    invoke-direct {v0, v3, v1, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    new-instance v2, Lorg/simpleframework/xml/transform/DateType;

    const/4 v3, 0x1

    const-string v4, "yyyy-MM-dd HH:mm:ss z"

    const-string v5, "LONG"

    invoke-direct {v2, v5, v3, v4}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    new-instance v4, Lorg/simpleframework/xml/transform/DateType;

    const/4 v5, 0x2

    const-string v6, "yyyy-MM-dd z"

    const-string v7, "NORMAL"

    invoke-direct {v4, v7, v5, v6}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    new-instance v6, Lorg/simpleframework/xml/transform/DateType;

    const/4 v7, 0x3

    const-string v8, "yyyy-MM-dd"

    const-string v9, "SHORT"

    invoke-direct {v6, v9, v7, v8}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    const/4 v8, 0x4

    new-array v8, v8, [Lorg/simpleframework/xml/transform/DateType;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

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

    new-instance p1, Lorg/simpleframework/xml/transform/DateType$DateFormat;

    invoke-direct {p1, p3}, Lorg/simpleframework/xml/transform/DateType$DateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    return-void
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    invoke-static {p0}, Lorg/simpleframework/xml/transform/DateType;->getType(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;

    move-result-object v0

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DateType;->getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/transform/DateType$DateFormat;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    return-object v0
.end method

.method public static getText(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DateType;->getFormat()Lorg/simpleframework/xml/transform/DateType$DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/transform/DateType$DateFormat;->getText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x17

    if-le p0, v0, :cond_0

    sget-object p0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    return-object p0

    :cond_0
    const/16 v0, 0x14

    if-le p0, v0, :cond_1

    sget-object p0, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    return-object p0

    :cond_1
    const/16 v0, 0xb

    if-le p0, v0, :cond_2

    sget-object p0, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    return-object p0
.end method
