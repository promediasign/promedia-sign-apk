.class public Lcom/sun/jna/internal/ReflectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static CONSTRUCTOR_LOOKUP_CLASS:Ljava/lang/reflect/Constructor;

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final METHOD_HANDLES_BIND_TO:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_INVOKE_WITH_ARGUMENTS:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_LOOKUP:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_LOOKUP_FIND_SPECIAL:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_LOOKUP_IN:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_PRIVATE_LOOKUP_IN:Ljava/lang/reflect/Method;

.field private static final METHOD_IS_DEFAULT:Ljava/lang/reflect/Method;

.field private static final METHOD_TYPE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v3, Lcom/sun/jna/internal/ReflectionUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sput-object v3, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    const-string v3, "java.lang.invoke.MethodHandles"

    invoke-static {v3}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "java.lang.invoke.MethodHandle"

    invoke-static {v4}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "java.lang.invoke.MethodHandles$Lookup"

    invoke-static {v5}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "java.lang.invoke.MethodType"

    invoke-static {v6}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "isDefault"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, Ljava/lang/reflect/Method;

    invoke-static {v9, v7, v8}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_IS_DEFAULT:Ljava/lang/reflect/Method;

    const-string v7, "lookup"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-static {v3, v7, v8}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP:Ljava/lang/reflect/Method;

    const-string v7, "in"

    const-class v8, Ljava/lang/Class;

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v8, v10, v2

    invoke-static {v5, v7, v10}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_IN:Ljava/lang/reflect/Method;

    const-string v7, "unreflectSpecial"

    new-array v10, v0, [Ljava/lang/Class;

    aput-object v9, v10, v2

    aput-object v8, v10, v1

    invoke-static {v5, v7, v10}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL:Ljava/lang/reflect/Method;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v8, v7, v2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v1

    aput-object v6, v7, v0

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-string v9, "findSpecial"

    invoke-static {v5, v9, v7}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_FIND_SPECIAL:Ljava/lang/reflect/Method;

    new-array v7, v1, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v7, v2

    const-string v9, "bindTo"

    invoke-static {v4, v9, v7}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_BIND_TO:Ljava/lang/reflect/Method;

    new-array v7, v1, [Ljava/lang/Class;

    const-class v9, [Ljava/lang/Object;

    aput-object v9, v7, v2

    const-string v9, "invokeWithArguments"

    invoke-static {v4, v9, v7}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_INVOKE_WITH_ARGUMENTS:Ljava/lang/reflect/Method;

    const-string v4, "privateLookupIn"

    new-array v7, v0, [Ljava/lang/Class;

    aput-object v8, v7, v2

    aput-object v5, v7, v1

    invoke-static {v3, v4, v7}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_PRIVATE_LOOKUP_IN:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v8, v0, v2

    const-class v2, [Ljava/lang/Class;

    aput-object v2, v0, v1

    const-string v1, "methodType"

    invoke-static {v6, v1, v0}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_TYPE:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLookup()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static createPrivateLookupIn(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_PRIVATE_LOOKUP_IN:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getConstructorLookupClass()Ljava/lang/reflect/Constructor;
    .locals 4

    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->CONSTRUCTOR_LOOKUP_CLASS:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    const-string v0, "java.lang.invoke.MethodHandles$Lookup"

    invoke-static {v0}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/sun/jna/internal/ReflectionUtils;->lookupDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/internal/ReflectionUtils;->CONSTRUCTOR_LOOKUP_CLASS:Ljava/lang/reflect/Constructor;

    :cond_0
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->CONSTRUCTOR_LOOKUP_CLASS:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public static getMethodHandle(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/sun/jna/internal/ReflectionUtils;->createLookup()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sun/jna/internal/ReflectionUtils;->createPrivateLookupIn(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/jna/internal/ReflectionUtils;->mhViaFindSpecial(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lcom/sun/jna/internal/ReflectionUtils;->getConstructorLookupClass()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/jna/internal/ReflectionUtils;->mhViaUnreflectSpecial(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeDefaultMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_BIND_TO:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_INVOKE_WITH_ARGUMENTS:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isDefault(Ljava/lang/reflect/Method;)Z
    .locals 2

    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_IS_DEFAULT:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static lookupClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to lookup class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs lookupDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Failed to lookup method: <init>#{1}({2})"

    if-nez p0, :cond_0

    sget-object v5, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    aput-object p1, v1, v2

    invoke-virtual {v5, v6, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    sget-object v5, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    aput-object p1, v1, v2

    invoke-virtual {v5, v6, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method private static varargs lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-string v5, "Failed to lookup method: {0}#{1}({2})"

    if-nez p0, :cond_0

    sget-object v6, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-virtual {v6, v7, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object v6, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-virtual {v6, v7, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method private static mhViaFindSpecial(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_FIND_SPECIAL:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_TYPE:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v8

    aput-object v2, v5, v4

    aput-object v3, v5, v6

    const/4 v1, 0x3

    aput-object p1, v5, v1

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static mhViaUnreflectSpecial(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_IN:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v1, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
