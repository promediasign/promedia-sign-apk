.class public Lorg/apache/poi/xslf/util/PPTX2PNG;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v3, 0x1

    array-length v4, v0

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-static {v5}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v4, "-1"

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, "png"

    move-object v9, v5

    move-object v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_0
    array-length v12, v0

    if-ge v8, v12, :cond_7

    aget-object v12, v0, v8

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "-scale"

    aget-object v13, v0, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    add-int/2addr v8, v3

    aget-object v6, v0, v8

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    goto :goto_1

    :cond_1
    const-string v12, "-slide"

    aget-object v13, v0, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    add-int/2addr v8, v3

    aget-object v4, v0, v8

    goto :goto_1

    :cond_2
    const-string v12, "-format"

    aget-object v13, v0, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    add-int/2addr v8, v3

    aget-object v7, v0, v8

    goto :goto_1

    :cond_3
    const-string v12, "-outdir"

    aget-object v13, v0, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v10, Ljava/io/File;

    add-int/2addr v8, v3

    aget-object v12, v0, v8

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v12, "-quiet"

    aget-object v13, v0, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    new-instance v9, Ljava/io/File;

    aget-object v12, v0, v8

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_6
    :goto_1
    add-int/2addr v8, v3

    goto :goto_0

    :cond_7
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_9

    :cond_8
    if-eqz v7, :cond_15

    const-string v0, "^(png|gif|jpg|null)$"

    invoke-virtual {v7, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_8

    :cond_9
    if-nez v10, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    :cond_a
    const-string v0, "null"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    const-string v0, "Output directory doesn\'t exist"

    :goto_2
    invoke-static {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_d

    const-string v0, "Invalid scale given"

    goto :goto_2

    :cond_d
    if-nez v11, :cond_e

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Processing "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    invoke-static {v9, v5, v3}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12, v4}, Lorg/apache/poi/xslf/util/PPTX2PNG;->slideIndexes(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slidenum must be either -1 (for all) or within range: [1.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_f
    :try_start_1
    invoke-interface {v5}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Ljava/awt/Dimension;

    move-result-object v12

    iget v13, v12, Ljava/awt/Dimension;->width:I

    int-to-float v13, v13

    mul-float v13, v13, v6

    float-to-int v13, v13

    iget v12, v12, Ljava/awt/Dimension;->height:I

    int-to-float v12, v12

    mul-float v12, v12, v6

    float-to-int v12, v12

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-interface {v15}, Lorg/apache/poi/sl/usermodel/Slide;->getTitle()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, ""

    if-nez v11, :cond_11

    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v8

    const-string v8, "Rendering slide "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_10

    move-object v3, v2

    move/from16 v17, v11

    goto :goto_4

    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v11

    const-string v11, ": "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    move-object/from16 p0, v4

    move-object/from16 v16, v8

    move/from16 v17, v11

    :goto_5
    new-instance v1, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x2

    invoke-direct {v1, v13, v12, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Ljava/awt/Graphics2D;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v8, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v8}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v8, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v3, v4, v8}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v8, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v3, v4, v8}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v8, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v8}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    move v4, v12

    float-to-double v11, v6

    invoke-virtual {v3, v11, v12, v11, v12}, Ljava/awt/Graphics2D;->scale(DD)V

    invoke-interface {v15, v3}, Lorg/apache/poi/sl/usermodel/Sheet;->draw(Ljava/awt/Graphics2D;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, ".pptx?"

    invoke-virtual {v8, v11, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v11, "%1$s-%2$04d.%3$s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v12, v15

    const/4 v2, 0x1

    aput-object v14, v12, v2

    const/4 v14, 0x2

    aput-object v7, v12, v14

    invoke-static {v8, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v7, v11}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_6

    :cond_12
    const/4 v2, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v12, v4

    move-object/from16 v8, v16

    move/from16 v11, v17

    const/4 v3, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_3

    :cond_13
    move/from16 v17, v11

    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    if-nez v17, :cond_14

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_14
    return-void

    :goto_7
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    throw v0

    :cond_15
    :goto_8
    const-string v0, "Invalid format given"

    goto/16 :goto_2

    :cond_16
    :goto_9
    const-string v0, "File not specified or it doesn\'t exist"

    goto/16 :goto_2
.end method

.method private static slideIndexes(ILjava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :goto_0
    if-ge v2, p0, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v4, 0x2

    if-eq v7, v4, :cond_1

    goto :goto_6

    :cond_1
    aget-object v4, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget-object v5, v6, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    if-ge v4, v5, :cond_6

    add-int/lit8 v6, v4, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, p0

    goto :goto_4

    :cond_4
    invoke-static {v6, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_5
    if-ge v5, v4, :cond_6

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public static usage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Usage: PPTX2PNG [options] <ppt or pptx file>\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, ""

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "Error: "

    .line 14
    .line 15
    const-string v2, "\n"

    .line 16
    .line 17
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    const-string v1, "Options:\n    -scale <float>   scale factor\n    -slide <integer> 1-based index of a slide to render\n    -format <type>   png,gif,jpg (,null for testing)    -outdir <dir>    output directory, defaults to origin of the ppt/pptx file    -quiet           do not write to console (for normal processing)"

    .line 22
    .line 23
    invoke-static {p0, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
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
