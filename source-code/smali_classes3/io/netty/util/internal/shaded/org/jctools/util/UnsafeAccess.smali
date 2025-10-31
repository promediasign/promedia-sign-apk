.class public Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SUPPORTS_GET_AND_ADD_LONG:Z

.field public static final SUPPORTS_GET_AND_SET_REF:Z

.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-static {}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->hasGetAndSetSupport()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->SUPPORTS_GET_AND_SET_REF:Z

    invoke-static {}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->hasGetAndAddLongSupport()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->SUPPORTS_GET_AND_ADD_LONG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 1

    :try_start_0
    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lsun/misc/Unsafe;

    const-string v3, "theUnsafe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-class v2, Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static hasGetAndAddLongSupport()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lsun/misc/Unsafe;

    const-string v3, "getAndAddLong"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method private static hasGetAndSetSupport()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lsun/misc/Unsafe;

    const-string v3, "getAndSetObject"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v0

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method
