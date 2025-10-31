.class public Lorg/apache/velocity/util/introspection/UberspectImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/util/introspection/Uberspect;
.implements Lorg/apache/velocity/util/RuntimeServicesAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;,
        Lorg/apache/velocity/util/introspection/UberspectImpl$VelGetterImpl;,
        Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;
    }
.end annotation


# instance fields
.field protected conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

.field protected introspector:Lorg/apache/velocity/util/introspection/Introspector;

.field protected log:Lorg/slf4j/Logger;

.field protected rsvc:Lorg/apache/velocity/runtime/RuntimeServices;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNeededConverters([Ljava/lang/Class;[Ljava/lang/Object;)[Lorg/apache/velocity/util/introspection/Converter;
    .locals 6

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p1

    array-length v2, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p2, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    aget-object v5, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/apache/velocity/util/introspection/ConversionHandler;->getNeededConverter(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/velocity/util/introspection/Converter;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    array-length v1, p1

    new-array v1, v1, [Lorg/apache/velocity/util/introspection/Converter;

    :cond_2
    aput-object v3, v1, v2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public getConversionHandler()Lorg/apache/velocity/util/introspection/ConversionHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    return-object v0
.end method

.method public getIterator(Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Ljava/util/Iterator;
    .locals 5

    const-string v0, "Error invoking the method \'iterator\' on class \'"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Lorg/apache/velocity/util/ArrayIterator;

    invoke-direct {p2, p1}, Lorg/apache/velocity/util/ArrayIterator;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    instance-of v1, p1, Ljava/lang/Iterable;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v1, p1, Ljava/util/Iterator;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    const-string v1, "The iterative object in the #foreach() loop at {} is of type java.util.Iterator.  Because it is not resettable, if used in more than once it may lead to unexpected results."

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Iterator;

    return-object p1

    :cond_3
    instance-of v1, p1, Ljava/util/Enumeration;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    const-string v1, "The iterative object in the #foreach() loop at {} is of type java.util.Enumeration.  Because it is not resettable, if used in more than once it may lead to unexpected results."

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/velocity/util/EnumerationIterator;

    check-cast p1, Ljava/util/Enumeration;

    invoke-direct {p2, p1}, Lorg/apache/velocity/util/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object p2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "iterator"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/Iterator;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v3, Lorg/apache/velocity/exception/VelocityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_5
    iget-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    const-string v0, "iterator() method of reference in #foreach loop at {} does not return a true Iterator."

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    const-string v0, "Could not determine type of iterator in #foreach loop at {}"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelMethod;
    .locals 3

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance p1, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lorg/apache/velocity/util/introspection/UberspectImpl;->getNeededConverters([Ljava/lang/Class;[Ljava/lang/Object;)[Lorg/apache/velocity/util/introspection/Converter;

    move-result-object p2

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;-><init>(Lorg/apache/velocity/util/introspection/UberspectImpl;Ljava/lang/reflect/Method;Z[Lorg/apache/velocity/util/introspection/Converter;)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    const-class v0, Lorg/apache/velocity/util/ArrayListWrapper;

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    invoke-direct {p0, p4, p3}, Lorg/apache/velocity/util/introspection/UberspectImpl;->getNeededConverters([Ljava/lang/Class;[Ljava/lang/Object;)[Lorg/apache/velocity/util/introspection/Converter;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p2, p0, p1, p4, p3}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;-><init>(Lorg/apache/velocity/util/introspection/UberspectImpl;Ljava/lang/reflect/Method;Z[Lorg/apache/velocity/util/introspection/Converter;)V

    return-object p2

    :cond_2
    const-class v2, Ljava/lang/Class;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/velocity/util/introspection/Introspector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    invoke-direct {p0, p4, p3}, Lorg/apache/velocity/util/introspection/UberspectImpl;->getNeededConverters([Ljava/lang/Class;[Ljava/lang/Object;)[Lorg/apache/velocity/util/introspection/Converter;

    move-result-object p3

    invoke-direct {p2, p0, p1, v1, p3}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelMethodImpl;-><init>(Lorg/apache/velocity/util/introspection/UberspectImpl;Ljava/lang/reflect/Method;Z[Lorg/apache/velocity/util/introspection/Converter;)V

    return-object p2

    :cond_3
    return-object p4
.end method

.method public getPropertyGet(Ljava/lang/Object;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertyGet;
    .locals 8

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-direct {v1, v2, v3, v0, p2}, Lorg/apache/velocity/runtime/parser/node/PropertyExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    invoke-direct {v1, v2, p1, p2}, Lorg/apache/velocity/runtime/parser/node/MapGetExecutor;-><init>(Lorg/slf4j/Logger;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Lorg/apache/velocity/runtime/parser/node/GetExecutor;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-direct {v1, v2, v3, v0, p2}, Lorg/apache/velocity/runtime/parser/node/GetExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Lorg/apache/velocity/runtime/parser/node/BooleanPropertyExecutor;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    invoke-direct {v1, v2, v3, v0, p2}, Lorg/apache/velocity/runtime/parser/node/BooleanPropertyExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance v1, Lorg/apache/velocity/runtime/parser/node/BooleanPropertyExecutor;

    iget-object v3, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    iget-object v4, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    const-class v5, Lorg/apache/velocity/util/ArrayListWrapper;

    const/4 v7, 0x1

    move-object v2, v1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/velocity/runtime/parser/node/BooleanPropertyExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p3, Lorg/apache/velocity/util/introspection/UberspectImpl$VelGetterImpl;

    invoke-direct {p3, v1}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelGetterImpl;-><init>(Lorg/apache/velocity/runtime/parser/node/AbstractExecutor;)V

    :cond_5
    return-object p3
.end method

.method public getPropertySet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/velocity/util/introspection/Info;)Lorg/apache/velocity/util/introspection/VelPropertySet;
    .locals 7

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v6, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/node/SetPropertyExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v6, Lorg/apache/velocity/runtime/parser/node/MapSetExecutor;

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    invoke-direct {v6, v0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/MapSetExecutor;-><init>(Lorg/slf4j/Logger;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v6, Lorg/apache/velocity/runtime/parser/node/PutExecutor;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/runtime/parser/node/PutExecutor;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/Introspector;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6}, Lorg/apache/velocity/runtime/parser/node/SetExecutor;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p4, Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;

    invoke-direct {p4, v6}, Lorg/apache/velocity/util/introspection/UberspectImpl$VelSetterImpl;-><init>(Lorg/apache/velocity/runtime/parser/node/SetExecutor;)V

    :cond_3
    return-object p4
.end method

.method public init()V
    .locals 3

    new-instance v0, Lorg/apache/velocity/util/introspection/Introspector;

    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    invoke-direct {v0, v1, v2}, Lorg/apache/velocity/util/introspection/Introspector;-><init>(Lorg/slf4j/Logger;Lorg/apache/velocity/util/introspection/ConversionHandler;)V

    iput-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->introspector:Lorg/apache/velocity/util/introspection/Introspector;

    return-void
.end method

.method public setLog(Lorg/slf4j/Logger;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 4

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 4
    .line 5
    const-string v1, "rendering"

    .line 6
    .line 7
    invoke-interface {p1, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    .line 12
    .line 13
    const-string v1, "runtime.conversion.handler.class"

    .line 14
    .line 15
    invoke-interface {p1, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const-string v1, "none"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/apache/velocity/util/ClassUtils;->getNewInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    instance-of v1, v0, Lorg/apache/velocity/util/introspection/ConversionHandler;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, Lorg/apache/velocity/util/introspection/ConversionHandler;

    .line 39
    .line 40
    iput-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string v0, "The specified class for ResourceManager ("

    .line 44
    .line 45
    const-string v1, ") does not implement "

    .line 46
    .line 47
    invoke-static {v0, p1, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-class v0, Lorg/apache/velocity/util/introspection/ConversionHandler;

    .line 52
    .line 53
    const-string v1, "; Velocity is not initialized correctly."

    .line 54
    .line 55
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    .line 60
    .line 61
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    .line 65
    .line 66
    invoke-direct {v0, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 72
    .line 73
    const-string v3, "Cannot access class \'"

    .line 74
    .line 75
    invoke-static {v3, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v2, p1, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v2

    .line 83
    :catch_1
    move-exception v1

    .line 84
    new-instance v2, Lorg/apache/velocity/exception/VelocityException;

    .line 85
    .line 86
    const-string v3, "Could not instantiate class \'"

    .line 87
    .line 88
    invoke-static {v3, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v2, p1, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw v2

    .line 96
    :catch_2
    move-exception v0

    .line 97
    const-string v1, "The specified class for ConversionHandler ("

    .line 98
    .line 99
    const-string v2, ") does not exist or is not accessible to the current classloader."

    .line 100
    .line 101
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object v1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->log:Lorg/slf4j/Logger;

    .line 106
    .line 107
    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    .line 111
    .line 112
    invoke-direct {v1, p1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lorg/apache/velocity/util/introspection/UberspectImpl;->conversionHandler:Lorg/apache/velocity/util/introspection/ConversionHandler;

    .line 118
    .line 119
    :goto_1
    return-void
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
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
.end method
