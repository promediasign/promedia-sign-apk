.class public Lorg/mozilla/javascript/v8dtoa/FastDtoa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final kFastDtoaMaximalLength:I = 0x11

.field static final kTen4:I = 0x2710

.field static final kTen5:I = 0x186a0

.field static final kTen6:I = 0xf4240

.field static final kTen7:I = 0x989680

.field static final kTen8:I = 0x5f5e100

.field static final kTen9:I = 0x3b9aca00

.field static final maximal_target_exponent:I = -0x20

.field static final minimal_target_exponent:I = -0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static biggestPowerTen(II)J
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_0
    const p1, 0x3b9aca00

    if-gt p1, p0, :cond_0

    const/16 v0, 0x9

    const v0, 0x3b9aca00

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    :pswitch_1
    const p1, 0x5f5e100

    if-gt p1, p0, :cond_1

    const/16 v0, 0x8

    const v0, 0x5f5e100

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    :pswitch_2
    const p1, 0x989680

    if-gt p1, p0, :cond_2

    const/4 v0, 0x7

    const v0, 0x989680

    const/4 v1, 0x7

    goto :goto_0

    :cond_2
    :pswitch_3
    const p1, 0xf4240

    if-gt p1, p0, :cond_3

    const/4 v0, 0x6

    const v0, 0xf4240

    const/4 v1, 0x6

    goto :goto_0

    :cond_3
    :pswitch_4
    const p1, 0x186a0

    if-gt p1, p0, :cond_4

    const/4 v0, 0x5

    const v0, 0x186a0

    const/4 v1, 0x5

    goto :goto_0

    :cond_4
    :pswitch_5
    const/16 p1, 0x2710

    if-gt p1, p0, :cond_5

    const/4 v0, 0x4

    const/16 v0, 0x2710

    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    :pswitch_6
    const/16 p1, 0x3e8

    if-gt p1, p0, :cond_6

    const/4 v0, 0x3

    const/16 v0, 0x3e8

    const/4 v1, 0x3

    goto :goto_0

    :cond_6
    :pswitch_7
    const/16 p1, 0x64

    if-gt p1, p0, :cond_7

    const/4 v0, 0x2

    const/16 v0, 0x64

    const/4 v1, 0x2

    goto :goto_0

    :cond_7
    :pswitch_8
    const/16 p1, 0xa

    if-gt p1, p0, :cond_8

    const/16 v0, 0xa

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    :pswitch_9
    if-gt v0, p0, :cond_9

    goto :goto_0

    :cond_9
    :pswitch_a
    const/4 v0, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    int-to-long p0, v0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    const-wide v2, 0xffffffffL

    int-to-long v0, v1

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static digitGen(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;I)Z
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v3

    const-wide/16 v9, 0x1

    sub-long/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    new-instance v3, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v4

    add-long/2addr v4, v9

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    invoke-static {v3, v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v2

    new-instance v4, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    neg-int v5, v5

    const-wide/16 v6, 0x1

    shl-long v11, v6, v5

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    invoke-direct {v4, v11, v12, v5}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>(JI)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v11

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    neg-int v5, v5

    ushr-long/2addr v11, v5

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    long-to-int v5, v11

    invoke-virtual {v3}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v11

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v15

    sub-long/2addr v15, v6

    and-long/2addr v11, v15

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v8

    neg-int v8, v8

    rsub-int/lit8 v8, v8, 0x40

    invoke-static {v5, v8}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->biggestPowerTen(II)J

    move-result-wide v15

    const/16 v8, 0x20

    ushr-long v17, v15, v8

    and-long v6, v17, v13

    long-to-int v7, v6

    and-long v9, v15, v13

    long-to-int v6, v9

    const/4 v8, 0x1

    add-int/2addr v6, v8

    :goto_0
    if-lez v6, :cond_1

    div-int v9, v5, v7

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    rem-int/2addr v5, v7

    add-int/lit8 v6, v6, -0x1

    int-to-long v9, v5

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v15

    neg-int v15, v15

    shl-long/2addr v9, v15

    add-long/2addr v9, v11

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v15

    cmp-long v19, v9, v15

    if-gez v19, :cond_0

    iget v5, v1, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int v5, v5, p4

    add-int/2addr v5, v6

    iput v5, v1, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    invoke-static {v3, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v5

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v11

    int-to-long v2, v7

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v0

    neg-int v0, v0

    shl-long v7, v2, v0

    move-object/from16 v0, p3

    move-wide v1, v5

    move-wide v3, v11

    move-wide v5, v9

    const-wide/16 v9, 0x1

    :goto_1
    invoke-static/range {v0 .. v10}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->roundWeed(Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;JJJJJ)Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v9, 0x1

    div-int/lit8 v7, v7, 0xa

    goto :goto_0

    :cond_1
    const-wide/16 v9, 0x1

    :goto_2
    const-wide/16 v15, 0x5

    mul-long v11, v11, v15

    mul-long v9, v9, v15

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v17

    mul-long v13, v17, v15

    invoke-virtual {v2, v13, v14}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v13

    ushr-long/2addr v13, v8

    invoke-virtual {v4, v13, v14}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setF(J)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->setE(I)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result v5

    neg-int v5, v5

    ushr-long v13, v11, v5

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    long-to-int v5, v13

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v13

    const-wide/16 v17, 0x1

    sub-long v13, v13, v17

    and-long/2addr v11, v13

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v13

    cmp-long v5, v11, v13

    if-gez v5, :cond_2

    iget v5, v1, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->end:I

    sub-int v5, v5, p4

    add-int/2addr v5, v6

    iput v5, v1, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->point:I

    invoke-static {v3, v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->minus(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v5

    mul-long v5, v5, v9

    invoke-virtual {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v7

    invoke-virtual {v4}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->f()J

    move-result-wide v13

    move-object/from16 v0, p3

    move-wide v1, v5

    move-wide v3, v7

    move-wide v5, v11

    move-wide v7, v13

    goto :goto_1

    :cond_2
    move-wide v13, v15

    goto :goto_2
.end method

.method public static dtoa(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->grisu3(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result p0

    return p0
.end method

.method public static grisu3(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .locals 5

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->asNormalizedDiyFp(J)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {v1}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    new-instance v2, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {v2}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/v8dtoa/DoubleHelper;->normalizedBoundaries(JLorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)V

    new-instance p0, Lorg/mozilla/javascript/v8dtoa/DiyFp;

    invoke-direct {p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;-><init>()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0x40

    const/16 v3, -0x3c

    const/16 v4, -0x20

    invoke-static {p1, v3, v4, p0}, Lorg/mozilla/javascript/v8dtoa/CachedPowers;->getCachedPower(IIILorg/mozilla/javascript/v8dtoa/DiyFp;)I

    move-result p1

    invoke-static {v0, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v0

    invoke-static {v1, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object v1

    invoke-static {v2, p0}, Lorg/mozilla/javascript/v8dtoa/DiyFp;->times(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;)Lorg/mozilla/javascript/v8dtoa/DiyFp;

    move-result-object p0

    invoke-static {v1, v0, p0, p2, p1}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->digitGen(Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/DiyFp;Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;I)Z

    move-result p0

    return p0
.end method

.method public static numberToString(D)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;

    invoke-direct {v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->numberToString(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->format()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static numberToString(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z
    .locals 3

    .line 2
    invoke-virtual {p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->reset()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->append(C)V

    neg-double p0, p0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/v8dtoa/FastDtoa;->dtoa(DLorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;)Z

    move-result p0

    return p0
.end method

.method public static roundWeed(Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;JJJJJ)Z
    .locals 13

    sub-long v0, p1, p9

    add-long v2, p1, p9

    move-wide/from16 v4, p5

    :goto_0
    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    sub-long v6, p3, v4

    cmp-long v8, v6, p7

    if-ltz v8, :cond_1

    add-long v6, v4, p7

    cmp-long v8, v6, v0

    if-ltz v8, :cond_0

    sub-long v8, v0, v4

    sub-long v10, v6, v0

    cmp-long v12, v8, v10

    if-ltz v12, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/v8dtoa/FastDtoaBuilder;->decreaseLast()V

    move-wide v4, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    sub-long v6, p3, v4

    cmp-long v1, v6, p7

    if-ltz v1, :cond_3

    add-long v6, v4, p7

    cmp-long v1, v6, v2

    if-ltz v1, :cond_2

    sub-long v8, v2, v4

    sub-long/2addr v6, v2

    cmp-long v1, v8, v6

    if-lez v1, :cond_3

    :cond_2
    return v0

    :cond_3
    const-wide/16 v1, 0x2

    mul-long v1, v1, p9

    cmp-long v3, v1, v4

    if-gtz v3, :cond_4

    const-wide/16 v1, 0x4

    mul-long v1, v1, p9

    sub-long v1, p3, v1

    cmp-long v3, v4, v1

    if-gtz v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static uint64_lte(JJ)Z
    .locals 6

    const/4 v0, 0x1

    cmp-long v1, p0, p2

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-gez v5, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    xor-int/2addr p0, v1

    cmp-long p1, p2, v3

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p0, p1

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_3
    return v0
.end method
