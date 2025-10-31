.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private canonicalizationMethod:Ljava/lang/String;

.field private digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private executionTime:Ljava/util/Date;

.field private includeEntireCertificateChain:Z

.field private includeIssuerSerial:Z

.field private includeKeyValue:Z

.field private key:Ljava/security/PrivateKey;

.field private keyInfoFactory:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field namespacePrefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private opcPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/apache/poi/openxml4j/opc/OPCPackage;",
            ">;"
        }
    .end annotation
.end field

.field private packageSignatureId:Ljava/lang/String;

.field private provider:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private proxyUrl:Ljava/lang/String;

.field private revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

.field private signatureDescription:Ljava/lang/String;

.field private signatureFacets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;"
        }
    .end annotation
.end field

.field private signatureFactory:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/xml/crypto/dsig/XMLSignatureFactory;",
            ">;"
        }
    .end annotation
.end field

.field signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

.field private signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

.field private signingCertificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private tspOldProtocol:Z

.field private tspPass:Ljava/lang/String;

.field private tspRequestPolicy:Ljava/lang/String;

.field private tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

.field private tspUrl:Ljava/lang/String;

.field private tspUser:Ljava/lang/String;

.field private tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

.field private uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

.field private userAgent:Ljava/lang/String;

.field private xadesCanonicalizationMethod:Ljava/lang/String;

.field private xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private xadesIssuerNameNoReverseOrder:Z

.field private xadesRole:Ljava/lang/String;

.field private xadesSignatureId:Ljava/lang/String;

.field private xadesSignaturePolicyImplied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->opcPackage:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFactory:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyInfoFactory:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->provider:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    const-string v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeIssuerSerial:Z

    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeKeyValue:Z

    new-instance v3, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    invoke-direct {v3}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspOldProtocol:Z

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v2, "1.3.6.1.4.1.13762.3"

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    const-string v2, "POI XmlSign Service TSP Client"

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesRole:Ljava/lang/String;

    const-string v2, "idSignedProperties"

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    const-string v2, "http://www.w3.org/2001/10/xml-exc-c14n#"

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    const-string v1, "idPackageSignature"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    const-string v1, "Office OpenXML Document"

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    return-void
.end method

.method public static getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string p0, "http://www.w3.org/2001/04/xmlenc#ripemd160"

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported for signing."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "http://www.w3.org/2001/04/xmlenc#sha512"

    return-object p0

    :cond_2
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#sha384"

    return-object p0

    :cond_3
    const-string p0, "http://www.w3.org/2001/04/xmlenc#sha256"

    return-object p0

    :cond_4
    const-string p0, "http://www.w3.org/2001/04/xmldsig-more#sha224"

    return-object p0

    :cond_5
    const-string p0, "http://www.w3.org/2000/09/xmldsig#sha1"

    return-object p0
.end method

.method public static nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCanonicalizationMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getDigestMethodUri()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecutionTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    return-object v0
.end method

.method public getHashMagic()[B
    .locals 23

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x48

    const/16 v2, -0x7a

    const/16 v3, 0x60

    const/16 v4, 0x11

    const/16 v5, 0x2b

    const/16 v6, 0xe

    const/16 v7, 0x10

    const/16 v8, 0xc

    const/16 v9, 0xa

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/16 v12, 0xd

    const/4 v13, 0x5

    const/4 v14, 0x7

    const/16 v15, 0xb

    const/16 v16, 0x9

    const/16 v17, 0x1

    const/16 v18, 0x6

    const/16 v19, 0x3

    const/16 v20, 0x30

    const/16 v21, 0x2

    const/16 v22, 0x4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not supported for signing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v0, v12, [B

    aput-byte v20, v0, v11

    const/16 v1, 0x1f

    aput-byte v1, v0, v17

    aput-byte v20, v0, v21

    aput-byte v14, v0, v19

    aput-byte v18, v0, v22

    aput-byte v13, v0, v13

    aput-byte v5, v0, v18

    const/16 v1, 0x24

    aput-byte v1, v0, v14

    aput-byte v19, v0, v10

    aput-byte v21, v0, v16

    aput-byte v17, v0, v9

    aput-byte v22, v0, v15

    const/16 v1, 0x14

    aput-byte v1, v0, v8

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v12, [B

    aput-byte v20, v0, v11

    const/16 v1, 0x1b

    aput-byte v1, v0, v17

    aput-byte v20, v0, v21

    aput-byte v14, v0, v19

    aput-byte v18, v0, v22

    aput-byte v13, v0, v13

    aput-byte v5, v0, v18

    const/16 v1, 0x24

    aput-byte v1, v0, v14

    aput-byte v19, v0, v10

    aput-byte v21, v0, v16

    aput-byte v21, v0, v9

    aput-byte v22, v0, v15

    aput-byte v7, v0, v8

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v4, [B

    aput-byte v20, v0, v11

    const/16 v4, 0x4f

    aput-byte v4, v0, v17

    aput-byte v20, v0, v21

    aput-byte v15, v0, v19

    aput-byte v18, v0, v22

    aput-byte v16, v0, v13

    aput-byte v3, v0, v18

    aput-byte v2, v0, v14

    aput-byte v1, v0, v10

    aput-byte v17, v0, v16

    const/16 v1, 0x65

    aput-byte v1, v0, v9

    aput-byte v19, v0, v15

    aput-byte v22, v0, v8

    aput-byte v21, v0, v12

    aput-byte v19, v0, v6

    const/16 v1, 0xf

    aput-byte v22, v0, v1

    const/16 v1, 0x40

    aput-byte v1, v0, v7

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v4, [B

    aput-byte v20, v0, v11

    const/16 v4, 0x3f

    aput-byte v4, v0, v17

    aput-byte v20, v0, v21

    aput-byte v15, v0, v19

    aput-byte v18, v0, v22

    aput-byte v16, v0, v13

    aput-byte v3, v0, v18

    aput-byte v2, v0, v14

    aput-byte v1, v0, v10

    aput-byte v17, v0, v16

    const/16 v1, 0x65

    aput-byte v1, v0, v9

    aput-byte v19, v0, v15

    aput-byte v22, v0, v8

    aput-byte v21, v0, v12

    aput-byte v21, v0, v6

    const/16 v1, 0xf

    aput-byte v22, v0, v1

    aput-byte v20, v0, v7

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v4, [B

    aput-byte v20, v0, v11

    const/16 v4, 0x2f

    aput-byte v4, v0, v17

    aput-byte v20, v0, v21

    aput-byte v15, v0, v19

    aput-byte v18, v0, v22

    aput-byte v16, v0, v13

    aput-byte v3, v0, v18

    aput-byte v2, v0, v14

    aput-byte v1, v0, v10

    aput-byte v17, v0, v16

    const/16 v1, 0x65

    aput-byte v1, v0, v9

    aput-byte v19, v0, v15

    aput-byte v22, v0, v8

    aput-byte v21, v0, v12

    aput-byte v17, v0, v6

    const/16 v1, 0xf

    aput-byte v22, v0, v1

    const/16 v1, 0x20

    aput-byte v1, v0, v7

    goto :goto_0

    :pswitch_5
    new-array v0, v4, [B

    aput-byte v20, v0, v11

    aput-byte v5, v0, v17

    aput-byte v20, v0, v21

    aput-byte v15, v0, v19

    aput-byte v18, v0, v22

    aput-byte v16, v0, v13

    aput-byte v3, v0, v18

    aput-byte v2, v0, v14

    aput-byte v1, v0, v10

    aput-byte v17, v0, v16

    const/16 v1, 0x65

    aput-byte v1, v0, v9

    aput-byte v19, v0, v15

    aput-byte v22, v0, v8

    aput-byte v21, v0, v12

    aput-byte v22, v0, v6

    const/16 v1, 0xf

    aput-byte v22, v0, v1

    const/16 v1, 0x1c

    aput-byte v1, v0, v7

    goto :goto_0

    :pswitch_6
    new-array v0, v12, [B

    aput-byte v20, v0, v11

    const/16 v1, 0x1f

    aput-byte v1, v0, v17

    aput-byte v20, v0, v21

    aput-byte v14, v0, v19

    aput-byte v18, v0, v22

    aput-byte v13, v0, v13

    aput-byte v5, v0, v18

    aput-byte v6, v0, v14

    aput-byte v19, v0, v10

    aput-byte v21, v0, v16

    const/16 v1, 0x1a

    aput-byte v1, v0, v9

    aput-byte v22, v0, v15

    const/16 v1, 0x14

    aput-byte v1, v0, v8

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getKeyInfoFactory()Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyInfoFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    if-nez v0, :cond_0

    const-string v0, "DOM"

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setKeyInfoFactory(Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;)V

    :cond_0
    return-object v0
.end method

.method public getNamespacePrefixes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    return-object v0
.end method

.method public getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->opcPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getPackageSignatureId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->provider:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/security/Provider;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    const-string v3, "jsr105Provider"

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "org.apache.jcp.xml.dsig.internal.dom.XMLDSigRI"

    .line 20
    .line 21
    const-string v5, "org.jcp.xml.dsig.internal.dom.XMLDSigRI"

    .line 22
    .line 23
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    const/4 v5, 0x3

    .line 29
    if-ge v4, v5, :cond_1

    .line 30
    .line 31
    aget-object v5, v3, v4

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    move-object v2, v6

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    sget-object v6, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->LOG:Lorg/apache/poi/util/POILogger;

    .line 49
    .line 50
    const-string v7, "XMLDsig-Provider \'"

    .line 51
    .line 52
    const-string v8, "\' can\'t be found - trying next."

    .line 53
    .line 54
    invoke-static {v7, v5, v8}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    new-array v7, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v5, v7, v0

    .line 61
    .line 62
    invoke-virtual {v6, v1, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/2addr v4, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 71
    .line 72
    const-string v1, "JRE doesn\'t support default xml signature provider - set jsr105Provider system property!"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
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
.end method

.method public getProxyUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->proxyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRevocationDataService()Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    return-object v0
.end method

.method public getSignatureDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFacets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    return-object v0
.end method

.method public getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    if-nez v0, :cond_0

    const-string v0, "DOM"

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setSignatureFactory(Ljavax/xml/crypto/dsig/XMLSignatureFactory;)V

    :cond_0
    return-object v0
.end method

.method public getSignatureMarshalListener()Lorg/w3c/dom/events/EventListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    return-object v0
.end method

.method public getSignatureMethodUri()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160"

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not supported for signing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha512"

    return-object v0

    :cond_2
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha384"

    return-object v0

    :cond_3
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"

    return-object v0

    :cond_4
    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha224"

    return-object v0

    :cond_5
    const-string v0, "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

    return-object v0
.end method

.method public getSignaturePolicyService()Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    return-object v0
.end method

.method public getSigningCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signingCertificateChain:Ljava/util/List;

    return-object v0
.end method

.method public getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getTspPass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspPass:Ljava/lang/String;

    return-object v0
.end method

.method public getTspRequestPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getTspService()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    return-object v0
.end method

.method public getTspUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTspUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUser:Ljava/lang/String;

    return-object v0
.end method

.method public getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    return-object v0
.end method

.method public getUriDereferencer()Ljavax/xml/crypto/URIDereferencer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getXadesCanonicalizationMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getXadesDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getXadesRole()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesRole:Ljava/lang/String;

    return-object v0
.end method

.method public getXadesSignatureId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    const-string v1, "idSignedProperties"

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public init(Z)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->opcPackage:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/dsig/OOXMLURIDereferencer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    instance-of v1, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;

    invoke-interface {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;->setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    const-string v1, "http://schemas.openxmlformats.org/package/2006/digital-signature"

    const-string v2, "mdssi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    const-string v1, "http://uri.etsi.org/01903/v1.3.2#"

    const-string v2, "xd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    if-nez p1, :cond_4

    new-instance p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    invoke-direct {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    instance-of v0, p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;

    invoke-interface {p1, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;->setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    :cond_5
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$SignatureConfigurable;->setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-direct {p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V

    new-instance p1, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;

    invoke-direct {p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V

    new-instance p1, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;

    invoke-direct {p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESSignatureFacet;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V

    new-instance p1, Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;

    invoke-direct {p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/Office2010SignatureFacet;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->addSignatureFacet(Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;)V

    :cond_7
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "opcPackage is null"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isIncludeEntireCertificateChain()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    return v0
.end method

.method public isIncludeIssuerSerial()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeIssuerSerial:Z

    return v0
.end method

.method public isIncludeKeyValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeKeyValue:Z

    return v0
.end method

.method public isTspOldProtocol()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspOldProtocol:Z

    return v0
.end method

.method public isXadesIssuerNameNoReverseOrder()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    return v0
.end method

.method public isXadesSignaturePolicyImplied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    return v0
.end method

.method public setCanonicalizationMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->canonicalizationMethod:Ljava/lang/String;

    return-void
.end method

.method public setDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->digestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setExecutionTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->executionTime:Ljava/util/Date;

    return-void
.end method

.method public setIncludeEntireCertificateChain(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeEntireCertificateChain:Z

    return-void
.end method

.method public setIncludeIssuerSerial(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeIssuerSerial:Z

    return-void
.end method

.method public setIncludeKeyValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->includeKeyValue:Z

    return-void
.end method

.method public setKey(Ljava/security/PrivateKey;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->key:Ljava/security/PrivateKey;

    return-void
.end method

.method public setKeyInfoFactory(Ljavax/xml/crypto/dsig/keyinfo/KeyInfoFactory;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->keyInfoFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setNamespacePrefixes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->namespacePrefixes:Ljava/util/Map;

    return-void
.end method

.method public setOpcPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->opcPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setPackageSignatureId(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xmldsig-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->nvl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->packageSignatureId:Ljava/lang/String;

    return-void
.end method

.method public setProxyUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->proxyUrl:Ljava/lang/String;

    return-void
.end method

.method public setRevocationDataService(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->revocationDataService:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationDataService;

    return-void
.end method

.method public setSignatureDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureDescription:Ljava/lang/String;

    return-void
.end method

.method public setSignatureFacets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFacets:Ljava/util/List;

    return-void
.end method

.method public setSignatureFactory(Ljavax/xml/crypto/dsig/XMLSignatureFactory;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureFactory:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setSignatureMarshalListener(Lorg/w3c/dom/events/EventListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signatureMarshalListener:Lorg/w3c/dom/events/EventListener;

    return-void
.end method

.method public setSignaturePolicyService(Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signaturePolicyService:Lorg/apache/poi/poifs/crypt/dsig/services/SignaturePolicyService;

    return-void
.end method

.method public setSigningCertificateChain(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->signingCertificateChain:Ljava/util/List;

    return-void
.end method

.method public setTspDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setTspOldProtocol(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspOldProtocol:Z

    return-void
.end method

.method public setTspPass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspPass:Ljava/lang/String;

    return-void
.end method

.method public setTspRequestPolicy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspRequestPolicy:Ljava/lang/String;

    return-void
.end method

.method public setTspService(Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspService:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;

    return-void
.end method

.method public setTspUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUrl:Ljava/lang/String;

    return-void
.end method

.method public setTspUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspUser:Ljava/lang/String;

    return-void
.end method

.method public setTspValidator(Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->tspValidator:Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    return-void
.end method

.method public setUriDereferencer(Ljavax/xml/crypto/URIDereferencer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->uriDereferencer:Ljavax/xml/crypto/URIDereferencer;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setXadesCanonicalizationMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesCanonicalizationMethod:Ljava/lang/String;

    return-void
.end method

.method public setXadesDigestAlgo(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesDigestAlgo:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setXadesIssuerNameNoReverseOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesIssuerNameNoReverseOrder:Z

    return-void
.end method

.method public setXadesRole(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesRole:Ljava/lang/String;

    return-void
.end method

.method public setXadesSignatureId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignatureId:Ljava/lang/String;

    return-void
.end method

.method public setXadesSignaturePolicyImplied(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->xadesSignaturePolicyImplied:Z

    return-void
.end method
