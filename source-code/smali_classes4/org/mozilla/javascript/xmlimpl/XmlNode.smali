.class Lorg/mozilla/javascript/xmlimpl/XmlNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;,
        Lorg/mozilla/javascript/xmlimpl/XmlNode$InternalList;,
        Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;,
        Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;,
        Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;,
        Lorg/mozilla/javascript/xmlimpl/XmlNode$XmlNodeUserDataHandler;
    }
.end annotation


# static fields
.field private static final DOM_LEVEL_3:Z = true

.field private static final USER_DATA_XMLNODE_KEY:Ljava/lang/String; = "org.mozilla.javascript.xmlimpl.XmlNode"

.field private static final XML_NAMESPACES_NAMESPACE_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private dom:Lorg/w3c/dom/Node;

.field private events:Lorg/w3c/dom/UserDataHandler;

.field private xml:Lorg/mozilla/javascript/xmlimpl/XML;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$XmlNodeUserDataHandler;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$XmlNodeUserDataHandler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->events:Lorg/w3c/dom/UserDataHandler;

    return-void
.end method

.method private addNamespaces(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;Lorg/w3c/dom/Element;)V
    .locals 4

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->toUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->toUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {v3, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;->declare(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)V

    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;->declare(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "element must not be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static copy(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 1

    .line 2
    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p0

    return-object p0
.end method

.method public static createElement(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->toXml(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p0

    return-object p0
.end method

.method public static createElementFromNode(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 1

    instance-of v0, p0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p0

    return-object p0
.end method

.method public static createEmpty(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createText(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p0

    return-object p0
.end method

.method private static createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 1

    instance-of v0, p0, Lorg/w3c/dom/Document;

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getUserData(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;-><init>()V

    iput-object p0, v0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setUserData(Lorg/w3c/dom/Node;Lorg/mozilla/javascript/xmlimpl/XmlNode;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getUserData(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static createText(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p0

    return-object p0
.end method

.method private declareNamespace(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "xmlns:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p1, v0, p2, p3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "xmlns"

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getAllNamespaces()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    instance-of v2, v1, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->addNamespaces(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;Lorg/w3c/dom/Element;)V

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-static {v1, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;->declare(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)V

    return-object v0
.end method

.method private getDefaultNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    return-object v0
.end method

.method private getExistingPrefixFor(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getDefaultNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNodeNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-static {v1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    return-object v0
.end method

.method private static getUserData(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->USER_DATA_XMLNODE_KEY:Ljava/lang/String;

    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;

    return-object p0
.end method

.method public static newElementWithText(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;Lorg/mozilla/javascript/xmlimpl/XmlNode;Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 3

    instance-of v0, p1, Lorg/w3c/dom/Document;

    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    iget-object p0, p1, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->qualify(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-interface {p0, v0, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_4
    if-eqz p3, :cond_4

    invoke-interface {p0, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-static {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot use Document node as reference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setProcessingInstructionName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private static setUserData(Lorg/w3c/dom/Node;Lorg/mozilla/javascript/xmlimpl/XmlNode;)V
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->USER_DATA_XMLNODE_KEY:Ljava/lang/String;

    iget-object v1, p1, Lorg/mozilla/javascript/xmlimpl/XmlNode;->events:Lorg/w3c/dom/UserDataHandler;

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/Node;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    return-void
.end method

.method private toUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XMLList;Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v3

    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->accept(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XMLList;->addToList(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final copy()Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->copy(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public debug()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreComments(Z)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreProcessingInstructions(Z)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setIgnoreWhitespace(Z)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->setPrettyPrinting(Z)V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ecmaToXmlString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0, p2}, Lorg/w3c/dom/Node;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->declareNamespace(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public deleteMe()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    :goto_0
    return-void
.end method

.method public ecmaToXMLString(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isElementType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getInScopeNamespaces()[Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->declareNamespace(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ecmaToXmlString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ecmaToXmlString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ecmaValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isTextType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isAttributeType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isProcessingInstructionType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isCommentType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Comment;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isElementType()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unimplemented ecmaValue() for elements."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unimplemented for node "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()[Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    new-array v1, v1, [Lorg/mozilla/javascript/xmlimpl/XmlNode;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChild(I)Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    return v0
.end method

.method public getChildIndex()I
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isAttributeType()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->parent()Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unreachable."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInScopeNamespaces()[Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getAllNamespaces()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;->getNamespaces()[Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingChildren(Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;)[Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Filter;->accept(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/mozilla/javascript/xmlimpl/XmlNode;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mozilla/javascript/xmlimpl/XmlNode;

    return-object p1
.end method

.method public getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getNodeNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceDeclaration()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getNamespaceDeclaration(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespaceDeclaration(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .locals 2

    .line 2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    instance-of v1, v1, Lorg/w3c/dom/Attr;

    if-eqz v1, :cond_0

    invoke-static {v0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getAllNamespaces()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;->getNamespace(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    return-object p1
.end method

.method public getNamespaceDeclarations()[Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->addNamespaces(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespaces;->getNamespaces()[Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    return-object v0
.end method

.method public final getQname()Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v0

    return-object v0
.end method

.method public getXml()Lorg/mozilla/javascript/xmlimpl/XML;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->xml:Lorg/mozilla/javascript/xmlimpl/XML;

    return-object v0
.end method

.method public hasChildElement()Z
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public insertChildAt(ILorg/mozilla/javascript/xmlimpl/XmlNode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p2, p2, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-interface {v1, p2, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lt v1, p1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, p1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, p2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, p2, p1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v1, "index="

    .line 53
    .line 54
    const-string v2, " length="

    .line 55
    .line 56
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p2
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

.method public insertChildrenAt(I[Lorg/mozilla/javascript/xmlimpl/XmlNode;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->insertChildAt(ILorg/mozilla/javascript/xmlimpl/XmlNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public invalidateNamespacePrefix()V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->renameNode(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v4

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->renameNode(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final isAttributeType()Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCommentType()Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isElementType()Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isParentType()Z
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->isElementType()Z

    move-result v0

    return v0
.end method

.method public final isProcessingInstructionType()Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameNode(Lorg/mozilla/javascript/xmlimpl/XmlNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isTextType()Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public normalize()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->normalize()V

    return-void
.end method

.method public parent()Lorg/mozilla/javascript/xmlimpl/XmlNode;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/Document;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public removeChild(I)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public removeNamespace(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)V
    .locals 3

    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getNodeNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->is(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->createImpl(Lorg/w3c/dom/Node;)Lorg/mozilla/javascript/xmlimpl/XmlNode;

    move-result-object v2

    invoke-direct {v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getNodeNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->is(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getExistingPrefixFor(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->isUnspecifiedPrefix()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->getDefaultNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final renameNode(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->getNamespace()Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->getUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->qualify(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    return-void
.end method

.method public replaceWith(Lorg/mozilla/javascript/xmlimpl/XmlNode;)V
    .locals 2

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, v1}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public setAttribute(Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p1, v0, p2}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->setAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can only set attribute on elements."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLocalName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    instance-of v1, v0, Lorg/w3c/dom/ProcessingInstruction;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode;->setProcessingInstructionName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$QName;->qualify(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, v3, p1}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    :goto_0
    return-void
.end method

.method public setXml(Lorg/mozilla/javascript/xmlimpl/XML;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->xml:Lorg/mozilla/javascript/xmlimpl/XML;

    return-void
.end method

.method public toDomNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmlNode: type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXmlString(Lorg/mozilla/javascript/xmlimpl/XmlProcessor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode;->dom:Lorg/w3c/dom/Node;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/xmlimpl/XmlProcessor;->ecmaToXmlString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
