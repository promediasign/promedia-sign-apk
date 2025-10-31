.class public Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;
.super Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaTypeSystem;


# static fields
.field public static final ARRAY_TYPE:Ljava/lang/String; = "arrayType"

.field private static final EMPTY_SCHEMAANNOTATION_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

.field private static final EMPTY_SCHEMAATTRIBUTEGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

.field private static final EMPTY_SCHEMAELEMENT_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

.field private static final EMPTY_SCHEMAMODELGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

.field private static final EMPTY_SCHEMATYPE_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

.field public static final SOAPENC:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/encoding/"

.field public static final SOAP_ARRAY:Ljava/lang/String; = "Array"

.field private static _global:Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;

.field static synthetic class$org$apache$xmlbeans$impl$schema$SoapEncSchemaTypeSystem:Ljava/lang/Class;


# instance fields
.field private _container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

.field private _handlesToObjects:Ljava/util/Map;

.field private arrayType:Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

.field private soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

.field private soapArrayHandle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaType;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMATYPE_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMAELEMENT_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMAMODELGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMAATTRIBUTEGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMAANNOTATION_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;

    return-void
.end method

.method private constructor <init>()V
    .locals 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    const-string v2, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Z)V

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    new-instance v3, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v5, "Array"

    invoke-direct {v3, v2, v5}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArrayHandle:Ljava/lang/String;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setComplexTypeVariety(I)V

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v5, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_TYPE:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setBaseDepth(I)V

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setDerivationType(I)V

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setSimpleTypeVariety(I)V

    new-instance v8, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-direct {v8}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;-><init>()V

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    sget-object v3, Lorg/apache/xmlbeans/QNameSet;->ALL:Lorg/apache/xmlbeans/QNameSet;

    invoke-virtual {v8, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V

    new-array v7, v4, [Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleChildren([Lorg/apache/xmlbeans/SchemaParticle;)V

    new-instance v9, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;

    invoke-direct {v9}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;-><init>()V

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    invoke-virtual {v9, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    invoke-virtual {v9, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setWildcardProcess(I)V

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMinOccurs(Ljava/math/BigInteger;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setMaxOccurs(Ljava/math/BigInteger;)V

    invoke-virtual {v9, v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setTransitionRules(Lorg/apache/xmlbeans/QNameSet;Z)V

    aput-object v9, v7, v6

    new-instance v9, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;

    invoke-direct {v9}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;-><init>()V

    invoke-virtual {v9, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardProcess(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {v3, v1, v4, v4}, Lorg/apache/xmlbeans/QNameSet;->forSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->setWildcardSet(Lorg/apache/xmlbeans/QNameSet;)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;-><init>()V

    new-instance v11, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "id"

    const-string v4, ""

    invoke-direct {v11, v4, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ID:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v12

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v1

    invoke-virtual/range {v10 .. v20}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->init(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;ILjava/lang/String;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/XmlValueRef;ZLorg/apache/xmlbeans/soap/SOAPArrayType;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->addAttribute(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;-><init>()V

    new-instance v3, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v5, "href"

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_ANY_URI:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v23

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v31}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->init(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;ILjava/lang/String;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/XmlValueRef;ZLorg/apache/xmlbeans/soap/SOAPArrayType;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->addAttribute(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;-><init>()V

    new-instance v11, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "arrayType"

    invoke-direct {v11, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_STRING:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v12

    move-object v10, v1

    invoke-virtual/range {v10 .. v20}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->init(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;ILjava/lang/String;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/XmlValueRef;ZLorg/apache/xmlbeans/soap/SOAPArrayType;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->addAttribute(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;-><init>()V

    new-instance v5, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v6, "offset"

    invoke-direct {v5, v2, v6}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v23

    move-object/from16 v21, v1

    move-object/from16 v22, v5

    invoke-virtual/range {v21 .. v31}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->init(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;ILjava/lang/String;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/XmlValueRef;ZLorg/apache/xmlbeans/soap/SOAPArrayType;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaAttributeModelImpl;->addAttribute(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    iget-object v7, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v12, 0x0

    move-object v10, v11

    invoke-virtual/range {v7 .. v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->setContentModel(Lorg/apache/xmlbeans/SchemaParticle;Lorg/apache/xmlbeans/SchemaAttributeModel;Ljava/util/Map;Ljava/util/Map;Z)V

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-direct {v1, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->arrayType:Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->getRef()Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;)V

    iget-object v6, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->arrayType:Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    new-instance v7, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v7, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v16}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->init(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType$Ref;ILjava/lang/String;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/schema/XmlValueRef;ZLorg/apache/xmlbeans/soap/SOAPArrayType;Lorg/apache/xmlbeans/SchemaAnnotation;Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArrayHandle:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->arrayType:Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setImmutable()V

    return-void
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

.method public static get()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_global:Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;

    return-object v0
.end method


# virtual methods
.method public annotations()[Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMAANNOTATION_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object v0
.end method

.method public attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMAATTRIBUTEGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object v0
.end method

.method public attributeTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMATYPE_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public documentTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMATYPE_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public findAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "arrayType"

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->arrayType:Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findAttributeGroup(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->findAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaGlobalAttribute;->getRef()Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDocumentType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findModelGroup(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Array"

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->findType(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->class$org$apache$xmlbeans$impl$schema$SoapEncSchemaTypeSystem:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SoapEncSchemaTypeSystem"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->class$org$apache$xmlbeans$impl$schema$SoapEncSchemaTypeSystem:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "schema.typesystem.soapenc.builtin"

    return-object v0
.end method

.method public getSourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->arrayType:Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMAELEMENT_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    return-object v0
.end method

.method public globalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/xmlbeans/SchemaType;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArray:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->soapArrayHandle:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNamespaceDefined(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->EMPTY_SCHEMAMODELGROUP_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object v0
.end method

.method public resolve()V
    .locals 0

    return-void
.end method

.method public resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaComponent;

    return-object p1
.end method

.method public save(Lorg/apache/xmlbeans/Filer;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The builtin soap encoding schema type system cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveToDirectory(Ljava/io/File;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The builtin soap encoding schema type system cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SoapEncSchemaTypeSystem;->_handlesToObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    return-object p1
.end method
