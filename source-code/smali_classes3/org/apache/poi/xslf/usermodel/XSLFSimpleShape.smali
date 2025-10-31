.class public abstract Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SimpleShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/sl/usermodel/SimpleShape<",
        "Lorg/apache/poi/xslf/usermodel/XSLFShape;",
        "Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect$Factory;->newInstance()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    return-object v0
.end method

.method private static getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    instance-of v1, v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-nez v1, :cond_0

    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t have line properties"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x5

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->isSetLn()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V
    .locals 5

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->copy(Lorg/apache/poi/xslf/usermodel/XSLFShape;)V

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getFillColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getFillColor()Ljava/awt/Color;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setFillColor(Ljava/awt/Color;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->getBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->getEmbed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->importBlip(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineColor()Ljava/awt/Color;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineWidth()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineWidth(D)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public createHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->addNewHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->isSetAvLst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->getGdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p1, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;->getFmla()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getX()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v5

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCx()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v9

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->getCy()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v11

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->sizeOfLnArray()I

    move-result v3

    if-ge v3, v0, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->getLnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_0
    return-object v1
.end method

.method public getFillColor()Ljava/awt/Color;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$9;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method public getFlipHorizontal()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipH()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipH()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getFlipVertical()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetFlipV()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getFlipV()Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-static {}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->getInstance()Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v3, "Unknown shape geometry: "

    .line 47
    .line 48
    const-string v4, ", available geometries are: "

    .line 49
    .line 50
    invoke-static {v3, v0, v4}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v2

    .line 69
    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetCustGeom()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->convertCustomGeometry(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :try_start_0
    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;->close()V
    :try_end_0
    .catch Lorg/apache/poi/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "An error occurred while closing a Custom Geometry XML Stream Reader: "

    .line 97
    .line 98
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/4 v3, 0x1

    .line 113
    new-array v3, v3, [Ljava/lang/Object;

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    aput-object v0, v3, v4

    .line 117
    .line 118
    const/4 v0, 0x5

    .line 119
    invoke-virtual {v1, v0, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    const-string v0, "rect"

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move-object v2, v0

    .line 130
    check-cast v2, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    .line 131
    .line 132
    :goto_0
    return-object v2
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

.method public bridge synthetic getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlink()Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->isSetHlinkClick()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getHlinkClick()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFHyperlink;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-object v1
.end method

.method public getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 3

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$6;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$6;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/ColorStyle;->getColor()Ljava/awt/Color;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$4;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->SINGLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->TRIPLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->THIN_THICK:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->THICK_THIN:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_3
    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->DOUBLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 3

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$5;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$8;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method public getLineHeadDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/usermodel/PaintStyle;

    return-object v0
.end method

.method public getLineTailDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->NONE:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getType()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getLen()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->getW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getLineWidth()D
    .locals 2

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$3;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$3;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getDefaultLineProperties()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getW()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getRotation()D
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetRot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getRot()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public bridge synthetic getShadow()Lorg/apache/poi/sl/usermodel/Shadow;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;

    move-result-object v0

    return-object v0
.end method

.method public getShadow()Lorg/apache/poi/xslf/usermodel/XSLFShadow;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$7;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$7;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getEffectRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v1

    long-to-int v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getEffectStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;->getEffectStyleArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleItem;->getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;->getOuterShdw()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->NO_SHADOW:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFShadow;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFShadow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->getPrst()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/sl/usermodel/ShapeType;->forId(IZ)Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;
    .locals 1

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$10;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    return-object v0
.end method

.method public getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .locals 3

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$1;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->fetchShapeProperty(Lorg/apache/poi/xslf/model/PropertyFetcher;)Z

    invoke-virtual {v0}, Lorg/apache/poi/xslf/model/PropertyFetcher;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    instance-of v0, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t have xfrm element."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public isPlaceholder()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getCTPlaceholder()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPlaceholder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetOff()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->isSetExt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->getExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    int-to-long v3, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    invoke-interface {v0, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    return-void
.end method

.method public setFillColor(Ljava/awt/Color;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_5

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetSolidFill()V

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetGradFill()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetGradFill()V

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetPattFill()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetGradFill()V

    :cond_3
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetBlipFill()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetBlipFill()V

    :cond_4
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->unsetNoFill()V

    :cond_6
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setFlipH(Z)V

    :cond_0
    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setFlipV(Z)V

    :cond_0
    return-void
.end method

.method public setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCap()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetCap()V

    goto :goto_0

    :cond_1
    iget p1, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLineColor(Ljava/awt/Color;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetSolidFill()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetGradFill()V

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPattFill()V

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    :cond_4
    if-nez p1, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V

    invoke-virtual {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->setColor(Ljava/awt/Color;)V

    :goto_0
    return-void
.end method

.method public setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetCmpd()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetCmpd()V

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$11;->$SwitchMap$org$apache$poi$sl$usermodel$StrokeStyle$LineCompound:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->TRI:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->THIN_THICK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    :cond_4
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->THICK_THIN:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    goto :goto_0

    :cond_5
    sget-object p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;->DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;

    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPrstDash()V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPrstDash()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;

    move-result-object v0

    :goto_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;->setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetType()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadLength(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetLen()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineHeadWidth(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetHeadEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetW()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetType()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetType()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setType(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndType$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailLength(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetLen()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetLen()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setLen(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndLength$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineTailWidth(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetTailEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->isSetW()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->unsetW()V

    goto :goto_1

    :cond_2
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;->setW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setLineWidth(D)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLn(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetW()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetW()V

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetSolidFill()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetSolidFill()V

    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetGradFill()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetGradFill()V

    :cond_4
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetPattFill()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetPattFill()V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->unsetNoFill()V

    :cond_6
    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->setW(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    return-void
.end method

.method public setRotation(D)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getXfrm(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide v1, 0x40ed4c0000000000L    # 60000.0

    mul-double p1, p1, v1

    double-to-int p1, p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->setRot(I)V

    :cond_0
    return-void
.end method

.method public setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetCustGeom()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->unsetCustGeom()V

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->isSetPrstGeom()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v0

    :goto_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/ShapeType;->ooxmlId:I

    invoke-static {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    return-void
.end method

.method public varargs setStrokeStyle([Ljava/lang/Object;)V
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineWidth(D)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    goto :goto_1

    :cond_4
    instance-of v3, v2, Ljava/awt/Color;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/awt/Color;

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
