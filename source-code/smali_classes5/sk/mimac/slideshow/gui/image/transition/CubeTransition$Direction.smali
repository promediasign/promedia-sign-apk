.class public final enum Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/transition/CubeTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

.field public static final enum FROM_BOTTOM:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

.field public static final enum FROM_LEFT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

.field public static final enum FROM_RIGHT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

.field public static final enum FROM_TOP:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_LEFT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_TOP:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_RIGHT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_BOTTOM:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    const-string v1, "FROM_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_LEFT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    const-string v1, "FROM_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_TOP:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    const-string v1, "FROM_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_RIGHT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    const-string v1, "FROM_BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_BOTTOM:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-static {}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->$values()[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->$VALUES:[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->$VALUES:[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    return-object v0
.end method
