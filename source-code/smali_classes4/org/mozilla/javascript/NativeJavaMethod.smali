.class public Lorg/mozilla/javascript/NativeJavaMethod;
.super Lorg/mozilla/javascript/BaseFunction;
.source "SourceFile"


# static fields
.field private static final PREFERENCE_AMBIGUOUS:I = 0x3

.field private static final PREFERENCE_EQUAL:I = 0x0

.field private static final PREFERENCE_FIRST_ARG:I = 0x1

.field private static final PREFERENCE_SECOND_ARG:I = 0x2

.field private static final debug:Z = false

.field private static final serialVersionUID:J = -0x2fbeb1018d019700L


# instance fields
.field private functionName:Ljava/lang/String;

.field methods:[Lorg/mozilla/javascript/MemberBox;

.field private final transient overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/mozilla/javascript/ResolvedOverload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/mozilla/javascript/MemberBox;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    return-void
.end method

.method public constructor <init>([Lorg/mozilla/javascript/MemberBox;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    return-void
.end method

.method public constructor <init>([Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    return-void
.end method

.method public static findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    aget-object v0, v0, v4

    iget-object v2, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v5, v2

    iget-boolean v0, v0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    if-eqz v0, :cond_1

    add-int/lit8 v5, v5, -0x1

    array-length v0, v1

    if-le v5, v0, :cond_2

    return v3

    :cond_1
    array-length v0, v1

    if-eq v5, v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v5, :cond_4

    aget-object v6, v1, v0

    aget-object v7, v2, v0

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeJavaObject;->canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_1
    array-length v9, v0

    if-ge v6, v9, :cond_18

    aget-object v9, v0, v6

    iget-object v10, v9, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v11, v10

    iget-boolean v12, v9, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    if-eqz v12, :cond_6

    add-int/lit8 v11, v11, -0x1

    array-length v12, v1

    if-le v11, v12, :cond_7

    :goto_2
    move-object/from16 v4, p0

    goto/16 :goto_c

    :cond_6
    array-length v12, v1

    if-eq v11, v12, :cond_7

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_9

    aget-object v13, v1, v12

    aget-object v14, v10, v12

    invoke-static {v13, v14}, Lorg/mozilla/javascript/NativeJavaObject;->canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_9
    if-gez v7, :cond_a

    move-object/from16 v4, p0

    goto/16 :goto_9

    :cond_a
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-eq v11, v8, :cond_14

    if-ne v11, v3, :cond_b

    move v14, v7

    goto :goto_5

    :cond_b
    aget v14, v2, v11

    :goto_5
    aget-object v14, v0, v14

    const/16 v15, 0xd

    move-object/from16 v4, p0

    invoke-virtual {v4, v15}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v14}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    move-result v15

    invoke-virtual {v9}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    move-result v3

    if-eq v15, v3, :cond_d

    invoke-virtual {v14}, Lorg/mozilla/javascript/MemberBox;->isPublic()Z

    move-result v3

    if-nez v3, :cond_c

    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_c
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_d
    iget-boolean v3, v9, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    iget-object v15, v14, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    iget-boolean v5, v14, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    invoke-static {v1, v10, v3, v15, v5}, Lorg/mozilla/javascript/NativeJavaMethod;->preferSignature([Ljava/lang/Object;[Ljava/lang/Class;Z[Ljava/lang/Class;Z)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_e

    goto :goto_b

    :cond_e
    const/4 v5, 0x1

    if-ne v3, v5, :cond_f

    goto :goto_6

    :cond_f
    const/4 v5, 0x2

    if-ne v3, v5, :cond_10

    goto :goto_7

    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_10
    if-eqz v3, :cond_11

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_11
    invoke-virtual {v14}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v14}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v9}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, -0x1

    if-ne v11, v3, :cond_13

    :goto_9
    move v7, v6

    :cond_12
    :goto_a
    const/4 v5, 0x1

    goto :goto_e

    :cond_13
    aput v6, v2, v11

    goto :goto_c

    :cond_14
    move-object/from16 v4, p0

    :goto_b
    add-int/lit8 v3, v8, 0x1

    if-ne v12, v3, :cond_15

    move v7, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto :goto_e

    :cond_15
    if-ne v13, v3, :cond_16

    :goto_c
    goto :goto_a

    :cond_16
    if-nez v2, :cond_17

    array-length v2, v0

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    new-array v2, v2, [I

    goto :goto_d

    :cond_17
    const/4 v5, 0x1

    :goto_d
    aput v6, v2, v8

    move v8, v3

    :goto_e
    add-int/lit8 v6, v6, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_18
    const/4 v3, -0x1

    if-gez v7, :cond_19

    return v3

    :cond_19
    if-nez v8, :cond_1a

    return v7

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, -0x1

    :goto_f
    if-eq v5, v8, :cond_1c

    if-ne v5, v3, :cond_1b

    move v6, v7

    goto :goto_10

    :cond_1b
    aget v6, v2, v5

    :goto_10
    const-string v9, "\n    "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v6

    invoke-virtual {v6}, Lorg/mozilla/javascript/MemberBox;->toJavaDeclaration()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1c
    aget-object v2, v0, v7

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg.constructor.ambiguous"

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "msg.method.ambiguous"

    invoke-static {v4, v2, v3, v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError4(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method private static preferSignature([Ljava/lang/Object;[Ljava/lang/Class;Z[Ljava/lang/Class;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/Class<",
            "*>;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_8

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    array-length v3, p1

    if-lt v0, v3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, v2

    aget-object v3, p1, v3

    goto :goto_1

    :cond_0
    aget-object v3, p1, v0

    :goto_1
    if-eqz p4, :cond_1

    array-length v4, p3

    if-lt v0, v4, :cond_1

    array-length v4, p3

    sub-int/2addr v4, v2

    aget-object v4, p3, v4

    goto :goto_2

    :cond_1
    aget-object v4, p3, v0

    :goto_2
    if-ne v3, v4, :cond_2

    goto :goto_5

    :cond_2
    aget-object v5, p0, v0

    invoke-static {v5, v3}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v6

    invoke-static {v5, v4}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v5

    const/4 v7, 0x3

    if-ge v6, v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v8, 0x2

    if-le v6, v5, :cond_4

    :goto_3
    const/4 v2, 0x2

    goto :goto_4

    :cond_4
    if-nez v6, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x3

    :goto_4
    or-int/2addr v1, v2

    if-ne v1, v7, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    :goto_6
    return v1
.end method

.method private static printDebug(Ljava/lang/String;Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static scriptSignature([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_9

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_1

    :cond_0
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    const-string v2, "boolean"

    goto :goto_1

    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v2, "string"

    goto :goto_1

    :cond_2
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    const-string v2, "number"

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_7

    instance-of v3, v2, Lorg/mozilla/javascript/Undefined;

    if-eqz v3, :cond_4

    const-string v2, "undefined"

    goto :goto_1

    :cond_4
    instance-of v3, v2, Lorg/mozilla/javascript/Wrapper;

    if-eqz v3, :cond_5

    check-cast v2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    instance-of v2, v2, Lorg/mozilla/javascript/Function;

    if-eqz v2, :cond_6

    const-string v2, "function"

    goto :goto_1

    :cond_6
    const-string v2, "object"

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_8

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v0, v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, p4}, Lorg/mozilla/javascript/NativeJavaMethod;->findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_c

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v0, v2, v0

    iget-object v2, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    iget-boolean v3, v0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    if-eqz v3, :cond_4

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    aget-object v5, p4, v4

    aget-object v6, v2, v4

    invoke-static {v5, v6}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v4, p4

    array-length v5, v2

    if-ne v4, v5, :cond_2

    array-length v4, p4

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p4, v4

    if-eqz v4, :cond_1

    array-length v4, p4

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p4, v4

    instance-of v4, v4, Lorg/mozilla/javascript/NativeArray;

    if-nez v4, :cond_1

    array-length v4, p4

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p4, v4

    instance-of v4, v4, Lorg/mozilla/javascript/NativeJavaArray;

    if-eqz v4, :cond_2

    :cond_1
    array-length v1, p4

    add-int/lit8 v1, v1, -0x1

    aget-object p4, p4, v1

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-static {p4, v1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_2

    :cond_2
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    array-length v5, p4

    array-length v6, v2

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-ge v1, v6, :cond_3

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v1

    aget-object v6, p4, v6

    invoke-static {v6, v4}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v1, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object p4, v5

    :goto_2
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aput-object p4, v3, v1

    goto :goto_4

    :cond_4
    move-object v3, p4

    :goto_3
    array-length v4, v3

    if-ge v1, v4, :cond_7

    aget-object v4, v3, v1

    aget-object v5, v2, v1

    invoke-static {v4, v5}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_6

    if-ne p4, v3, :cond_5

    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    :cond_5
    aput-object v5, v3, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result p4

    if-eqz p4, :cond_8

    const/4 p3, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p4

    move-object v1, p3

    :goto_5
    if-eqz v1, :cond_b

    instance-of v2, v1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object p3, v2

    :goto_6
    invoke-virtual {v0, p3, v3}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p4, p2, :cond_9

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_9
    return-object p1

    :cond_a
    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "msg.nonjava.method"

    invoke-static {p4, p1, p2, p3}, Lorg/mozilla/javascript/Context;->reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_c
    iget-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.java.no_such_method"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No methods defined for call"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decompile(II)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p2, "function "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "/*\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string p2, "*/\n"

    goto :goto_1

    :cond_2
    const-string p2, "*/}\n"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ResolvedOverload;

    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/ResolvedOverload;->matches([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, v1, Lorg/mozilla/javascript/ResolvedOverload;->index:I

    return p1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;->findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    new-instance v0, Lorg/mozilla/javascript/ResolvedOverload;

    invoke-direct {v0, p2, p1}, Lorg/mozilla/javascript/ResolvedOverload;-><init>([Ljava/lang/Object;I)V

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->overloadCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_2
    return p1

    :cond_3
    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;->findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v1, :cond_1

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v3}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
