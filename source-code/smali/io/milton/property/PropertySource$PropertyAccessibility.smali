.class public final enum Lio/milton/property/PropertySource$PropertyAccessibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/property/PropertySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyAccessibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/property/PropertySource$PropertyAccessibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/property/PropertySource$PropertyAccessibility;

.field public static final enum READ_ONLY:Lio/milton/property/PropertySource$PropertyAccessibility;

.field public static final enum UNKNOWN:Lio/milton/property/PropertySource$PropertyAccessibility;

.field public static final enum WRITABLE:Lio/milton/property/PropertySource$PropertyAccessibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/milton/property/PropertySource$PropertyAccessibility;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/property/PropertySource$PropertyAccessibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/property/PropertySource$PropertyAccessibility;->UNKNOWN:Lio/milton/property/PropertySource$PropertyAccessibility;

    new-instance v1, Lio/milton/property/PropertySource$PropertyAccessibility;

    const-string v3, "READ_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/property/PropertySource$PropertyAccessibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/property/PropertySource$PropertyAccessibility;->READ_ONLY:Lio/milton/property/PropertySource$PropertyAccessibility;

    new-instance v3, Lio/milton/property/PropertySource$PropertyAccessibility;

    const-string v5, "WRITABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/milton/property/PropertySource$PropertyAccessibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/milton/property/PropertySource$PropertyAccessibility;->WRITABLE:Lio/milton/property/PropertySource$PropertyAccessibility;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/milton/property/PropertySource$PropertyAccessibility;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/milton/property/PropertySource$PropertyAccessibility;->$VALUES:[Lio/milton/property/PropertySource$PropertyAccessibility;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/property/PropertySource$PropertyAccessibility;
    .locals 1

    const-class v0, Lio/milton/property/PropertySource$PropertyAccessibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/property/PropertySource$PropertyAccessibility;

    return-object p0
.end method

.method public static values()[Lio/milton/property/PropertySource$PropertyAccessibility;
    .locals 1

    sget-object v0, Lio/milton/property/PropertySource$PropertyAccessibility;->$VALUES:[Lio/milton/property/PropertySource$PropertyAccessibility;

    invoke-virtual {v0}, [Lio/milton/property/PropertySource$PropertyAccessibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/property/PropertySource$PropertyAccessibility;

    return-object v0
.end method
