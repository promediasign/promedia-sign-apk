.class public final Lorg/mozilla/javascript/JavaAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/IdFunctionCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;
    }
.end annotation


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final Id_JavaAdapter:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "JavaAdapter"

    sput-object v0, Lorg/mozilla/javascript/JavaAdapter;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/JavaAdapter;->lambda$runScript$1(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    return-object p0
.end method

.method public static appendMethodSignature([Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/StringBuilder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/StringBuilder;",
            ")I"
        }
    .end annotation

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-static {p2, v3}, Lorg/mozilla/javascript/JavaAdapter;->appendTypeString(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lorg/mozilla/javascript/JavaAdapter;->appendTypeString(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;

    return v0
.end method

.method private static appendOverridableMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/JavaAdapter;->getMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static appendTypeString(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x5a

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const/16 p1, 0x4a

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    goto :goto_1

    :goto_2
    return-object p0
.end method

.method public static synthetic b(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lorg/mozilla/javascript/JavaAdapter;->lambda$callMethod$0(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static callMethod(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object p0

    :cond_1
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-nez v0, :cond_2

    invoke-static {p0, p2, v1, p1, p3}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->doCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v7, Lorg/mozilla/javascript/g;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/g;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertResult(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createAdapterCode(Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/String;)[B
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/ObjToIntMap;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p3

    move-object/from16 v1, p4

    new-instance v9, Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<adapter>"

    invoke-direct {v9, v8, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "factory"

    const-string v3, "Lorg/mozilla/javascript/ContextFactory;"

    const/16 v4, 0x11

    invoke-virtual {v9, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v2, "delegee"

    const-string v3, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v9, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v2, "self"

    invoke-virtual {v9, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    if-nez v7, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v7

    move v11, v2

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_2

    aget-object v3, v7, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInterface(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {v9, v8, v12, v5}, Lorg/mozilla/javascript/JavaAdapter;->generateCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v9, v8, v12}, Lorg/mozilla/javascript/JavaAdapter;->generateSerialCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-static {v9, v8, v12, v1}, Lorg/mozilla/javascript/JavaAdapter;->generateEmptyCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v13, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v13}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    new-instance v14, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v14}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v11, :cond_b

    aget-object v1, v7, v15

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v5, 0x0

    :goto_4
    array-length v1, v6

    if-ge v5, v1, :cond_a

    aget-object v1, v6, v5

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lio/netty/handler/ssl/a;->x(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    :goto_5
    move/from16 v18, v5

    move-object/from16 v16, v6

    goto :goto_7

    :cond_8
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v2, p2

    :try_start_0
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    goto :goto_6

    :cond_9
    move-object/from16 v2, p2

    :goto_6
    invoke-static {v1, v3}, Lorg/mozilla/javascript/JavaAdapter;->getMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    .line 1
    invoke-static {v4, v10}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2
    invoke-virtual {v13, v10}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    const/16 v17, 0x1

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move-object v3, v4

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->generateMethod(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)V

    const/4 v1, 0x0

    invoke-virtual {v13, v10, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    move-object/from16 v2, v19

    invoke-virtual {v14, v2, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :goto_7
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v16

    goto :goto_4

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_b
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/JavaAdapter;->getOverridableMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    :goto_8
    array-length v1, v10

    if-ge v11, v1, :cond_f

    aget-object v7, v10, v11

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v15

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v15, :cond_e

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    move-object/from16 p2, v10

    :cond_d
    const/4 v8, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/mozilla/javascript/JavaAdapter;->getMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v6, v4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v13, v3}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    const/16 v17, 0x1

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v8, v3

    move-object v3, v6

    move-object/from16 v18, v4

    move-object v4, v5

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    move-object/from16 p2, v10

    move-object v10, v6

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->generateMethod(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)V

    const/4 v6, 0x0

    invoke-virtual {v13, v8, v6}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    invoke-virtual {v14, v10, v6}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    if-nez v15, :cond_d

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v10

    move-object/from16 v5, v18

    const/4 v8, 0x0

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/JavaAdapter;->generateSuper(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    new-instance v6, Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    invoke-direct {v6, v0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;-><init>(Lorg/mozilla/javascript/ObjToIntMap;)V

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    :goto_b
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getValue()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_c
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ge v1, v0, :cond_11

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/JavaAdapter;->generateMethod(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)V

    :goto_d
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    goto :goto_b

    :cond_12
    invoke-virtual {v9}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static createAdapterWrapper(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 4

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/NativeJavaObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, p1, v2, v3}, Lorg/mozilla/javascript/NativeJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V

    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object v1
.end method

.method private static doCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v1, v1

    and-long/2addr v1, p5

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    aget-object v1, p4, v0

    instance-of v2, v1, Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v1, v3}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p4, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p3, p0, p1, p2, p4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static generateCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/classfile/ClassFileWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length v0, p3

    const/16 v1, 0xb7

    const-string v2, "<init>"

    const/4 v3, 0x1

    const/16 v4, 0x2a

    const/4 v5, 0x3

    if-nez v0, :cond_0

    const-string p3, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;)V"

    invoke-virtual {p0, v2, p3, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p3, "()V"

    :goto_0
    invoke-virtual {p0, v1, p2, v2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    array-length v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_1

    aget-object v10, p3, v9

    invoke-static {v0, v10}, Lorg/mozilla/javascript/JavaAdapter;->appendTypeString(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const-string v7, ")V"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v7, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    array-length v7, p3

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, p3, v8

    invoke-static {p0, v5, v9}, Lorg/mozilla/javascript/JavaAdapter;->generatePushParam(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I

    move-result v9

    add-int/2addr v5, v9

    int-to-short v5, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :goto_3
    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0x2b

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p3, "delegee"

    const/16 v0, 0xb5

    const-string v1, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v0, p1, p3, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p3, 0x2c

    invoke-virtual {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p3, "factory"

    const-string v2, "Lorg/mozilla/javascript/ContextFactory;"

    invoke-virtual {p0, v0, p1, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p2, "createAdapterWrapper"

    const-string p3, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    const/16 v2, 0xb8

    const-string v3, "org/mozilla/javascript/JavaAdapter"

    invoke-virtual {p0, v2, v3, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "self"

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateEmptyCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "<init>"

    const-string v1, "()V"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v3, 0x2a

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v4, 0xb7

    invoke-virtual {p0, v4, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p2, "factory"

    const-string v2, "Lorg/mozilla/javascript/ContextFactory;"

    const/16 v5, 0xb5

    invoke-virtual {p0, v5, p1, p2, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xbb

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 p2, 0x59

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v4, p3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "runScript"

    const-string p3, "(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/Scriptable;"

    const/16 v0, 0xb8

    const-string v1, "org/mozilla/javascript/JavaAdapter"

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x4c

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0x2b

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p3, "delegee"

    const-string v2, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v5, p1, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p2, "createAdapterWrapper"

    const-string p3, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "self"

    invoke-virtual {p0, v5, p1, p2, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateMethod(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/classfile/ClassFileWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4, v0}, Lorg/mozilla/javascript/JavaAdapter;->appendMethodSignature([Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/StringBuilder;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v3, "factory"

    const-string v4, "Lorg/mozilla/javascript/ContextFactory;"

    const/16 v5, 0xb4

    invoke-virtual {p0, v5, p1, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v3, "self"

    const-string v4, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v5, p1, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v0, "delegee"

    invoke-virtual {p0, v5, p1, v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const-string p1, "getFunction"

    const-string p2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;"

    const/16 v0, 0xb8

    const-string v3, "org/mozilla/javascript/JavaAdapter"

    invoke-virtual {p0, v0, v3, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    array-length p1, p3

    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/JavaAdapter;->generatePushWrappedArgs(Lorg/mozilla/classfile/ClassFileWriter;[Ljava/lang/Class;I)V

    array-length p1, p3

    const/16 p2, 0x40

    if-gt p1, p2, :cond_2

    const-wide/16 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p3

    if-eq v4, v5, :cond_1

    aget-object v5, p3, v4

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_0

    shl-int v5, v2, v4

    int-to-long v5, v5

    or-long/2addr p1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(J)V

    const-string p1, "callMethod"

    const-string p2, "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;"

    invoke-virtual {p0, v0, v3, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p4, p5}, Lorg/mozilla/javascript/JavaAdapter;->generateReturnResult(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/Class;Z)V

    int-to-short p1, v1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void

    :cond_2
    const-string p0, "JavaAdapter can not subclass methods with more then 64 arguments."

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method private static generatePopResult(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/classfile/ClassFileWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_2

    const/16 v0, 0x69

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x73

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0xaf

    goto :goto_0

    :cond_0
    const/16 p1, 0xad

    goto :goto_0

    :cond_1
    :pswitch_1
    const/16 p1, 0xac

    goto :goto_0

    :cond_2
    const/16 p1, 0xae

    goto :goto_0

    :cond_3
    const/16 p1, 0xb0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static generatePushParam(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/classfile/ClassFileWriter;",
            "I",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    return v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x66

    if-eq p2, v0, :cond_3

    const/16 v0, 0x69

    if-eq p2, v0, :cond_2

    const/16 v0, 0x6c

    const/4 v2, 0x2

    if-eq p2, v0, :cond_1

    const/16 v0, 0x73

    if-eq p2, v0, :cond_2

    const/16 v0, 0x7a

    if-eq p2, v0, :cond_2

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLLoad(I)V

    return v2

    :cond_2
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addFLoad(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static generatePushWrappedArgs(Lorg/mozilla/classfile/ClassFileWriter;[Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/classfile/ClassFileWriter;",
            "[",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 p2, 0xbd

    const-string v0, "java/lang/Object"

    invoke-virtual {p0, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x59

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    aget-object v1, p1, v0

    invoke-static {p0, p2, v1}, Lorg/mozilla/javascript/JavaAdapter;->generateWrapArg(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I

    move-result v1

    add-int/2addr p2, v1

    const/16 v1, 0x53

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateReturnResult(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/Class;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/classfile/ClassFileWriter;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x57

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0xb1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    const/16 v1, 0xac

    .line 20
    .line 21
    const-string v2, "org/mozilla/javascript/Context"

    .line 22
    .line 23
    const/16 v3, 0xb8

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    const-string p1, "toBoolean"

    .line 28
    .line 29
    const-string p2, "(Ljava/lang/Object;)Z"

    .line 30
    .line 31
    invoke-virtual {p0, v3, v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    const-string p1, "toString"

    .line 44
    .line 45
    const-string p2, "(Ljava/lang/Object;)Ljava/lang/String;"

    .line 46
    .line 47
    invoke-virtual {p0, v3, v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x3

    .line 51
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 52
    .line 53
    .line 54
    const-string p1, "charAt"

    .line 55
    .line 56
    const-string p2, "(I)C"

    .line 57
    .line 58
    const/16 v0, 0xb6

    .line 59
    .line 60
    const-string v2, "java/lang/String"

    .line 61
    .line 62
    invoke-virtual {p0, v0, v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_8

    .line 71
    .line 72
    const-string p2, "toNumber"

    .line 73
    .line 74
    const-string v0, "(Ljava/lang/Object;)D"

    .line 75
    .line 76
    invoke-virtual {p0, v3, v2, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    const/16 v0, 0x62

    .line 89
    .line 90
    if-eq p2, v0, :cond_7

    .line 91
    .line 92
    const/16 v0, 0x64

    .line 93
    .line 94
    if-eq p2, v0, :cond_6

    .line 95
    .line 96
    const/16 v0, 0x66

    .line 97
    .line 98
    if-eq p2, v0, :cond_5

    .line 99
    .line 100
    const/16 v0, 0x69

    .line 101
    .line 102
    if-eq p2, v0, :cond_7

    .line 103
    .line 104
    const/16 v0, 0x6c

    .line 105
    .line 106
    if-eq p2, v0, :cond_4

    .line 107
    .line 108
    const/16 v0, 0x73

    .line 109
    .line 110
    if-ne p2, v0, :cond_3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    const-string p2, "Unexpected return type "

    .line 116
    .line 117
    invoke-static {p2, p1}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_4
    const/16 p1, 0x8f

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 128
    .line 129
    .line 130
    const/16 p1, 0xad

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    const/16 p1, 0x90

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 136
    .line 137
    .line 138
    const/16 p1, 0xae

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    const/16 p1, 0xaf

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    :goto_1
    const/16 p1, 0x8e

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p2, :cond_9

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string p2, "forName"

    .line 163
    .line 164
    const-string v0, "(Ljava/lang/String;)Ljava/lang/Class;"

    .line 165
    .line 166
    const-string v1, "java/lang/Class"

    .line 167
    .line 168
    invoke-virtual {p0, v3, v1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string p2, "convertResult"

    .line 172
    .line 173
    const-string v0, "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;"

    .line 174
    .line 175
    const-string v1, "org/mozilla/javascript/JavaAdapter"

    .line 176
    .line 177
    invoke-virtual {p0, v3, v1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_9
    const/16 p2, 0xc0

    .line 181
    .line 182
    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/16 p1, 0xb0

    .line 186
    .line 187
    :goto_2
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 188
    .line 189
    .line 190
    :goto_3
    return-void
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
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
.end method

.method private static generateSerialCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V"

    const/4 v1, 0x1

    const-string v2, "<init>"

    invoke-virtual {p0, v2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v1, 0xb7

    const-string v3, "()V"

    invoke-virtual {p0, v1, p2, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0x2b

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p2, "factory"

    const-string v1, "Lorg/mozilla/javascript/ContextFactory;"

    const/16 v2, 0xb5

    invoke-virtual {p0, v2, p1, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0x2c

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p2, "delegee"

    const-string v1, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v2, p1, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0x2d

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p2, "self"

    invoke-virtual {p0, v2, p1, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateSuper(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/classfile/ClassFileWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "super$"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p4, v0}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 p1, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    array-length p1, p5

    const/4 v2, 0x1

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v3, p5, v1

    invoke-static {p0, v2, v3}, Lorg/mozilla/javascript/JavaAdapter;->generatePushParam(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xb7

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, p6}, Lorg/mozilla/javascript/JavaAdapter;->generatePopResult(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_1
    add-int/2addr v2, v0

    int-to-short p1, v2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateWrapArg(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/classfile/ClassFileWriter;",
            "I",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 p2, 0x19

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "<init>"

    const/16 v3, 0xb7

    const/16 v4, 0x59

    const/16 v5, 0xbb

    const/16 v6, 0x15

    if-ne p2, v0, :cond_1

    const-string p2, "java/lang/Boolean"

    invoke-virtual {p0, v5, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v6, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const-string p1, "(Z)V"

    invoke-virtual {p0, v3, p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, v6, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const-string p1, "valueOf"

    const-string p2, "(C)Ljava/lang/String;"

    const/16 v0, 0xb8

    const-string v2, "java/lang/String"

    invoke-virtual {p0, v0, v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v0, "java/lang/Double"

    invoke-virtual {p0, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v4, 0x62

    if-eq p2, v4, :cond_6

    const/16 v4, 0x64

    const/4 v5, 0x2

    if-eq p2, v4, :cond_5

    const/16 v4, 0x66

    if-eq p2, v4, :cond_4

    const/16 v4, 0x69

    if-eq p2, v4, :cond_6

    const/16 v4, 0x6c

    if-eq p2, v4, :cond_3

    const/16 v4, 0x73

    if-eq p2, v4, :cond_6

    goto :goto_2

    :cond_3
    const/16 p2, 0x16

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 p1, 0x8a

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_0
    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    const/16 p2, 0x17

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 p1, 0x8d

    :goto_1
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_2

    :cond_5
    const/16 p2, 0x18

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v6, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 p1, 0x87

    goto :goto_1

    :goto_2
    const-string p1, "(D)V"

    invoke-virtual {p0, v3, v0, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v1
.end method

.method private static getAdapterClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mozilla/javascript/Scriptable;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/mozilla/javascript/ClassCache;->get(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ClassCache;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->getInterfaceAdapterCacheMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Lorg/mozilla/javascript/JavaAdapter;->getObjectFunctionNames(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ObjToIntMap;

    move-result-object p3

    new-instance v1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;

    invoke-direct {v1, p1, p2, p3}, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/ObjToIntMap;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adapter"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->newClassSerialNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p3, v2, p1, p2, v3}, Lorg/mozilla/javascript/JavaAdapter;->createAdapterCode(Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v2, p1}, Lorg/mozilla/javascript/JavaAdapter;->loadAdapterClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->isCachingEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method public static getAdapterSelf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "self"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getArgsToConvert([Ljava/lang/Class;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-eq v1, v3, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-array v1, v2, [I

    const/4 v2, 0x0

    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_4

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    aput v0, v1, v2

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static getFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;
    .locals 1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/mozilla/javascript/Function;

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static getMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lorg/mozilla/javascript/JavaAdapter;->appendMethodSignature([Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getObjectFunctionNames(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ObjToIntMap;
    .locals 7

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPropertyIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/ObjToIntMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_3

    aget-object v4, v0, v3

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/mozilla/javascript/Function;

    if-eqz v6, :cond_2

    check-cast v5, Lorg/mozilla/javascript/Function;

    const-string v6, "length"

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {v1, v4, v5}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static getOverridableMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {v2, v0, v1}, Lorg/mozilla/javascript/JavaAdapter;->appendOverridableMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-static {v5, v0, v1}, Lorg/mozilla/javascript/JavaAdapter;->appendOverridableMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    new-instance v1, Lorg/mozilla/javascript/JavaAdapter;

    invoke-direct {v1}, Lorg/mozilla/javascript/JavaAdapter;-><init>()V

    new-instance p0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/JavaAdapter;->FTAG:Ljava/lang/Object;

    const-string v4, "JavaAdapter"

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    return-void
.end method

.method public static js_createAdapter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v3, p2

    if-eqz v3, :cond_b

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p2, v4

    instance-of v6, v5, Lorg/mozilla/javascript/NativeObject;

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    instance-of v6, v5, Lorg/mozilla/javascript/NativeJavaClass;

    if-eqz v6, :cond_1

    add-int/2addr v4, v2

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.not.java.class.arg"

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v4, :cond_5

    aget-object v9, p2, v7

    check-cast v9, Lorg/mozilla/javascript/NativeJavaClass;

    invoke-virtual {v9}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isInterface()Z

    move-result v10

    if-nez v10, :cond_4

    if-nez v6, :cond_3

    move-object v6, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.only.one.super"

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4
    add-int/lit8 v10, v8, 0x1

    aput-object v9, v5, v8

    move v8, v10

    :goto_3
    add-int/2addr v7, v2

    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    :cond_6
    new-array v7, v8, [Ljava/lang/Class;

    invoke-static {v5, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p2, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-static {p1, v6, v7, v5}, Lorg/mozilla/javascript/JavaAdapter;->getAdapterClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Class;

    move-result-object v6

    sub-int/2addr v3, v4

    add-int/lit8 v7, v3, -0x1

    if-lez v7, :cond_8

    add-int/lit8 v3, v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v1

    aput-object v1, v3, v2

    add-int/2addr v4, v2

    invoke-static {p2, v4, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/mozilla/javascript/NativeJavaClass;

    invoke-direct {v0, p1, v6, v2}, Lorg/mozilla/javascript/NativeJavaClass;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->ctors:Lorg/mozilla/javascript/NativeJavaMethod;

    invoke-virtual {v0, p0, v3}, Lorg/mozilla/javascript/NativeJavaMethod;->findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_7

    iget-object p2, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object p0, p2, p0

    invoke-static {v3, p0}, Lorg/mozilla/javascript/NativeJavaClass;->constructInternal([Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_7
    invoke-static {p2}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.no.java.ctor"

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_8
    new-array p2, v0, [Ljava/lang/Class;

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    aput-object v3, p2, v1

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    aput-object v3, p2, v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object p0, v0, v2

    invoke-virtual {v6, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    invoke-static {v6, p0}, Lorg/mozilla/javascript/JavaAdapter;->getAdapterSelf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz p2, :cond_a

    move-object p2, p0

    check-cast p2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_a

    instance-of p0, p2, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz p0, :cond_9

    move-object p0, p2

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object p2

    :cond_a
    return-object p0

    :goto_5
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_b
    const-string p0, "msg.adapter.zero.args"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static synthetic lambda$callMethod$0(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->doCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$runScript$1(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getGlobal(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    return-object v0
.end method

.method public static loadAdapterClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/javascript/SecurityController;->getStaticSecurityDomainClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Ljava/security/CodeSource;

    if-eq v0, v2, :cond_1

    const-class v3, Ljava/security/ProtectionDomain;

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Lorg/mozilla/javascript/SecurityUtilities;->getScriptProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v3

    if-nez v3, :cond_2

    const-class v3, Lorg/mozilla/javascript/JavaAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v3

    :cond_2
    if-ne v0, v2, :cond_4

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    move-object v3, v0

    :cond_4
    :goto_2
    invoke-static {v1, v3}, Lorg/mozilla/javascript/SecurityController;->createLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/mozilla/javascript/GeneratedClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/mozilla/javascript/GeneratedClassLoader;->linkClass(Ljava/lang/Class;)V

    return-object p0
.end method

.method public static readAdapterObject(Lorg/mozilla/javascript/Scriptable;Ljava/io/ObjectInputStream;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v7, v6

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_1

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/2addr v8, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, v5, v7, p1}, Lorg/mozilla/javascript/JavaAdapter;->getAdapterClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    aput-object v7, v6, v2

    aput-object v7, v6, v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    aput-object p0, v1, v0

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/ClassNotFoundException;

    const-string p1, "adapter"

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static runScript(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/Scriptable;
    .locals 3

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    new-instance v1, LD/j;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, LD/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method public static writeAdapterObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "delegee"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p4, Lorg/mozilla/javascript/JavaAdapter;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    invoke-static {p2, p3, p5}, Lorg/mozilla/javascript/JavaAdapter;->js_createAdapter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
