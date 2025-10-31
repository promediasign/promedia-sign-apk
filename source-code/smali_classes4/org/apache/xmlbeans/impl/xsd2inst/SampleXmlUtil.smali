.class public Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DNS1:[Ljava/lang/String;

.field private static final DNS2:[Ljava/lang/String;

.field private static final ENC_ARRAYTYPE:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final ENC_OFFSET:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final HREF:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final ID:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final SKIPPED_SOAP_ATTRS:Ljava/util/Set;

.field public static final WORDS:[Ljava/lang/String;

.field private static final XSI_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;


# instance fields
.field private _nElements:I

.field _picker:Ljava/util/Random;

.field private _soapEnc:Z

.field private _typeStack:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 143

    const-string v141, "iussus"

    const-string v142, "habenas"

    const-string v0, "ipsa"

    const-string v1, "iovis"

    const-string v2, "rapidum"

    const-string v3, "iaculata"

    const-string v4, "e"

    const-string v5, "nubibus"

    const-string v6, "ignem"

    const-string v7, "disiecitque"

    const-string v8, "rates"

    const-string v9, "evertitque"

    const-string v10, "aequora"

    const-string v11, "ventis"

    const-string v12, "illum"

    const-string v13, "exspirantem"

    const-string v14, "transfixo"

    const-string v15, "pectore"

    const-string v16, "flammas"

    const-string v17, "turbine"

    const-string v18, "corripuit"

    const-string v19, "scopuloque"

    const-string v20, "infixit"

    const-string v21, "acuto"

    const-string v22, "ast"

    const-string v23, "ego"

    const-string v24, "quae"

    const-string v25, "divum"

    const-string v26, "incedo"

    const-string v27, "regina"

    const-string v28, "iovisque"

    const-string v29, "et"

    const-string v30, "soror"

    const-string v31, "et"

    const-string v32, "coniunx"

    const-string v33, "una"

    const-string v34, "cum"

    const-string v35, "gente"

    const-string v36, "tot"

    const-string v37, "annos"

    const-string v38, "bella"

    const-string v39, "gero"

    const-string v40, "et"

    const-string v41, "quisquam"

    const-string v42, "numen"

    const-string v43, "iunonis"

    const-string v44, "adorat"

    const-string v45, "praeterea"

    const-string v46, "aut"

    const-string v47, "supplex"

    const-string v48, "aris"

    const-string v49, "imponet"

    const-string v50, "honorem"

    const-string v51, "talia"

    const-string v52, "flammato"

    const-string v53, "secum"

    const-string v54, "dea"

    const-string v55, "corde"

    const-string v56, "volutans"

    const-string v57, "nimborum"

    const-string v58, "in"

    const-string v59, "patriam"

    const-string v60, "loca"

    const-string v61, "feta"

    const-string v62, "furentibus"

    const-string v63, "austris"

    const-string v64, "aeoliam"

    const-string v65, "venit"

    const-string v66, "hic"

    const-string v67, "vasto"

    const-string v68, "rex"

    const-string v69, "aeolus"

    const-string v70, "antro"

    const-string v71, "luctantis"

    const-string v72, "ventos"

    const-string v73, "tempestatesque"

    const-string v74, "sonoras"

    const-string v75, "imperio"

    const-string v76, "premit"

    const-string v77, "ac"

    const-string v78, "vinclis"

    const-string v79, "et"

    const-string v80, "carcere"

    const-string v81, "frenat"

    const-string v82, "illi"

    const-string v83, "indignantes"

    const-string v84, "magno"

    const-string v85, "cum"

    const-string v86, "murmure"

    const-string v87, "montis"

    const-string v88, "circum"

    const-string v89, "claustra"

    const-string v90, "fremunt"

    const-string v91, "celsa"

    const-string v92, "sedet"

    const-string v93, "aeolus"

    const-string v94, "arce"

    const-string v95, "sceptra"

    const-string v96, "tenens"

    const-string v97, "mollitque"

    const-string v98, "animos"

    const-string v99, "et"

    const-string v100, "temperat"

    const-string v101, "iras"

    const-string v102, "ni"

    const-string v103, "faciat"

    const-string v104, "maria"

    const-string v105, "ac"

    const-string v106, "terras"

    const-string v107, "caelumque"

    const-string v108, "profundum"

    const-string v109, "quippe"

    const-string v110, "ferant"

    const-string v111, "rapidi"

    const-string v112, "secum"

    const-string v113, "verrantque"

    const-string v114, "per"

    const-string v115, "auras"

    const-string v116, "sed"

    const-string v117, "pater"

    const-string v118, "omnipotens"

    const-string v119, "speluncis"

    const-string v120, "abdidit"

    const-string v121, "atris"

    const-string v122, "hoc"

    const-string v123, "metuens"

    const-string v124, "molemque"

    const-string v125, "et"

    const-string v126, "montis"

    const-string v127, "insuper"

    const-string v128, "altos"

    const-string v129, "imposuit"

    const-string v130, "regemque"

    const-string v131, "dedit"

    const-string v132, "qui"

    const-string v133, "foedere"

    const-string v134, "certo"

    const-string v135, "et"

    const-string v136, "premere"

    const-string v137, "et"

    const-string v138, "laxas"

    const-string v139, "sciret"

    const-string v140, "dare"

    filled-new-array/range {v0 .. v142}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->WORDS:[Ljava/lang/String;

    const-string v6, "test"

    const-string v7, "any"

    const-string v1, "corp"

    const-string v2, "your"

    const-string v3, "my"

    const-string v4, "sample"

    const-string v5, "company"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->DNS1:[Ljava/lang/String;

    const-string v8, "com"

    const-string v9, "edu"

    const-string v1, "com"

    const-string v2, "org"

    const-string v3, "com"

    const-string v4, "gov"

    const-string v5, "org"

    const-string v6, "com"

    const-string v7, "org"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->DNS2:[Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "href"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->HREF:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v2, "id"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->ID:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v4, "type"

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->XSI_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "arrayType"

    const-string v4, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->ENC_ARRAYTYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "offset"

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->ENC_OFFSET:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->SKIPPED_SOAP_ATTRS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_picker:Ljava/util/Random;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_typeStack:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_soapEnc:Z

    return-void
.end method

.method private closestBuiltin(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isBuiltinType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static crackQName(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSampleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lorg/apache/xmlbeans/XmlObject$Factory;->newInstance()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    new-instance v2, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;-><init>(Z)V

    invoke-direct {v2, p0, v1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->createSampleForType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlCursor;)V

    new-instance p0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    const-string v1, "SAVE_PRETTY_PRINT"

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    const-string v1, "SAVE_PRETTY_PRINT_INDENT"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;I)V

    const-string v1, "SAVE_AGGRESSIVE_NAMESPACES"

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createSampleForType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlCursor;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_typeStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_typeStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isURType()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processAttributes(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlCursor;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->WORDS:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/XmlCursor;->insertChars(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processParticle(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/XmlCursor;->insertChars(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentModel()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processParticle(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processSimpleType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlCursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_typeStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_7
    :goto_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processSimpleType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlCursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_typeStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :goto_3
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_typeStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    throw p1
.end method

.method private determineMinMaxForSample(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;)I
    .locals 5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getIntMinOccurs()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getIntMaxOccurs()I

    move-result v1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v2, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_nElements:I

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_4

    if-nez v0, :cond_3

    const-string p1, "Zero or more repetitions:"

    :goto_1
    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/XmlCursor;->insertComment(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " or more repetitions:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getIntMaxOccurs()I

    move-result v3

    if-le v3, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getMaxOccurs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " repetitions:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, "Optional:"

    goto :goto_1

    :goto_2
    return v2
.end method

.method private formatDate(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 9

    new-instance v0, Lorg/apache/xmlbeans/GDateBuilder;

    new-instance v1, Ljava/util/Date;

    const v2, 0x1e13380

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1e

    add-long/2addr v4, v6

    const-wide v6, 0x757b12c00L

    mul-long v4, v4, v6

    add-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Date;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v6

    goto/16 :goto_9

    :pswitch_0
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlGMonth;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlGMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlGMonth;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v5

    if-gtz v5, :cond_2

    :cond_1
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    :cond_2
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlGMonth;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlGMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_3
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlGMonth;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_4

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_4
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_5
    :goto_1
    move-object v8, v6

    move-object v6, v1

    move-object v1, v8

    goto/16 :goto_9

    :pswitch_1
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlGDay;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlGDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v6

    :goto_2
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlGDay;

    if-eqz v4, :cond_8

    if-eqz v1, :cond_7

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v5

    if-gtz v5, :cond_8

    :cond_7
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    :cond_8
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlGDay;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlGDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_9
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlGDay;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_a

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_a
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    goto :goto_1

    :pswitch_2
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlGMonthDay;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlGMonthDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    goto :goto_3

    :cond_b
    move-object v1, v6

    :goto_3
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlGMonthDay;

    if-eqz v4, :cond_d

    if-eqz v1, :cond_c

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGMonthDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v5

    if-gtz v5, :cond_d

    :cond_c
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGMonthDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    :cond_d
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlGMonthDay;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlGMonthDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_e
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlGMonthDay;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_f

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGMonthDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_f
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGMonthDay;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_3
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlGYear;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlGYear;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    goto :goto_4

    :cond_10
    move-object v1, v6

    :goto_4
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlGYear;

    if-eqz v4, :cond_12

    if-eqz v1, :cond_11

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGYear;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v5

    if-gtz v5, :cond_12

    :cond_11
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGYear;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    :cond_12
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlGYear;

    if-eqz v3, :cond_13

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlGYear;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_13
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlGYear;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_14

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGYear;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_14
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGYear;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_4
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlGYearMonth;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlGYearMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    goto :goto_5

    :cond_15
    move-object v1, v6

    :goto_5
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlGYearMonth;

    if-eqz v4, :cond_17

    if-eqz v1, :cond_16

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGYearMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v5

    if-gtz v5, :cond_17

    :cond_16
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlGYearMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    :cond_17
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlGYearMonth;

    if-eqz v3, :cond_18

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlGYearMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_18
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlGYearMonth;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_19

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGYearMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_19
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlGYearMonth;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_5
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDate;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlDate;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    goto :goto_6

    :cond_1a
    move-object v1, v6

    :goto_6
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlDate;

    if-eqz v4, :cond_1c

    if-eqz v1, :cond_1b

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlDate;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v5

    if-gtz v5, :cond_1c

    :cond_1b
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlDate;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    :cond_1c
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlDate;

    if-eqz v3, :cond_1d

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlDate;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_1d
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlDate;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_1e

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlDate;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_1e
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlDate;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_6
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlTime;

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    goto :goto_7

    :cond_1f
    move-object v1, v6

    :goto_7
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlTime;

    if-eqz v4, :cond_21

    if-eqz v1, :cond_20

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v5

    if-gtz v5, :cond_21

    :cond_20
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    :cond_21
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlTime;

    if-eqz v3, :cond_22

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_22
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlTime;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_23

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_23
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    goto/16 :goto_1

    :pswitch_7
    invoke-interface {p1, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlDateTime;

    if-eqz v1, :cond_24

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlDateTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    goto :goto_8

    :cond_24
    move-object v1, v6

    :goto_8
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/XmlDateTime;

    if-eqz v4, :cond_26

    if-eqz v1, :cond_25

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlDateTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v5

    if-gtz v5, :cond_26

    :cond_25
    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlDateTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v1

    :cond_26
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlDateTime;

    if-eqz v3, :cond_27

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlDateTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    :cond_27
    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlDateTime;

    if-eqz v2, :cond_5

    if-eqz v6, :cond_28

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlDateTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v3

    if-ltz v3, :cond_5

    :cond_28
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlDateTime;->getGDateValue()Lorg/apache/xmlbeans/GDate;

    move-result-object v6

    goto/16 :goto_1

    :goto_9
    const/16 v2, 0x8

    const/16 v3, 0xb

    if-eqz v6, :cond_29

    if-nez v1, :cond_29

    invoke-virtual {v6, v0}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v1

    if-ltz v1, :cond_2d

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Calendar;)V

    :goto_a
    move-object v0, v1

    goto/16 :goto_b

    :cond_29
    if-nez v6, :cond_2a

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v1

    if-gtz v1, :cond_2d

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Calendar;)V

    goto :goto_a

    :cond_2a
    if-eqz v6, :cond_2d

    if-eqz v1, :cond_2d

    invoke-virtual {v6, v0}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v2

    if-gez v2, :cond_2b

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/GDate;->compareToGDate(Lorg/apache/xmlbeans/GDateSpecification;)I

    move-result v2

    if-gtz v2, :cond_2d

    :cond_2b
    invoke-virtual {v6}, Lorg/apache/xmlbeans/GDate;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDate;->getCalendar()Lorg/apache/xmlbeans/XmlCalendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    :cond_2c
    new-instance v1, Lorg/apache/xmlbeans/GDateBuilder;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/GDateBuilder;-><init>(Ljava/util/Calendar;)V

    goto :goto_a

    :cond_2d
    :goto_b
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/GDateBuilder;->setBuiltinTypeCode(I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->clearTimeZone()V

    :cond_2e
    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDateBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlDecimal;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlDecimal;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlDecimal;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlDecimal;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlDecimal;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlDecimal;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-gez v5, :cond_3

    :cond_2
    move-object p1, v2

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    const/4 v5, 0x6

    invoke-interface {p2, v5}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/XmlDecimal;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlDecimal;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-lez v6, :cond_5

    :cond_4
    move-object v1, v5

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    :goto_2
    const/4 v6, 0x7

    invoke-interface {p2, v6}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/XmlDecimal;

    const/4 v7, -0x1

    if-eqz v6, :cond_8

    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlDecimal;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->intValue()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_6

    const/16 v10, 0x39

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/math/BigDecimal;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1, v9}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v8

    if-lez v8, :cond_7

    move-object v1, v9

    const/4 v5, 0x1

    :cond_7
    invoke-virtual {v9}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v8

    if-eqz p1, :cond_9

    invoke-virtual {p1, v8}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    if-gez v9, :cond_9

    move-object p1, v8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, -0x1

    :cond_9
    :goto_4
    if-nez p1, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v8

    :goto_5
    if-nez v1, :cond_b

    const/4 v9, -0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    :goto_6
    if-gtz v8, :cond_d

    if-nez v8, :cond_c

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v8, 0x1

    :goto_8
    if-ltz v9, :cond_f

    if-nez v9, :cond_e

    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v9, 0x1

    :goto_a
    const/16 v10, 0x8

    invoke-interface {p2, v10}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/XmlDecimal;

    if-nez p2, :cond_10

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v4}, Ljava/math/BigDecimal;-><init>(I)V

    goto :goto_c

    :cond_10
    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlDecimal;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->intValue()I

    move-result v7

    if-lez v7, :cond_12

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v10, "0."

    invoke-direct {p2, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    :goto_b
    if-ge v10, v7, :cond_11

    const/16 v11, 0x30

    invoke-virtual {p2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_11
    const/16 v10, 0x31

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v10, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v10, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p2, v10

    goto :goto_c

    :cond_12
    new-instance p2, Ljava/math/BigDecimal;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-direct {p2, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    :goto_c
    if-eqz v8, :cond_13

    if-eqz v9, :cond_13

    goto :goto_d

    :cond_13
    if-eqz v8, :cond_15

    if-nez v9, :cond_15

    if-eqz v5, :cond_14

    move-object v0, v1

    goto :goto_d

    :cond_14
    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_d

    :cond_15
    if-nez v8, :cond_17

    if-eqz v9, :cond_17

    if-eqz v2, :cond_16

    move-object v0, p1

    goto :goto_d

    :cond_16
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_17
    :goto_d
    new-instance p1, Ljava/math/BigDecimal;

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p2, v0

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {p2}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ltz v2, :cond_18

    invoke-virtual {p2, v4}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    if-lez v7, :cond_1a

    if-ltz v6, :cond_19

    sub-int/2addr v6, v1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_f

    :cond_19
    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_f

    :cond_1a
    if-nez v7, :cond_1b

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_1b
    :goto_f
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatDuration(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlDuration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlDuration;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlDuration;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlDuration;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlDuration;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlDuration;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlDuration;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlDuration;->getGDurationValue()Lorg/apache/xmlbeans/GDuration;

    move-result-object v1

    :cond_3
    new-instance p1, Lorg/apache/xmlbeans/GDurationBuilder;

    invoke-direct {p1}, Lorg/apache/xmlbeans/GDurationBuilder;-><init>()V

    const v4, 0xc3500

    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/GDurationBuilder;->setSecond(I)V

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/GDurationBuilder;->setMonth(I)V

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getYear()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/GDurationBuilder;->setYear(I)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getMonth()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/GDurationBuilder;->setMonth(I)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getDay()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/GDurationBuilder;->setDay(I)V

    :cond_6
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getHour()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/GDurationBuilder;->setHour(I)V

    :cond_7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getMinute()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/GDurationBuilder;->setMinute(I)V

    :cond_8
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getSecond()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/GDurationBuilder;->setSecond(I)V

    :cond_9
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getFraction()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-gez v4, :cond_a

    invoke-virtual {v0}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setFraction(Ljava/math/BigDecimal;)V

    :cond_a
    if-eqz v2, :cond_11

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getYear()I

    move-result v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v4

    if-le v0, v4, :cond_b

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setYear(I)V

    :cond_b
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getMonth()I

    move-result v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v4

    if-le v0, v4, :cond_c

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setMonth(I)V

    :cond_c
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getDay()I

    move-result v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v4

    if-le v0, v4, :cond_d

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setDay(I)V

    :cond_d
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getHour()I

    move-result v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v4

    if-le v0, v4, :cond_e

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setHour(I)V

    :cond_e
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getMinute()I

    move-result v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v4

    if-le v0, v4, :cond_f

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setMinute(I)V

    :cond_f
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getSecond()I

    move-result v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v4

    if-le v0, v4, :cond_10

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setSecond(I)V

    :cond_10
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {v2}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setFraction(Ljava/math/BigDecimal;)V

    :cond_11
    if-eqz v3, :cond_18

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getYear()I

    move-result v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v2

    if-gt v0, v2, :cond_12

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setYear(I)V

    :cond_12
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getMonth()I

    move-result v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v2

    if-gt v0, v2, :cond_13

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setMonth(I)V

    :cond_13
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getDay()I

    move-result v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v2

    if-gt v0, v2, :cond_14

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setDay(I)V

    :cond_14
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getHour()I

    move-result v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v2

    if-gt v0, v2, :cond_15

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setHour(I)V

    :cond_15
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getMinute()I

    move-result v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v2

    if-gt v0, v2, :cond_16

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setMinute(I)V

    :cond_16
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getSecond()I

    move-result v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v2

    if-gt v0, v2, :cond_17

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setSecond(I)V

    :cond_17
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_18

    invoke-virtual {v3}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    new-instance v2, Ljava/math/BigDecimal;

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setFraction(Ljava/math/BigDecimal;)V

    :cond_18
    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getYear()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v2

    if-le v0, v2, :cond_19

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getYear()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setYear(I)V

    :cond_19
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getMonth()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v2

    if-le v0, v2, :cond_1a

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getMonth()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setMonth(I)V

    :cond_1a
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getDay()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v2

    if-le v0, v2, :cond_1b

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getDay()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setDay(I)V

    :cond_1b
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getHour()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v2

    if-le v0, v2, :cond_1c

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getHour()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setHour(I)V

    :cond_1c
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getMinute()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v2

    if-le v0, v2, :cond_1d

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getMinute()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setMinute(I)V

    :cond_1d
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getSecond()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v2

    if-le v0, v2, :cond_1e

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getSecond()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setSecond(I)V

    :cond_1e
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {v1}, Lorg/apache/xmlbeans/GDuration;->getFraction()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/GDurationBuilder;->setFraction(Ljava/math/BigDecimal;)V

    :cond_1f
    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->normalize()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/GDurationBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final formatQName(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->prefixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 17
    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, ":"

    .line 29
    .line 30
    invoke-static {v0, p0}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_1
    return-object p0
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

.method private formatToLength(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    if-nez v1, :cond_2

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/apache/xmlbeans/SimpleValue;

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/xmlbeans/SimpleValue;->getIntValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_3

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object p1
.end method

.method private pick(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_picker:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method private pick([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result v0

    aget-object p1, p1, v0

    return-object p1
.end method

.method private pickLength(Lorg/apache/xmlbeans/SchemaType;)I
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlInteger;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlInteger;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/XmlInteger;

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/SchemaType;->getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/XmlInteger;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlInteger;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :goto_0
    if-nez p1, :cond_2

    const p1, 0x7fffffff

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlInteger;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :goto_1
    if-nez v0, :cond_3

    if-lt p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    add-int/lit8 v0, v1, 0x2

    if-le p1, v0, :cond_4

    move p1, v0

    :cond_4
    if-ge p1, v1, :cond_5

    move p1, v1

    :cond_5
    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method private processAll(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processParticle(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    if-eqz p3, :cond_0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->WORDS:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/XmlCursor;->insertChars(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processAttributes(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlCursor;)V
    .locals 6

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_soapEnc:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->XSI_TYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {p2, v0}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatQName(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_soapEnc:Z

    if-eqz v3, :cond_2

    sget-object v3, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->SKIPPED_SOAP_ATTRS:Ljava/util/Set;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->ENC_ARRAYTYPE:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/SchemaAttributeModel;->getAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaLocalAttribute;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/soap/SchemaWSDLArrayType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/soap/SchemaWSDLArrayType;->getWSDLArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/soap/SOAPArrayType;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-static {p2, v5}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatQName(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/soap/SOAPArrayType;->soap11DimensionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->getDefaultText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    if-nez v3, :cond_3

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->sampleDataForSimpleType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-interface {p2, v4, v3}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private processChoice(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "You have a CHOICE of the next "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " items at this level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/xmlbeans/XmlCursor;->insertComment(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processParticle(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processElement(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V
    .locals 1

    check-cast p1, Lorg/apache/xmlbeans/SchemaLocalElement;

    iget-boolean p3, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_soapEnc:Z

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/xmlbeans/XmlCursor;->insertElement(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/apache/xmlbeans/XmlCursor;->insertElement(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget p3, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_nElements:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->_nElements:I

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaField;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->createSampleForType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlCursor;)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-void
.end method

.method private processParticle(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->determineMinMaxForSample(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;)I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processWildCard(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processElement(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processSequence(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processChoice(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processAll(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private processSequence(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->processParticle(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V

    if-eqz p3, :cond_0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->WORDS:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/apache/xmlbeans/XmlCursor;->insertChars(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processSimpleType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlCursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->sampleDataForSimpleType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/XmlCursor;->insertChars(Ljava/lang/String;)V

    return-void
.end method

.method private processWildCard(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/XmlCursor;Z)V
    .locals 0

    const-string p1, "You may enter ANY elements at this point"

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/XmlCursor;->insertComment(Ljava/lang/String;)V

    const-string p1, "AnyElement"

    invoke-interface {p2, p1}, Lorg/apache/xmlbeans/XmlCursor;->insertElement(Ljava/lang/String;)V

    return-void
.end method

.method private sampleDataForSimpleType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "anyType"

    return-object p1

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/XmlAnySimpleType;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "anySimpleType"

    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pickLength(Lorg/apache/xmlbeans/SchemaType;)I

    move-result p1

    if-lez p1, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->sampleDataForSimpleType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_3

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->sampleDataForSimpleType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    array-length v0, p1

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result v0

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->sampleDataForSimpleType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v3, v0

    if-lez v3, :cond_7

    array-length p1, v0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result p1

    aget-object p1, v0, p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDate(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDuration(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->closestBuiltin(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    const/16 v1, 0xc

    const-string v2, "string"

    if-eq v0, v1, :cond_9

    const/16 v1, 0x23

    if-eq v0, v1, :cond_9

    const/16 v1, 0x24

    if-eq v0, v1, :cond_8

    goto :goto_1

    :cond_8
    const-string v2, "token"

    :cond_9
    :goto_1
    invoke-direct {p0, v2, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatToLength(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->closestBuiltin(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    const-string v0, "1000.00"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-string v0, "6"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-string v0, "5"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    const-string v0, "7"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-string v0, "11"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    const-string v0, "201"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    const-string v0, "200"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    const-string v0, "-201"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    const-string v0, "-200"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c
    const-string v0, "2"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d
    const-string v0, "1"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_e
    const-string v0, "3"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_f
    const-string v0, "10"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_10
    const-string v0, "100"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatDecimal(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_11
    const-string p1, "1.051732E7"

    return-object p1

    :pswitch_12
    const-string p1, "1.5E2"

    return-object p1

    :pswitch_13
    const-string v0, "notation"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatToLength(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14
    const-string v0, "qname"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatToLength(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_15
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "http://www."

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->DNS1:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->DNS2:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->WORDS:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatToLength(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_16
    sget-object v0, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->WORDS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatToLength(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/HexBin;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_17
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->WORDS:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->formatToLength(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/Base64;->encode([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :pswitch_18
    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->pick(I)I

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "true"

    goto :goto_3

    :cond_a
    const-string p1, "false"

    :goto_3
    return-object p1

    :pswitch_19
    const-string p1, "anything"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
