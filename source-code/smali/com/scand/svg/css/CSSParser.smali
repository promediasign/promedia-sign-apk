.class public Lcom/scand/svg/css/CSSParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static at_charset:[B

.field private static utf16be_mark:[B

.field private static utf16le_mark:[B

.field private static utf8_mark:[B


# instance fields
.field afterCR:Z

.field defaultNamespace:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field errors:Ljava/util/Vector;

.field lineCount:I

.field namespaces:Ljava/util/Hashtable;

.field reader:Ljava/io/Reader;

.field savedAfterCR:Z

.field savedLineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/scand/svg/css/CSSParser;->utf8_mark:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/scand/svg/css/CSSParser;->utf16be_mark:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/scand/svg/css/CSSParser;->utf16le_mark:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/scand/svg/css/CSSParser;->at_charset:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    :array_1
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x28t
        0x3ft
        0x44t
        0x3dt
        0x48t
        0x49t
        0x41t
        0x4at
        0x14t
        0x16t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CSSParser;->namespaces:Ljava/util/Hashtable;

    return-void
.end method

.method private hexValue(I)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x66

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x57

    return p1

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_2

    const/16 v0, 0x46

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x37

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private mark(I)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/CSSParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    iget p1, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    iput p1, p0, Lcom/scand/svg/css/CSSParser;->savedLineCount:I

    iget-boolean p1, p0, Lcom/scand/svg/css/CSSParser;->afterCR:Z

    iput-boolean p1, p0, Lcom/scand/svg/css/CSSParser;->savedAfterCR:Z

    return-void
.end method

.method private read()I
    .locals 3

    iget-object v0, p0, Lcom/scand/svg/css/CSSParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    iput-boolean v2, p0, Lcom/scand/svg/css/CSSParser;->afterCR:Z

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/scand/svg/css/CSSParser;->afterCR:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scand/svg/css/CSSParser;->afterCR:Z

    :goto_0
    return v0
.end method

.method private readEscape()I
    .locals 7

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    invoke-direct {p0, v4}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->hexValue(I)I

    move-result v5

    if-ltz v5, :cond_6

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->hexValue(I)I

    move-result v0

    :goto_0
    const/4 v5, 0x6

    if-ge v1, v5, :cond_6

    invoke-direct {p0, v4}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v5

    if-ltz v5, :cond_6

    const/16 v6, 0x20

    if-eq v5, v6, :cond_6

    if-ne v5, v2, :cond_3

    goto :goto_2

    :cond_3
    if-ne v5, v3, :cond_4

    invoke-direct {p0, v4}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v1

    if-eq v1, v2, :cond_6

    :goto_1
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v5}, Lcom/scand/svg/css/CSSParser;->hexValue(I)I

    move-result v5

    if-gez v5, :cond_5

    goto :goto_1

    :cond_5
    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v0
.end method

.method private readFontFaceRule(Lcom/scand/svg/css/CSSStylesheet;)V
    .locals 2

    new-instance v0, Lcom/scand/svg/css/FontFaceRule;

    invoke-direct {v0}, Lcom/scand/svg/css/FontFaceRule;-><init>()V

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->readRuleBody(Lcom/scand/svg/css/BaseRule;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/scand/svg/css/CSSStylesheet;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private readImportRule(Lcom/scand/svg/css/CSSStylesheet;)V
    .locals 5

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSingleValue()Lcom/scand/svg/css/CSSValue;

    move-result-object v0

    instance-of v1, v0, Lcom/scand/svg/css/CSSQuotedString;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/scand/svg/css/CSSValue;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/scand/svg/css/CSSURL;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/scand/svg/css/CSSURL;

    invoke-virtual {v0}, Lcom/scand/svg/css/CSSURL;->getURI()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readMediaList()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto :goto_1

    :cond_1
    if-ltz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    :cond_2
    :goto_1
    new-instance v2, Lcom/scand/svg/css/ImportRule;

    invoke-direct {v2, v0, v1}, Lcom/scand/svg/css/ImportRule;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {p1, v2}, Lcom/scand/svg/css/CSSStylesheet;->add(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    return-void
.end method

.method private readMediaList()Ljava/util/Set;
    .locals 6

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_0

    return-object v4

    :cond_0
    const/16 v5, 0x61

    if-gt v5, v3, :cond_1

    const/16 v5, 0x7a

    if-le v3, v5, :cond_5

    :cond_1
    const/16 v5, 0x41

    if-gt v5, v3, :cond_2

    const/16 v5, 0x5a

    if-le v3, v5, :cond_5

    :cond_2
    const/16 v5, 0x5f

    if-eq v3, v5, :cond_5

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_5

    const/16 v5, 0x5c

    if-eq v3, v5, :cond_5

    const/16 v5, 0x80

    if-lt v3, v5, :cond_3

    goto :goto_2

    :cond_3
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_6

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v2, :cond_8

    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-nez v1, :cond_7

    return-object v4

    :cond_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    return-object v4

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private readMediaRule(Lcom/scand/svg/css/CSSStylesheet;)V
    .locals 4

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readMediaList()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    return-void

    :cond_0
    new-instance v2, Lcom/scand/svg/css/MediaRule;

    invoke-direct {v2, v0}, Lcom/scand/svg/css/MediaRule;-><init>(Ljava/util/Set;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v0

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSelectors()[Lcom/scand/svg/css/Selector;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    if-gez v0, :cond_3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/scand/svg/css/CSSStylesheet;->add(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {p0, v1}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/scand/svg/css/SelectorRule;

    invoke-direct {v3, v0}, Lcom/scand/svg/css/SelectorRule;-><init>([Lcom/scand/svg/css/Selector;)V

    invoke-direct {p0, v3}, Lcom/scand/svg/css/CSSParser;->readRuleBody(Lcom/scand/svg/css/BaseRule;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/scand/svg/css/MediaRule;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readEscape()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-gez v1, :cond_9

    return-object v2

    :cond_3
    const/16 v3, 0x61

    if-gt v3, v1, :cond_4

    const/16 v3, 0x7a

    if-le v1, v3, :cond_9

    :cond_4
    const/16 v3, 0x41

    if-gt v3, v1, :cond_5

    const/16 v3, 0x5a

    if-le v1, v3, :cond_9

    :cond_5
    const/16 v3, 0x30

    if-gt v3, v1, :cond_6

    const/16 v3, 0x39

    if-le v1, v3, :cond_9

    :cond_6
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_9

    const/16 v3, 0x5f

    if-eq v1, v3, :cond_9

    const/16 v3, 0x80

    if-lt v1, v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_8

    const-string v0, "NAME_EXPECTED"

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    return-object v2

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_1
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private readNamespaceRule(Lcom/scand/svg/css/CSSStylesheet;)V
    .locals 7

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSingleValue()Lcom/scand/svg/css/CSSValue;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NAMESPACE_RULE_SYNTAX"

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x3b

    if-ne v3, v5, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSingleValue()Lcom/scand/svg/css/CSSValue;

    move-result-object v3

    if-eqz v3, :cond_7

    instance-of v6, v0, Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v6

    if-eq v6, v5, :cond_3

    const-string p1, "SEMICOLON_EXPECTED"

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    return-void

    :cond_3
    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    instance-of v3, v0, Lcom/scand/svg/css/CSSQuotedString;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/scand/svg/css/CSSValue;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    instance-of v3, v0, Lcom/scand/svg/css/CSSURL;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/scand/svg/css/CSSURL;

    invoke-virtual {v0}, Lcom/scand/svg/css/CSSURL;->getURI()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/scand/svg/css/CSSParser;->defaultNamespace:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/scand/svg/css/CSSValue;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/scand/svg/css/CSSParser;->namespaces:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v1, Lcom/scand/svg/css/NamespaceRule;

    invoke-direct {v1, v4, v0}, Lcom/scand/svg/css/NamespaceRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/scand/svg/css/CSSStylesheet;->add(Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_3
    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    return-void
.end method

.method private readPageRule(Lcom/scand/svg/css/CSSStylesheet;)V
    .locals 2

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    if-gez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x61

    if-gt v1, v0, :cond_2

    const/16 v1, 0x7a

    if-le v0, v1, :cond_4

    :cond_2
    const/16 v1, 0x41

    if-gt v1, v0, :cond_3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4

    :cond_3
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x80

    if-lt v0, v1, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/scand/svg/css/PageRule;

    invoke-direct {v1, v0}, Lcom/scand/svg/css/PageRule;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/scand/svg/css/CSSParser;->readRuleBody(Lcom/scand/svg/css/BaseRule;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v1}, Lcom/scand/svg/css/CSSStylesheet;->add(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private readParams()[Lcom/scand/svg/css/CSSValue;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget v1, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    :goto_0
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->readValue(C)Lcom/scand/svg/css/CSSValue;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3

    if-gez v2, :cond_2

    const-string v0, "FUNCTION_SYNTAX"

    invoke-direct {p0, v1, v0}, Lcom/scand/svg/css/CSSParser;->reportError(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PARAM_SYNTAX \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto :goto_0
.end method

.method private readProperties(Lcom/scand/svg/css/BaseRule;)V
    .locals 6

    :goto_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v0

    const/16 v1, 0x61

    const/16 v2, 0x7d

    if-ge v1, v0, :cond_0

    const/16 v1, 0x7a

    if-lt v0, v1, :cond_3

    :cond_0
    const/16 v1, 0x41

    if-gt v1, v0, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    :cond_1
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-eq v0, v2, :cond_d

    const-string p1, "DECL_EXPECTED"

    :goto_1
    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_4

    const-string p1, "DECL_SYNTAX"

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readValue()Lcom/scand/svg/css/CSSValue;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_8

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "important"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string p1, "IMPORTANT_EXPECTED"

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/scand/svg/css/CSSImportant;

    invoke-direct {v3, v1}, Lcom/scand/svg/css/CSSImportant;-><init>(Lcom/scand/svg/css/CSSValue;)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v1

    move-object v5, v3

    move v3, v1

    move-object v1, v5

    :cond_8
    const/16 v4, 0x3b

    if-eq v3, v4, :cond_a

    if-eq v3, v2, :cond_a

    if-ltz v3, :cond_a

    const/16 v2, 0x29

    if-ne v3, v2, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "SEMICOLON_EXPECTED"

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    :goto_3
    if-gez v3, :cond_b

    const-string v2, "UNEXPECTED_EOF"

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/scand/svg/css/CSSParser;->validatePropertyValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1, v0, v1}, Lcom/scand/svg/css/BaseRule;->set(Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V

    :cond_c
    :goto_4
    if-eq v3, v4, :cond_e

    :cond_d
    :goto_5
    return-void

    :cond_e
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto/16 :goto_0
.end method

.method private readQuoted()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not quoted!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v2

    if-ltz v2, :cond_7

    if-ne v2, v0, :cond_2

    goto :goto_3

    :cond_2
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readEscape()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-gez v2, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    :goto_2
    iget v0, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    add-int/lit8 v0, v0, -0x1

    const-string v2, "UNTERMINATED_STRING"

    invoke-direct {p0, v0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(ILjava/lang/String;)V

    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readRuleBody(Lcom/scand/svg/css/BaseRule;)Z
    .locals 2

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readProperties(Lcom/scand/svg/css/BaseRule;)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result p1

    const/4 v0, 0x1

    if-ltz p1, :cond_2

    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto :goto_0

    :cond_1
    const-string p1, "CLOSING_BRACE_EXPECTED"

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    :cond_2
    :goto_0
    return v0
.end method

.method private readSelector()Lcom/scand/svg/css/Selector;
    .locals 4

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSingleSelector()Lcom/scand/svg/css/Selector;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v1

    const/16 v2, 0x2b

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSingleSelector()Lcom/scand/svg/css/Selector;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lcom/scand/svg/css/DescendantSelector;

    invoke-direct {v2, v0, v1}, Lcom/scand/svg/css/DescendantSelector;-><init>(Lcom/scand/svg/css/Selector;Lcom/scand/svg/css/Selector;)V

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSingleSelector()Lcom/scand/svg/css/Selector;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v3

    :cond_3
    new-instance v2, Lcom/scand/svg/css/ChildSelector;

    invoke-direct {v2, v0, v1}, Lcom/scand/svg/css/ChildSelector;-><init>(Lcom/scand/svg/css/Selector;Lcom/scand/svg/css/Selector;)V

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSingleSelector()Lcom/scand/svg/css/Selector;

    move-result-object v1

    if-nez v1, :cond_6

    return-object v3

    :cond_6
    new-instance v2, Lcom/scand/svg/css/SiblingSelector;

    invoke-direct {v2, v0, v1}, Lcom/scand/svg/css/SiblingSelector;-><init>(Lcom/scand/svg/css/Selector;Lcom/scand/svg/css/Selector;)V

    goto :goto_1
.end method

.method private readSelectors()[Lcom/scand/svg/css/Selector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSelector()Lcom/scand/svg/css/Selector;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v1

    if-gez v1, :cond_1

    return-object v2

    :cond_1
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/scand/svg/css/Selector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_3
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto :goto_0
.end method

.method private readSingleSelector()Lcom/scand/svg/css/Selector;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v3, v2

    .line 9
    :cond_0
    const/16 v4, 0x23

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v1, v4, :cond_1e

    .line 13
    .line 14
    const/16 v4, 0x2a

    .line 15
    .line 16
    if-eq v1, v4, :cond_1d

    .line 17
    .line 18
    const/16 v6, 0x2e

    .line 19
    .line 20
    if-eq v1, v6, :cond_1c

    .line 21
    .line 22
    const/16 v6, 0x3a

    .line 23
    .line 24
    if-eq v1, v6, :cond_16

    .line 25
    .line 26
    const/16 v6, 0x5b

    .line 27
    .line 28
    const-string v7, "\'"

    .line 29
    .line 30
    const-string v8, "UNDECLARED_PREFIX \'"

    .line 31
    .line 32
    const-string v9, ""

    .line 33
    .line 34
    const/16 v10, 0x7c

    .line 35
    .line 36
    if-eq v1, v6, :cond_9

    .line 37
    .line 38
    const/16 v4, 0x61

    .line 39
    .line 40
    if-gt v4, v1, :cond_1

    .line 41
    .line 42
    const/16 v4, 0x7a

    .line 43
    .line 44
    if-le v1, v4, :cond_4

    .line 45
    .line 46
    :cond_1
    const/16 v4, 0x41

    .line 47
    .line 48
    if-gt v4, v1, :cond_2

    .line 49
    .line 50
    const/16 v4, 0x5a

    .line 51
    .line 52
    if-le v1, v4, :cond_4

    .line 53
    .line 54
    :cond_2
    const/16 v4, 0x5f

    .line 55
    .line 56
    if-eq v1, v4, :cond_4

    .line 57
    .line 58
    const/16 v4, 0x2d

    .line 59
    .line 60
    if-eq v1, v4, :cond_4

    .line 61
    .line 62
    const/16 v4, 0x80

    .line 63
    .line 64
    if-ge v1, v4, :cond_4

    .line 65
    .line 66
    const/16 v4, 0x5c

    .line 67
    .line 68
    if-eq v1, v4, :cond_4

    .line 69
    .line 70
    if-ne v1, v10, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move-object v6, v2

    .line 74
    goto/16 :goto_a

    .line 75
    .line 76
    :cond_4
    :goto_0
    if-ne v1, v10, :cond_5

    .line 77
    .line 78
    move-object v1, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_1
    invoke-direct {v0, v5}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    .line 85
    .line 86
    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-ne v4, v10, :cond_7

    .line 92
    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-nez v1, :cond_6

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    iget-object v6, v0, Lcom/scand/svg/css/CSSParser;->namespaces:Ljava/util/Hashtable;

    .line 101
    .line 102
    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    move-object v9, v6

    .line 107
    check-cast v9, Ljava/lang/String;

    .line 108
    .line 109
    if-nez v9, :cond_8

    .line 110
    .line 111
    invoke-static {v8, v1, v7}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-direct {v0, v6}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    iget-object v9, v0, Lcom/scand/svg/css/CSSParser;->defaultNamespace:Ljava/lang/String;

    .line 120
    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    .line 122
    .line 123
    .line 124
    move-object v4, v1

    .line 125
    move-object v1, v2

    .line 126
    :cond_8
    :goto_2
    new-instance v6, Lcom/scand/svg/css/NamedElementSelector;

    .line 127
    .line 128
    invoke-direct {v6, v1, v9, v4}, Lcom/scand/svg/css/NamedElementSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_a

    .line 132
    .line 133
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 134
    .line 135
    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-ne v1, v10, :cond_a

    .line 141
    .line 142
    move-object v6, v2

    .line 143
    goto :goto_3

    .line 144
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-nez v1, :cond_b

    .line 149
    .line 150
    return-object v2

    .line 151
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    move/from16 v19, v6

    .line 156
    .line 157
    move-object v6, v1

    .line 158
    move/from16 v1, v19

    .line 159
    .line 160
    :goto_3
    const/16 v11, 0x3d

    .line 161
    .line 162
    if-ne v1, v10, :cond_e

    .line 163
    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, v5}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    .line 168
    .line 169
    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    .line 175
    .line 176
    .line 177
    if-eq v12, v11, :cond_e

    .line 178
    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    if-nez v6, :cond_d

    .line 184
    .line 185
    :cond_c
    :goto_4
    move-object v14, v6

    .line 186
    move-object v15, v9

    .line 187
    move-object/from16 v16, v12

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_d
    iget-object v9, v0, Lcom/scand/svg/css/CSSParser;->namespaces:Ljava/util/Hashtable;

    .line 191
    .line 192
    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    check-cast v9, Ljava/lang/String;

    .line 197
    .line 198
    if-nez v9, :cond_c

    .line 199
    .line 200
    invoke-static {v8, v6, v7}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-direct {v0, v7}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_e
    move-object v14, v2

    .line 209
    move-object v15, v14

    .line 210
    move-object/from16 v16, v6

    .line 211
    .line 212
    :goto_5
    const/16 v6, 0x5d

    .line 213
    .line 214
    if-ne v1, v6, :cond_f

    .line 215
    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 217
    .line 218
    .line 219
    new-instance v6, Lcom/scand/svg/css/AttributeSelector;

    .line 220
    .line 221
    const-string v17, ""

    .line 222
    .line 223
    const/16 v18, 0x0

    .line 224
    .line 225
    move-object v13, v6

    .line 226
    invoke-direct/range {v13 .. v18}, Lcom/scand/svg/css/AttributeSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_a

    .line 230
    .line 231
    :cond_f
    const-string v7, "="

    .line 232
    .line 233
    if-ne v1, v11, :cond_10

    .line 234
    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 236
    .line 237
    .line 238
    move-object/from16 v17, v7

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_10
    const/16 v8, 0x7e

    .line 242
    .line 243
    if-eq v1, v8, :cond_12

    .line 244
    .line 245
    if-eq v1, v10, :cond_12

    .line 246
    .line 247
    const/16 v8, 0x5e

    .line 248
    .line 249
    if-eq v1, v8, :cond_12

    .line 250
    .line 251
    const/16 v8, 0x24

    .line 252
    .line 253
    if-eq v1, v8, :cond_12

    .line 254
    .line 255
    if-ne v1, v4, :cond_11

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_11
    return-object v2

    .line 259
    :cond_12
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 260
    .line 261
    .line 262
    invoke-direct {v0, v5}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    .line 263
    .line 264
    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eq v4, v11, :cond_13

    .line 270
    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    .line 272
    .line 273
    .line 274
    return-object v2

    .line 275
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    int-to-char v1, v1

    .line 281
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    move-object/from16 v17, v1

    .line 292
    .line 293
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->readSingleValue()Lcom/scand/svg/css/CSSValue;

    .line 294
    .line 295
    .line 296
    move-result-object v18

    .line 297
    if-nez v18, :cond_14

    .line 298
    .line 299
    return-object v2

    .line 300
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eq v1, v6, :cond_15

    .line 305
    .line 306
    return-object v2

    .line 307
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 308
    .line 309
    .line 310
    new-instance v6, Lcom/scand/svg/css/AttributeSelector;

    .line 311
    .line 312
    move-object v13, v6

    .line 313
    invoke-direct/range {v13 .. v18}, Lcom/scand/svg/css/AttributeSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_a

    .line 317
    .line 318
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 319
    .line 320
    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-ne v1, v6, :cond_17

    .line 326
    .line 327
    const/4 v1, 0x1

    .line 328
    goto :goto_8

    .line 329
    :cond_17
    const/4 v1, 0x0

    .line 330
    :goto_8
    if-eqz v1, :cond_18

    .line 331
    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 333
    .line 334
    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    .line 336
    .line 337
    .line 338
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    if-nez v4, :cond_19

    .line 343
    .line 344
    return-object v2

    .line 345
    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    if-nez v1, :cond_1b

    .line 350
    .line 351
    const-string v1, "first-line"

    .line 352
    .line 353
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-nez v1, :cond_1b

    .line 358
    .line 359
    const-string v1, "first-letter"

    .line 360
    .line 361
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-nez v1, :cond_1b

    .line 366
    .line 367
    const-string v1, "before"

    .line 368
    .line 369
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_1b

    .line 374
    .line 375
    const-string v1, "after"

    .line 376
    .line 377
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-nez v1, :cond_1b

    .line 382
    .line 383
    const-string v1, "hover"

    .line 384
    .line 385
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-nez v1, :cond_1b

    .line 390
    .line 391
    const-string v1, "active"

    .line 392
    .line 393
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-nez v1, :cond_1b

    .line 398
    .line 399
    const-string v1, "focus"

    .line 400
    .line 401
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-nez v1, :cond_1b

    .line 406
    .line 407
    const-string v1, "link"

    .line 408
    .line 409
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_1b

    .line 414
    .line 415
    const-string v1, "visited"

    .line 416
    .line 417
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-eqz v1, :cond_1a

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_1a
    new-instance v6, Lcom/scand/svg/css/PseudoClassSelector;

    .line 425
    .line 426
    invoke-direct {v6, v4}, Lcom/scand/svg/css/PseudoClassSelector;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_1b
    :goto_9
    new-instance v6, Lcom/scand/svg/css/PseudoElementSelector;

    .line 431
    .line 432
    invoke-direct {v6, v4}, Lcom/scand/svg/css/PseudoElementSelector;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 437
    .line 438
    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    new-instance v6, Lcom/scand/svg/css/ClassSelector;

    .line 444
    .line 445
    invoke-direct {v6, v1}, Lcom/scand/svg/css/ClassSelector;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 450
    .line 451
    .line 452
    new-instance v6, Lcom/scand/svg/css/AnyElementSelector;

    .line 453
    .line 454
    invoke-direct {v6}, Lcom/scand/svg/css/AnyElementSelector;-><init>()V

    .line 455
    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 459
    .line 460
    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    new-instance v6, Lcom/scand/svg/css/IdSelector;

    .line 466
    .line 467
    invoke-direct {v6, v1}, Lcom/scand/svg/css/IdSelector;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :goto_a
    if-nez v6, :cond_1f

    .line 471
    .line 472
    return-object v3

    .line 473
    :cond_1f
    if-nez v3, :cond_20

    .line 474
    .line 475
    move-object v3, v6

    .line 476
    goto :goto_b

    .line 477
    :cond_20
    new-instance v1, Lcom/scand/svg/css/AndSelector;

    .line 478
    .line 479
    invoke-direct {v1, v3, v6}, Lcom/scand/svg/css/AndSelector;-><init>(Lcom/scand/svg/css/Selector;Lcom/scand/svg/css/Selector;)V

    .line 480
    .line 481
    .line 482
    move-object v3, v1

    .line 483
    :goto_b
    invoke-direct {v0, v5}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    .line 484
    .line 485
    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->read()I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    .line 491
    .line 492
    .line 493
    if-ltz v1, :cond_21

    .line 494
    .line 495
    const/16 v4, 0x7b

    .line 496
    .line 497
    if-eq v1, v4, :cond_21

    .line 498
    .line 499
    const/16 v4, 0x3e

    .line 500
    .line 501
    if-eq v1, v4, :cond_21

    .line 502
    .line 503
    const/16 v4, 0x2b

    .line 504
    .line 505
    if-eq v1, v4, :cond_21

    .line 506
    .line 507
    const/16 v4, 0x2c

    .line 508
    .line 509
    if-eq v1, v4, :cond_21

    .line 510
    .line 511
    const/16 v4, 0x20

    .line 512
    .line 513
    if-eq v1, v4, :cond_21

    .line 514
    .line 515
    const/16 v4, 0x9

    .line 516
    .line 517
    if-eq v1, v4, :cond_21

    .line 518
    .line 519
    const/16 v4, 0xd

    .line 520
    .line 521
    if-eq v1, v4, :cond_21

    .line 522
    .line 523
    const/16 v4, 0xa

    .line 524
    .line 525
    if-eq v1, v4, :cond_21

    .line 526
    .line 527
    const/16 v4, 0xc

    .line 528
    .line 529
    if-ne v1, v4, :cond_0

    .line 530
    .line 531
    :cond_21
    return-object v3
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
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
.end method

.method private readSingleValue()Lcom/scand/svg/css/CSSValue;
    .locals 15

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_22

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x27

    if-eq v0, v2, :cond_22

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v6

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    const/16 v7, 0x5a

    const/16 v8, 0x41

    const/16 v9, 0x7a

    const/16 v10, 0x61

    const/16 v11, 0x39

    const/16 v12, 0x30

    const/16 v13, 0x2e

    if-gt v12, v0, :cond_0

    if-le v0, v11, :cond_12

    :cond_0
    if-eq v0, v13, :cond_12

    const/16 v14, 0x2d

    if-ne v0, v14, :cond_2

    if-gt v12, v6, :cond_1

    if-le v6, v11, :cond_12

    :cond_1
    if-ne v6, v13, :cond_2

    goto/16 :goto_6

    :cond_2
    const/16 v3, 0x5c

    if-eq v0, v14, :cond_6

    if-gt v10, v0, :cond_3

    if-le v0, v9, :cond_6

    :cond_3
    if-gt v8, v0, :cond_4

    if-le v0, v7, :cond_6

    :cond_4
    const/16 v6, 0x80

    if-ge v0, v6, :cond_6

    if-eq v0, v3, :cond_6

    const/16 v6, 0x5f

    if-ne v0, v6, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNEXPECTED_CHAR \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    return-object v4

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_7

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    new-instance v1, Lcom/scand/svg/css/CSSName;

    invoke-direct {v1, v0}, Lcom/scand/svg/css/CSSName;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "url"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v0

    const/16 v6, 0x29

    const-string v7, "URL_SYNTAX"

    if-eq v0, v2, :cond_e

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    const/4 v2, -0x1

    :goto_2
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v8

    if-gez v8, :cond_9

    invoke-direct {p0, v1, v7}, Lcom/scand/svg/css/CSSParser;->reportError(ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    if-ne v8, v6, :cond_a

    :goto_3
    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    if-ne v8, v3, :cond_c

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readEscape()I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    if-gez v8, :cond_d

    return-object v4

    :cond_c
    const/16 v9, 0x20

    if-eq v8, v9, :cond_d

    const/16 v9, 0x9

    if-eq v8, v9, :cond_d

    const/16 v9, 0xa

    if-eq v8, v9, :cond_d

    const/16 v9, 0xd

    if-eq v8, v9, :cond_d

    const/16 v9, 0xc

    if-eq v8, v9, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    :cond_d
    int-to-char v8, v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_e
    :goto_4
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readQuoted()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v1

    if-eq v1, v6, :cond_f

    invoke-direct {p0, v7}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    return-object v4

    :cond_f
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    :goto_5
    new-instance v1, Lcom/scand/svg/css/CSSURL;

    invoke-direct {v1, v0}, Lcom/scand/svg/css/CSSURL;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_10
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readParams()[Lcom/scand/svg/css/CSSValue;

    move-result-object v1

    if-nez v1, :cond_11

    return-object v4

    :cond_11
    new-instance v2, Lcom/scand/svg/css/CSSFunction;

    invoke-direct {v2, v0, v1}, Lcom/scand/svg/css/CSSFunction;-><init>(Ljava/lang/String;[Lcom/scand/svg/css/CSSValue;)V

    return-object v2

    :cond_12
    :goto_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    if-ne v0, v13, :cond_13

    const/4 v3, 0x1

    :cond_13
    :goto_7
    invoke-direct {p0, v5}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    const-string v2, "NUMBER_SYNTAX"

    if-ne v0, v13, :cond_15

    if-eqz v3, :cond_14

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    return-object v4

    :cond_14
    const/4 v3, 0x1

    goto :goto_8

    :cond_15
    if-gt v12, v0, :cond_17

    if-le v0, v11, :cond_16

    goto :goto_9

    :cond_16
    :goto_8
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_17
    :goto_9
    if-eqz v3, :cond_18

    :try_start_0
    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_18
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    const/16 v1, 0x25

    if-ne v0, v1, :cond_19

    new-instance v0, Lcom/scand/svg/css/CSSLength;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-string v3, "%"

    invoke-direct {v0, v1, v2, v3}, Lcom/scand/svg/css/CSSLength;-><init>(DLjava/lang/String;)V

    return-object v0

    :cond_19
    if-gt v10, v0, :cond_1a

    if-le v0, v9, :cond_1b

    :cond_1a
    if-gt v8, v0, :cond_1c

    if-gt v0, v7, :cond_1c

    :cond_1b
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/scand/svg/css/CSSLength;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/scand/svg/css/CSSLength;-><init>(DLjava/lang/String;)V

    return-object v1

    :cond_1c
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    new-instance v0, Lcom/scand/svg/css/CSSNumber;

    invoke-direct {v0, v3}, Lcom/scand/svg/css/CSSNumber;-><init>(Ljava/lang/Number;)V

    return-object v0

    :catch_0
    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    return-object v4

    :cond_1d
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x6

    if-ge v3, v1, :cond_1f

    invoke-direct {p0, v5}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->hexValue(I)I

    move-result v2

    if-gez v2, :cond_1e

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    goto :goto_c

    :cond_1e
    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1f
    :goto_c
    const/4 v2, 0x3

    if-ne v3, v2, :cond_20

    and-int/lit8 v1, v0, 0xf

    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0xf

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v3, v0, 0x14

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v3, v2, 0xc

    or-int/2addr v0, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    goto :goto_d

    :cond_20
    if-ne v3, v1, :cond_21

    :goto_d
    new-instance v1, Lcom/scand/svg/css/CSSRGBColor;

    invoke-direct {v1, v0}, Lcom/scand/svg/css/CSSRGBColor;-><init>(I)V

    return-object v1

    :cond_21
    const-string v0, "HASH_COLOR"

    goto/16 :goto_0

    :cond_22
    new-instance v0, Lcom/scand/svg/css/CSSQuotedString;

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readQuoted()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scand/svg/css/CSSQuotedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readStylesheet(Lcom/scand/svg/css/CSSStylesheet;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v2

    iget v3, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    if-gez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const/16 v4, 0x40

    const-string v5, "\'"

    const/16 v6, 0x2d

    const/4 v7, 0x0

    if-ne v2, v4, :cond_10

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v2

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    if-gez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const/16 v4, 0x61

    if-gt v4, v2, :cond_3

    const/16 v4, 0x7a

    if-le v2, v4, :cond_6

    :cond_3
    const/16 v4, 0x41

    if-gt v4, v2, :cond_4

    const/16 v4, 0x5a

    if-le v2, v4, :cond_6

    :cond_4
    const/16 v4, 0x5f

    if-eq v2, v4, :cond_6

    if-eq v2, v6, :cond_6

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_6

    const/16 v4, 0x80

    if-lt v2, v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0, v7}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "import"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "charset"

    if-eqz v6, :cond_9

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readImportRule(Lcom/scand/svg/css/CSSStylesheet;)V

    goto :goto_2

    :cond_8
    const-string v5, "IMPORT_NOT_ALLOWED_HERE"

    invoke-direct {p0, v3, v5}, Lcom/scand/svg/css/CSSParser;->reportError(ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v6, "media"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readMediaRule(Lcom/scand/svg/css/CSSStylesheet;)V

    goto :goto_2

    :cond_a
    const-string v6, "page"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readPageRule(Lcom/scand/svg/css/CSSStylesheet;)V

    goto :goto_2

    :cond_b
    const-string v6, "namespace"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readNamespaceRule(Lcom/scand/svg/css/CSSStylesheet;)V

    goto :goto_2

    :cond_c
    const-string v6, "font-face"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readFontFaceRule(Lcom/scand/svg/css/CSSStylesheet;)V

    goto :goto_2

    :cond_d
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-direct {p0, v7}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    goto :goto_2

    :cond_e
    const-string v6, "UNKNOWN_AT_RULE \'"

    .line 2
    invoke-static {v6, v2, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-direct {p0, v3, v5}, Lcom/scand/svg/css/CSSParser;->reportError(ILjava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_f
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_18

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_11

    goto :goto_5

    :cond_11
    const/16 v3, 0x3c

    const/4 v4, 0x3

    if-ne v2, v3, :cond_13

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0, v4}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_12

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v2

    if-ne v2, v6, :cond_12

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v2

    if-ne v2, v6, :cond_12

    goto/16 :goto_0

    :cond_12
    const-string v2, "UNEXPECTED_CHAR \'<\'"

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    goto/16 :goto_0

    :cond_13
    if-ne v2, v6, :cond_15

    invoke-direct {p0, v4}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v2

    if-ne v2, v6, :cond_14

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_14

    goto/16 :goto_0

    :cond_14
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    :cond_15
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSelectors()[Lcom/scand/svg/css/Selector;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v1

    if-gez v1, :cond_16

    :goto_4
    return-void

    :cond_16
    invoke-direct {p0, v7}, Lcom/scand/svg/css/CSSParser;->skipToEnd(Z)V

    goto :goto_3

    :cond_17
    new-instance v2, Lcom/scand/svg/css/SelectorRule;

    invoke-direct {v2, v1}, Lcom/scand/svg/css/SelectorRule;-><init>([Lcom/scand/svg/css/Selector;)V

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->readRuleBody(Lcom/scand/svg/css/BaseRule;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, v2}, Lcom/scand/svg/css/CSSStylesheet;->add(Ljava/lang/Object;)V

    goto :goto_3

    :cond_18
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UNEXPECTED_CHAR \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/scand/svg/css/CSSParser;->reportError(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto/16 :goto_0
.end method

.method private readTerm(C)Lcom/scand/svg/css/CSSValue;
    .locals 2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readSingleValue()Lcom/scand/svg/css/CSSValue;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->readValue(C)Lcom/scand/svg/css/CSSValue;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readValue(C)Lcom/scand/svg/css/CSSValue;

    move-result-object p1

    return-object p1
.end method

.method private readValue()Lcom/scand/svg/css/CSSValue;
    .locals 1

    .line 1
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->readValue(C)Lcom/scand/svg/css/CSSValue;

    move-result-object v0

    return-object v0
.end method

.method private readValue(C)Lcom/scand/svg/css/CSSValue;
    .locals 8

    .line 2
    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readTerm(C)Lcom/scand/svg/css/CSSValue;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_b

    if-ltz v2, :cond_b

    const/16 v4, 0x7d

    if-eq v2, v4, :cond_b

    const/16 v5, 0x21

    if-eq v2, v5, :cond_b

    const/16 v6, 0x29

    if-ne v2, v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0x20

    if-ne p1, v6, :cond_3

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_2

    const/16 v7, 0x2f

    if-ne v2, v7, :cond_5

    :cond_2
    return-object v0

    :cond_3
    if-eq v2, p1, :cond_4

    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    :cond_5
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->readTerm(C)Lcom/scand/svg/css/CSSValue;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipWhitespace()I

    move-result v0

    if-eq v0, v3, :cond_a

    if-ltz v0, :cond_a

    if-eq v0, v4, :cond_a

    if-ne v0, v5, :cond_8

    goto :goto_1

    :cond_8
    if-eq p1, v6, :cond_6

    if-eq v0, p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    goto :goto_0

    :cond_a
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, Lcom/scand/svg/css/CSSValueList;

    invoke-direct {v1, p1, v0}, Lcom/scand/svg/css/CSSValueList;-><init>(C[Lcom/scand/svg/css/CSSValue;)V

    return-object v1

    :cond_b
    :goto_2
    return-object v0
.end method

.method private reportError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scand/svg/css/CSSParser;->errors:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CSSParser;->errors:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/CSSParser;->errors:Ljava/util/Vector;

    new-instance v1, Lcom/scand/svg/css/CSSParsingError;

    invoke-direct {v1, p1, p2}, Lcom/scand/svg/css/CSSParsingError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    invoke-direct {p0, v0, p1}, Lcom/scand/svg/css/CSSParser;->reportError(ILjava/lang/String;)V

    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/CSSParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    iget v0, p0, Lcom/scand/svg/css/CSSParser;->savedLineCount:I

    iput v0, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    iget-boolean v0, p0, Lcom/scand/svg/css/CSSParser;->savedAfterCR:Z

    iput-boolean v0, p0, Lcom/scand/svg/css/CSSParser;->afterCR:Z

    return-void
.end method

.method private setReader(Ljava/io/Reader;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scand/svg/css/CSSParser;->encoding:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/scand/svg/css/CSSParser;->reader:Ljava/io/Reader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/scand/svg/css/CSSParser;->reader:Ljava/io/Reader;

    :goto_0
    return-void
.end method

.method private skipToEnd(Z)V
    .locals 6

    const/4 v0, 0x0

    move v1, p1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v3

    if-gez v3, :cond_4

    return-void

    :cond_4
    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0x22

    if-eq v3, v4, :cond_b

    const/16 v4, 0x27

    if-eq v3, v4, :cond_b

    const/16 v4, 0x2f

    const/4 v5, 0x1

    if-eq v3, v4, :cond_9

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_8

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_7

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_6

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_5
    if-nez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->readEscape()I

    goto :goto_1

    :cond_8
    if-nez p1, :cond_1

    return-void

    :cond_9
    if-nez v2, :cond_0

    invoke-direct {p0, v5}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_a

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipToEndOfComment()V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    goto :goto_1

    :cond_b
    if-ne v2, v3, :cond_c

    goto :goto_0

    :cond_c
    if-nez v2, :cond_1

    int-to-char v2, v3

    goto :goto_1
.end method

.method private skipToEndOfComment()V
    .locals 2

    :cond_0
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    if-gez v0, :cond_1

    :cond_2
    return-void
.end method

.method private skipWhitespace()I
    .locals 3

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    if-gez v0, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->mark(I)V

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->read()I

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->skipToEndOfComment()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    return v1

    :cond_3
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSParser;->reset()V

    return v0
.end method

.method private validatePropertyValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public readInlineStyle(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;
    .locals 2

    new-instance v0, Lcom/scand/svg/css/InlineRule;

    invoke-direct {v0}, Lcom/scand/svg/css/InlineRule;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/scand/svg/css/CSSParser;->lineCount:I

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/scand/svg/css/CSSParser;->reader:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/scand/svg/css/CSSParser;->readProperties(Lcom/scand/svg/css/BaseRule;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public readStylesheet(Ljava/io/Reader;)Lcom/scand/svg/css/CSSStylesheet;
    .locals 1

    .line 1
    new-instance v0, Lcom/scand/svg/css/CSSStylesheet;

    invoke-direct {v0}, Lcom/scand/svg/css/CSSStylesheet;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/scand/svg/css/CSSParser;->readStylesheet(Ljava/io/Reader;Lcom/scand/svg/css/CSSStylesheet;)V

    return-object v0
.end method

.method public readStylesheet(Ljava/io/Reader;Lcom/scand/svg/css/CSSStylesheet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/scand/svg/css/CSSParser;->setReader(Ljava/io/Reader;)V

    invoke-direct {p0, p2}, Lcom/scand/svg/css/CSSParser;->readStylesheet(Lcom/scand/svg/css/CSSStylesheet;)V

    return-void
.end method
