.class public final Lorg/apache/xmlbeans/impl/store/Locale;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;
.implements Lorg/apache/xmlbeans/impl/store/Saaj$SaajCallback;
.implements Lorg/apache/xmlbeans/impl/common/XmlLocale;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Locale$LocalDocumentQNameFactory;,
        Lorg/apache/xmlbeans/impl/store/Locale$DefaultQNameFactory;,
        Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;,
        Lorg/apache/xmlbeans/impl/store/Locale$SaxHandler;,
        Lorg/apache/xmlbeans/impl/store/Locale$PiccoloSaxLoader;,
        Lorg/apache/xmlbeans/impl/store/Locale$XmlReaderSaxLoader;,
        Lorg/apache/xmlbeans/impl/store/Locale$DefaultEntityResolver;,
        Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;,
        Lorg/apache/xmlbeans/impl/store/Locale$Ref;,
        Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;,
        Lorg/apache/xmlbeans/impl/store/Locale$nthCache;,
        Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;,
        Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;,
        Lorg/apache/xmlbeans/impl/store/Locale$DocProps;,
        Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final COPY_USE_NEW_LOCALE:Ljava/lang/String; = "COPY_USE_NEW_LOCALE"

.field public static final USE_SAME_LOCALE:Ljava/lang/String; = "USE_SAME_LOCALE"

.field static final _openuriFragment:Lorg/apache/poi/javax/xml/namespace/QName;

.field static final _xmlFragment:Lorg/apache/poi/javax/xml/namespace/QName;

.field static final _xsiLoc:Lorg/apache/poi/javax/xml/namespace/QName;

.field static final _xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

.field static final _xsiNoLoc:Lorg/apache/poi/javax/xml/namespace/QName;

.field static final _xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

.field static synthetic class$org$apache$xmlbeans$impl$store$Locale:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$store$Locale$DocProps:Ljava/lang/Class;

.field private static tl_scrubBuffer:Ljava/lang/ThreadLocal;


# instance fields
.field _cchSrc:I

.field _changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

.field private _charUtil:Lorg/apache/xmlbeans/impl/store/CharUtil;

.field _curPool:Lorg/apache/xmlbeans/impl/store/Cur;

.field _curPoolCount:I

.field _domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

.field _domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

.field private _entryCount:I

.field _locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

.field _noSync:Z

.field _nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

.field _nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

.field _numTempFramesLeft:I

.field _offSrc:I

.field _ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

.field _posTemp:I

.field _qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

.field private _refQueue:Ljava/lang/ref/ReferenceQueue;

.field _registered:Lorg/apache/xmlbeans/impl/store/Cur;

.field _saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

.field _schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field _tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

.field _validateOnSet:Z

.field _versionAll:J

.field _versionSansText:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "nil"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v3, "xsi"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "type"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "schemaLocation"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiLoc:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "noNamespaceSchemaLocation"

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNoLoc:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "fragment"

    const-string v2, "frag"

    const-string v3, "http://www.openuri.org/fragment"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_openuriFragment:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "xml-fragment"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xmlFragment:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/store/Locale$1;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->tl_scrubBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    const-string v0, "UNSYNCHRONIZED"

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_noSync:Z

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$DefaultQNameFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale$DefaultQNameFactory;-><init>(Lorg/apache/xmlbeans/impl/store/Locale$1;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    const-string p1, "VALIDATE_ON_SET"

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_validateOnSet:Z

    const-string p1, "SAAJ_IMPL"

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of p2, p1, Lorg/apache/xmlbeans/impl/store/Saaj;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Saaj;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saaj;->setCallback(Lorg/apache/xmlbeans/impl/store/Saaj$SaajCallback;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Saaj impl not correct type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method private static addNamespace(Ljava/lang/StringBuffer;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "<no namespace>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public static applyNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/util/Map;)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->createXmlns(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static applyWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_5

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    :goto_1
    if-ge v0, v1, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->processWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    if-ge v2, v1, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->processWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_3

    :cond_7
    :goto_4
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->processWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_8
    :goto_5
    return-object p0
.end method

.method public static associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    const-string v0, "DOCUMENT_SOURCE_NAME"

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->safeGet(Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setSourceName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    const-string v1, "DOCUMENT_TYPE"

    invoke-virtual {p2, v1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaType;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXsiTypeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, p2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    :goto_1
    if-eqz p1, :cond_6

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p2

    :cond_6
    :goto_2
    if-nez v1, :cond_c

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_7
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasAttrs()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, p2

    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/SchemaType;->isValidSubstitution(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Lorg/apache/xmlbeans/XmlException;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "Element "

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " is not a valid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " document or a valid substitution."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    if-nez v1, :cond_e

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    :cond_d
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    move-object v1, p2

    :cond_e
    if-nez v1, :cond_f

    move-object v1, p1

    :cond_f
    if-nez v1, :cond_10

    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->NO_TYPE:Lorg/apache/xmlbeans/SchemaType;

    :cond_10
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;)V

    if-eqz p1, :cond_12

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->verifyDocumentType(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_6

    :cond_11
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->verifyAttributeType(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V

    :cond_12
    :goto_6
    return-void
.end method

.method public static beginsWithXml(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_3

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x6c

    if-eq p0, v1, :cond_4

    const/16 v1, 0x4c

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method private static checkNode(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Node is not an XmlBeans node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Node is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
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
.end method

.method private doAttributes(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v2, v3, v4, v5}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doNamespaces(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    const-string v4, "http://www.w3.org/2000/xmlns/"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v2, v4, v3, v5}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-interface {p1, v1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v2, v5}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getAllNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_7
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object p1
.end method

.method public static getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale$DocProps:Ljava/lang/Class;

    const-string v1, "org.apache.xmlbeans.impl.store.Locale$DocProps"

    if-nez v0, :cond_1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale$DocProps:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getBookmark(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Locale$DocProps;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale$DocProps:Ljava/lang/Class;

    if-nez p1, :cond_2

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/apache/xmlbeans/impl/store/Locale;->class$org$apache$xmlbeans$impl$store$Locale$DocProps:Ljava/lang/Class;

    :cond_2
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$DocProps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale$DocProps;-><init>(Lorg/apache/xmlbeans/impl/store/Locale$1;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setBookmark(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object v0
.end method

.method public static getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    :cond_0
    invoke-static {p1}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    const-string v0, "USE_SAME_LOCALE"

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;

    if-eqz v1, :cond_1

    :goto_0
    check-cast v0, Lorg/apache/xmlbeans/impl/store/Locale;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lorg/apache/xmlbeans/XmlTokenSource;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/apache/xmlbeans/XmlTokenSource;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->monitor()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    if-ne v1, p0, :cond_5

    iget-object p0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-eqz p0, :cond_3

    const-string v1, "SAAJ_IMPL"

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same saaj"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iget-boolean p0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_validateOnSet:Z

    if-eqz p0, :cond_8

    const-string p0, "VALIDATE_ON_SET"

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same validate on set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source locale does not support same schema type loader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "Source locale not understood: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;-><init>(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)V

    :cond_8
    :goto_3
    return-object v0
.end method

.method private static getPiccoloSaxLoader()Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->getSaxLoader()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/store/Locale$PiccoloSaxLoader;->newInstance()Lorg/apache/xmlbeans/impl/store/Locale$PiccoloSaxLoader;

    move-result-object v0

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->setSaxLoader(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    const-string v0, "LOAD_USE_DEFAULT_RESOLVER"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "ENTITY_RESOLVER"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/EntityResolver;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->getGlobalEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$DefaultEntityResolver;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale$DefaultEntityResolver;-><init>(Lorg/apache/xmlbeans/impl/store/Locale$1;)V

    :cond_1
    move-object v1, v0

    :cond_2
    const-string v0, "LOAD_USE_XMLREADER"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/XMLReader;

    if-eqz p0, :cond_3

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$XmlReaderSaxLoader;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$XmlReaderSaxLoader;-><init>(Lorg/xml/sax/XMLReader;)V

    if-eqz v1, :cond_5

    invoke-interface {p0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "XMLReader is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Lorg/apache/xmlbeans/impl/store/Locale;->getPiccoloSaxLoader()Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getScrubBuffer(I)Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->tl_scrubBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;-><init>()V

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->tl_scrubBuffer:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->init(I)V

    return-object v0
.end method

.method public static getTextValue(Lorg/apache/xmlbeans/impl/store/Cur;I[CII)I
    .locals 1

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p4, :cond_2

    goto :goto_1

    :cond_2
    move p4, p1

    :goto_1
    const/4 p1, 0x0

    if-gtz p4, :cond_3

    return p1

    :cond_3
    invoke-virtual {p0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    return p4
.end method

.method public static getTextValue(Lorg/apache/xmlbeans/impl/store/Cur;)Ljava/lang/String;
    .locals 4

    .line 2
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOfLastPush()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isComment()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isProcinst()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v2, v2, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-ge v1, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-static {v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFragment(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    goto :goto_4

    :cond_2
    if-nez v2, :cond_3

    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharsAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/store/Locale;->isWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    const/4 v2, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_4

    goto :goto_2

    :cond_4
    sget-boolean v3, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-eq v2, v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_1

    :cond_8
    :goto_4
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    if-nez v2, :cond_9

    if-eq v1, v3, :cond_a

    :cond_9
    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static isFragmentQName(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_openuriFragment:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xmlFragment:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isWhiteSpace(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isXmlns(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private static lineNumber(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/javax/xml/stream/Location;->getLineNumber()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/javax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/javax/xml/stream/Location;->getCharacterOffset()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->lineNumber(III)V

    :cond_0
    return-void
.end method

.method private static lineNumber(Lorg/apache/xmlbeans/xml/stream/XMLEvent;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 2

    .line 2
    invoke-interface {p0}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->getLocation()Lorg/apache/xmlbeans/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/xml/stream/Location;->getLineNumber()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/xml/stream/Location;->getColumnNumber()I

    move-result p0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p0, v1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->lineNumber(III)V

    :cond_0
    return-void
.end method

.method private load(Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    .line 7
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    return-object p1
.end method

.method private loadNodeChildren(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 13

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    const-string v0, "LOAD_LINE_NUMBERS"

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/xml/stream/XMLInputStream;->peek()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    check-cast v1, Lorg/apache/xmlbeans/xml/stream/StartElement;

    invoke-interface {v1}, Lorg/apache/xmlbeans/xml/stream/StartElement;->getNamespaceMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1, p2}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    const-string p2, "LOAD_ADDITIONAL_NAMESPACES"

    invoke-virtual {v1, p2, v3}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v1

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    invoke-direct {v1, p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/xml/stream/XMLInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    const/4 v8, 0x1

    :goto_0
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->getType()I

    move-result v9

    if-eq v9, v4, :cond_7

    if-eq v9, v2, :cond_3

    sparse-switch v9, :sswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unhandled xml event type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->getTypeAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    if-eqz v0, :cond_8

    invoke-static {v3, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Lorg/apache/xmlbeans/xml/stream/XMLEvent;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto/16 :goto_5

    :sswitch_1
    move-object v5, v3

    check-cast v5, Lorg/apache/xmlbeans/xml/stream/StartDocument;

    invoke-interface {v5}, Lorg/apache/xmlbeans/xml/stream/StartDocument;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/xmlbeans/xml/stream/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/xmlbeans/xml/stream/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lorg/apache/xmlbeans/xml/stream/StartDocument;->isStandalone()Z

    invoke-interface {v5}, Lorg/apache/xmlbeans/xml/stream/StartDocument;->isStandalone()Z

    move-result v5

    if-eqz v0, :cond_1

    invoke-static {v3, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Lorg/apache/xmlbeans/xml/stream/XMLEvent;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    :cond_1
    move-object v12, v8

    move v8, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v12

    goto/16 :goto_4

    :sswitch_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/xml/stream/XMLInputStream;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_5

    :sswitch_3
    move-object v9, v3

    check-cast v9, Lorg/apache/xmlbeans/xml/stream/Space;

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/Space;->ignorable()Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_4

    :sswitch_4
    move-object v9, v3

    check-cast v9, Lorg/apache/xmlbeans/xml/stream/Comment;

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/CharacterData;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/CharacterData;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->comment(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    :goto_1
    invoke-static {v3, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Lorg/apache/xmlbeans/xml/stream/XMLEvent;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto/16 :goto_4

    :cond_2
    :sswitch_5
    move-object v9, v3

    check-cast v9, Lorg/apache/xmlbeans/xml/stream/CharacterData;

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/CharacterData;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/CharacterData;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->text(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    goto :goto_1

    :sswitch_6
    move-object v9, v3

    check-cast v9, Lorg/apache/xmlbeans/xml/stream/ProcessingInstruction;

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->procInst(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->endElement()V

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->getName()Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/common/XMLNameHelper;->getQName(Lorg/apache/xmlbeans/xml/stream/XMLName;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->startElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    if-eqz v0, :cond_4

    invoke-static {v3, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Lorg/apache/xmlbeans/xml/stream/XMLEvent;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    :cond_4
    check-cast v3, Lorg/apache/xmlbeans/xml/stream/StartElement;

    invoke-interface {v3}, Lorg/apache/xmlbeans/xml/stream/StartElement;->getAttributes()Lorg/apache/xmlbeans/xml/stream/AttributeIterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/AttributeIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/AttributeIterator;->next()Lorg/apache/xmlbeans/xml/stream/Attribute;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/xmlbeans/xml/stream/Attribute;->getName()Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/xmlbeans/impl/common/XMLNameHelper;->getQName(Lorg/apache/xmlbeans/xml/stream/XMLName;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v11

    invoke-interface {v10}, Lorg/apache/xmlbeans/xml/stream/Attribute;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v11, v10}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->attr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Lorg/apache/xmlbeans/xml/stream/StartElement;->getNamespaces()Lorg/apache/xmlbeans/xml/stream/AttributeIterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Lorg/apache/xmlbeans/xml/stream/AttributeIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Lorg/apache/xmlbeans/xml/stream/AttributeIterator;->next()Lorg/apache/xmlbeans/xml/stream/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/Attribute;->getName()Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/xmlbeans/xml/stream/XMLName;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Lorg/apache/xmlbeans/xml/stream/XMLName;->getPrefix()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    const-string v10, "xmlns"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v11, ""

    :cond_6
    invoke-interface {v9}, Lorg/apache/xmlbeans/xml/stream/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v11, v9}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->xmlns(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_4
    :sswitch_8
    invoke-interface {p1}, Lorg/apache/xmlbeans/xml/stream/XMLInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    :goto_5
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-static {p1, v4}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p2

    invoke-virtual {p2, v5}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setDoctypeSystemId(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setStandalone(Z)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
        0x10 -> :sswitch_5
        0x20 -> :sswitch_4
        0x40 -> :sswitch_3
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
        0x400 -> :sswitch_8
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_8
        0x2000 -> :sswitch_8
    .end sparse-switch
.end method

.method private loadXMLStreamReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 9

    .line 1
    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "LOAD_LINE_NUMBERS"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    .line 12
    .line 13
    invoke-direct {v1, p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getEventType()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v4, v3

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    new-instance p1, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    const-string p2, "Unhandled xml event type: "

    .line 31
    .line 32
    invoke-static {v2, p2}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->doAttributes(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :pswitch_1
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->text(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :pswitch_2
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :pswitch_3
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->isStandalone()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    move v6, v4

    .line 81
    move-object v4, v3

    .line 82
    move-object v3, v2

    .line 83
    goto :goto_2

    .line 84
    :pswitch_4
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->comment(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    :goto_1
    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_5
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextStart()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getTextLength()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-virtual {v1, v2, v7, v8}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->text([CII)V

    .line 110
    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_6
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v1, v2, v7}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->procInst(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :pswitch_7
    add-int/lit8 v5, v5, -0x1

    .line 130
    .line 131
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->endElement()V

    .line 132
    .line 133
    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_8
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->startElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    .line 144
    .line 145
    .line 146
    if-eqz v0, :cond_1

    .line 147
    .line 148
    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->lineNumber(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    .line 149
    .line 150
    .line 151
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->doAttributes(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    .line 152
    .line 153
    .line 154
    :pswitch_9
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->doNamespaces(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    .line 155
    .line 156
    .line 157
    :cond_2
    :goto_2
    :pswitch_a
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_4

    .line 162
    .line 163
    if-gtz v5, :cond_3

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->next()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    .line 177
    .line 178
    .line 179
    const/4 p2, 0x1

    .line 180
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2, v3}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setEncoding(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v4}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setVersion(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v6}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setStandalone(Z)V

    .line 191
    .line 192
    .line 193
    return-object p1

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_9
    .end packed-switch
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
.end method

.method private static namespacesSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static newDomImplementation(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    return-object p0
.end method

.method private newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 1
    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const-string v1, "DOCUMENT_TYPE"

    invoke-virtual {p2, v1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaType;

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    :cond_0
    move-object p2, p1

    :cond_1
    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    :goto_0
    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p1
.end method

.method public static newInstance(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 2
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->newInstance(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static newSaxHandler(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlSaxHandler;
    .locals 1

    .line 2
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->newSaxHandler(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlSaxHandler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->newSaxHandler(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlSaxHandler;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static nodeToCursor(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->checkNode(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_getXmlCursor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method public static nodeToXmlObject(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->checkNode(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_getXmlObject(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public static nodeToXmlStream(Lorg/w3c/dom/Node;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->checkNode(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_getXmlStreamReader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method private parseToXmlObject(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 1
    invoke-static {p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p0, v1, p3}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p2
.end method

.method private parseToXmlObject(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 2
    invoke-static {p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, p0, v1, p3}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p2
.end method

.method private parseToXmlObject(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p2
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 5
    invoke-static {p0, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 6
    invoke-static {p0, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Ljava/io/Reader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 7
    invoke-static {p0, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 8
    invoke-static {p0, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 9
    invoke-static {p0, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static parseToXmlObject(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 10
    invoke-static {p0, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->parseToXmlObject(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private pollQueue()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale$Ref;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static processWhiteSpaceRule(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getScrubBuffer(I)Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->scrub(Ljava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->getResultAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pushToContainer(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static streamToNode(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Jsr173;->nodeFromStream(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static toChild(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;I)Z
    .locals 3

    if-ltz p2, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->pushToContainer(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->findNthChildElem(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return v4

    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return v4
.end method

.method public static toFirstNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static toLastChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->pushToContainer(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toLastChild()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toPrevSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return v1
.end method

.method public static toNextNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    if-ltz v0, :cond_5

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_4
    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return v1
.end method

.method public static toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Xobj;)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result p1

    if-ltz p1, :cond_4

    if-ne p1, v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static toPrevNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :cond_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormalAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static toPrevSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    const/4 v1, 0x1

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return v1
.end method

.method private static verifyAttributeType(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "The document is not a "

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, " got "

    const-string v5, "expected "

    if-eqz v1, :cond_3

    :try_start_2
    const-string v1, ": attribute namespace mismatch "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->addNamespace(Ljava/lang/StringBuffer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->addNamespace(Ljava/lang/StringBuffer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->namespacesSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ": attribute local name mismatch "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const-string p1, ": attribute element mismatch "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "got "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, ": no attributes"

    goto :goto_1

    :cond_7
    const-string p1, ": multiple attributes"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    if-nez v3, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-void

    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/XmlError;->forCursor(Ljava/lang/String;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    throw p1
.end method

.method private static verifyDocumentType(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "The document is not a "

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, " got "

    const-string v5, "expected "

    if-eqz v1, :cond_3

    :try_start_2
    const-string v1, ": document element namespace mismatch "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->addNamespace(Ljava/lang/StringBuffer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->addNamespace(Ljava/lang/StringBuffer;Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->namespacesSame(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ": document element local name mismatch "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const-string p1, ": document element mismatch "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "got "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, ": no document element"

    goto :goto_1

    :cond_7
    const-string p1, ": multiple document elements"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    if-nez v3, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-void

    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/XmlError;->forCursor(Ljava/lang/String;Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/xmlbeans/XmlError;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    throw p1
.end method

.method public static xmlnsPrefix(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public count(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->findNthChildElem(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    if-nez p3, :cond_0

    invoke-virtual {v1, p2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p3, v1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_2
    return v0
.end method

.method public createCdataNode()Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajCdataNode;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajCdataNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    :goto_0
    return-object v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_domImplementation_createDocument(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSoapElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->saajCallback_createSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public createTextNode()Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajTextNode;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$SaajTextNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    :goto_0
    return-object v0
.end method

.method public createXmlns(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "xmlns"

    const-string v3, "http://www.w3.org/2000/xmlns/"

    if-nez v1, :cond_1

    invoke-virtual {p0, v3, v2, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, p1, v2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public domLength(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v1, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v2, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I

    move-result v0

    if-gt v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    :goto_0
    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->length(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    goto :goto_0

    :goto_1
    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    :cond_2
    return p1
.end method

.method public embedCurs()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_2

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_1
    invoke-virtual {v0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x2

    iput v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public enter()V
    .locals 4

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v2, v0

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_entryCount:I

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->pollQueue()V

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_entryCount:I

    :cond_3
    return-void
.end method

.method public enter(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :cond_0
    return-void
.end method

.method public entered()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v0, v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public exit()V
    .locals 3

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, " Temp frames mismanaged. Impossible stack frame. Unsynchronized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v0, v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    sub-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public exit(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :cond_0
    return-void
.end method

.method public findDomNthChild(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->distance(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x28

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$200(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    add-int/lit8 v5, v5, -0x28

    if-lez v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    const-wide/16 v4, -0x1

    if-gt v0, v1, :cond_6

    if-nez v3, :cond_5

    :goto_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    :goto_3
    invoke-virtual {v2, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->fetch(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;I)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v2, v4, v5}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J

    :goto_4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v2, v4, v5}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J

    goto :goto_2

    :goto_5
    if-ne v0, v1, :cond_8

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    :cond_8
    return-object p1
.end method

.method public findNthChildElem(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->distance(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->distance(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)I

    move-result v1

    if-gt v0, v1, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    :goto_2
    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/Locale$nthCache;->fetch(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    goto :goto_2

    :goto_3
    if-ne v0, v1, :cond_6

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_nthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$nthCache;

    :cond_6
    return-object p1
.end method

.method public getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_charUtil:Lorg/apache/xmlbeans/impl/store/CharUtil;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/CharUtil;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_charUtil:Lorg/apache/xmlbeans/impl/store/CharUtil;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_charUtil:Lorg/apache/xmlbeans/impl/store/CharUtil;

    return-object v0
.end method

.method public getCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 5

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    :goto_1
    if-nez v0, :cond_4

    iget v3, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    if-nez v0, :cond_6

    iget-object v3, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v3, :cond_5

    iget-object v3, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_3
    if-nez v0, :cond_8

    iget-object v3, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v3, :cond_7

    iget v3, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_4
    if-nez v0, :cond_a

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    iput v2, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    return-object v1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "DOM Level 3 Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSaajData(Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->saajCallback_getSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_domImplementation_hasFeature(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public importSoapElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;ZLorg/apache/poi/javax/xml/namespace/QName;)Lorg/w3c/dom/Element;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/store/DomImpl;->saajCallback_importSoapElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/w3c/dom/Element;ZLorg/apache/poi/javax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public invalidateDomCaches(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$400(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_A:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$400(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_domNthCache_B:Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;

    invoke-static {p1, v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;->access$302(Lorg/apache/xmlbeans/impl/store/Locale$domNthCache;J)J

    :cond_1
    return-void
.end method

.method public load(Ljava/io/InputStream;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    .line 2
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/Reader;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/io/Reader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/Reader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    .line 4
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 2

    .line 6
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/io/Reader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    sget-boolean p2, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "StringReader should not throw IOException"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_0
    new-instance p2, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw p1
.end method

.method public loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->comment(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->procInst(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNodeChildren(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    goto :goto_3

    :pswitch_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->text(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected node"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->startElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2, v4}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->xmlns(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {p2, v2, v4}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNodeChildren(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->endElement()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public makeQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    .line 1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public makeQNameNoCheck(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public makeQualifiedQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, v2, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public newSaxHandler(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlSaxHandler;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;

    invoke-direct {v0, p0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    return-object v0
.end method

.method public noSync()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_noSync:Z

    return v0
.end method

.method public notifyChange()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->notifyChange()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->getNextChangeListener()Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->getNextChangeListener()Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->notifyChange()V

    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 2

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getSaxLoader(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;

    move-result-object p1

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1, p0, v1, p3}, Lorg/apache/xmlbeans/impl/store/Locale$SaxLoader;->load(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/xml/sax/InputSource;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    sget-boolean p2, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "StringReader should not throw IOException"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_0
    new-instance p2, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw p1
.end method

.method public parseToXmlObject(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->loadXMLStreamReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public parseToXmlObject(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    .line 11
    :try_start_0
    invoke-direct {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->loadXMLInputStream(Lorg/apache/xmlbeans/xml/stream/XMLInputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/xmlbeans/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public parseToXmlObject(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 12
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    invoke-direct {v0, p0, p3}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p2
.end method

.method public final refQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_refQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public registerForChange(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->getNextChangeListener()Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    if-nez v0, :cond_0

    invoke-interface {p1, p1}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;->setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_changeListeners:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    :cond_1
    return-void
.end method

.method public setSaajData(Lorg/w3c/dom/Node;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->saajCallback_setSaajData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V

    return-void
.end method

.method public sync()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_noSync:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public tempCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    return-object v0
.end method

.method public tempCur(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 6

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->getCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Temp frame not pushed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    array-length v3, v2

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_numTempFramesLeft:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-nez v1, :cond_5

    if-ltz v3, :cond_4

    array-length v4, v2

    if-ge v3, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    aget-object v4, v2, v3

    iput-object v4, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v1, :cond_7

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-eqz v4, :cond_a

    if-nez v1, :cond_9

    iget-object v1, v4, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    iput-object v0, v4, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_a
    aput-object v0, v2, v3

    iput v3, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public version()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    return-wide v0
.end method

.method public weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Locale;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->getCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    if-nez v0, :cond_3

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale$Ref;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;)V

    iput-object v0, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    return-object v1
.end method
