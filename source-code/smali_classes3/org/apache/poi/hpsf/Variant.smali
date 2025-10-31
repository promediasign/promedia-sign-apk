.class public Lorg/apache/poi/hpsf/Variant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LENGTH_0:Ljava/lang/Integer;

.field public static final LENGTH_2:Ljava/lang/Integer;

.field public static final LENGTH_4:Ljava/lang/Integer;

.field public static final LENGTH_8:Ljava/lang/Integer;

.field public static final LENGTH_UNKNOWN:Ljava/lang/Integer;

.field public static final LENGTH_VARIABLE:Ljava/lang/Integer;

.field private static final NUMBER_TO_NAME_LIST:[[Ljava/lang/Object;

.field public static final VT_ARRAY:I = 0x2000

.field public static final VT_BLOB:I = 0x41

.field public static final VT_BLOB_OBJECT:I = 0x46

.field public static final VT_BOOL:I = 0xb

.field public static final VT_BSTR:I = 0x8

.field public static final VT_BYREF:I = 0x4000

.field public static final VT_CARRAY:I = 0x1c

.field public static final VT_CF:I = 0x47

.field public static final VT_CLSID:I = 0x48

.field public static final VT_CY:I = 0x6

.field public static final VT_DATE:I = 0x7

.field public static final VT_DECIMAL:I = 0xe

.field public static final VT_DISPATCH:I = 0x9

.field public static final VT_EMPTY:I = 0x0

.field public static final VT_ERROR:I = 0xa

.field public static final VT_FILETIME:I = 0x40

.field public static final VT_HRESULT:I = 0x19

.field public static final VT_I1:I = 0x10

.field public static final VT_I2:I = 0x2

.field public static final VT_I4:I = 0x3

.field public static final VT_I8:I = 0x14

.field public static final VT_ILLEGAL:I = 0xffff

.field public static final VT_ILLEGALMASKED:I = 0xfff

.field public static final VT_INT:I = 0x16

.field public static final VT_LPSTR:I = 0x1e

.field public static final VT_LPWSTR:I = 0x1f

.field public static final VT_NULL:I = 0x1

.field public static final VT_PTR:I = 0x1a

.field public static final VT_R4:I = 0x4

.field public static final VT_R8:I = 0x5

.field public static final VT_RESERVED:I = 0x8000

.field public static final VT_SAFEARRAY:I = 0x1b

.field public static final VT_STORAGE:I = 0x43

.field public static final VT_STORED_OBJECT:I = 0x45

.field public static final VT_STREAM:I = 0x42

.field public static final VT_STREAMED_OBJECT:I = 0x44

.field public static final VT_TYPEMASK:I = 0xfff

.field public static final VT_UI1:I = 0x11

.field public static final VT_UI2:I = 0x12

.field public static final VT_UI4:I = 0x13

.field public static final VT_UI8:I = 0x15

.field public static final VT_UINT:I = 0x17

.field public static final VT_UNKNOWN:I = 0xd

.field public static final VT_USERDEFINED:I = 0x1d

.field public static final VT_VARIANT:I = 0xc

.field public static final VT_VECTOR:I = 0x1000

.field public static final VT_VERSIONED_STREAM:I = 0x49

.field public static final VT_VOID:I = 0x18

.field private static final numberToLength:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final numberToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 49

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Variant;->LENGTH_UNKNOWN:Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hpsf/Variant;->LENGTH_VARIABLE:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hpsf/Variant;->LENGTH_0:Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/hpsf/Variant;->LENGTH_2:Ljava/lang/Integer;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/apache/poi/hpsf/Variant;->LENGTH_4:Ljava/lang/Integer;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sput-object v9, Lorg/apache/poi/hpsf/Variant;->LENGTH_8:Ljava/lang/Integer;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v10, v12, v2

    const-string v10, "VT_EMPTY"

    const/4 v13, 0x1

    aput-object v10, v12, v13

    aput-object v3, v12, v4

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v3, v10, v2

    const-string v3, "VT_NULL"

    aput-object v3, v10, v13

    aput-object v0, v10, v4

    const-wide/16 v14, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v3, v14, v2

    const-string v3, "VT_I2"

    aput-object v3, v14, v13

    aput-object v5, v14, v4

    const-wide/16 v15, 0x3

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const-string v3, "VT_I4"

    aput-object v3, v5, v13

    aput-object v7, v5, v4

    const-wide/16 v15, 0x4

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v3, v15, v2

    const-string v3, "VT_R4"

    aput-object v3, v15, v13

    aput-object v7, v15, v4

    const-wide/16 v16, 0x5

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v2

    const-string v3, "VT_R8"

    aput-object v3, v7, v13

    aput-object v9, v7, v4

    const-wide/16 v16, 0x6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v2

    const-string v3, "VT_CY"

    aput-object v3, v8, v13

    aput-object v0, v8, v4

    const-wide/16 v17, 0x7

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const-string v3, "VT_DATE"

    aput-object v3, v6, v13

    aput-object v0, v6, v4

    const-wide/16 v18, 0x8

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "VT_BSTR"

    aput-object v3, v4, v13

    const/4 v3, 0x2

    aput-object v0, v4, v3

    const-wide/16 v18, 0x9

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v18, v3, v2

    const-string v18, "VT_DISPATCH"

    aput-object v18, v3, v13

    const/16 v18, 0x2

    aput-object v0, v3, v18

    const-wide/16 v19, 0xa

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_ERROR"

    const/16 v20, 0x1

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v21, 0xb

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v21, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_BOOL"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v22, 0xc

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v22, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_VARIANT"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v23, 0xd

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v23, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_UNKNOWN"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v24, 0xe

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v24, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_DECIMAL"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v25, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v25, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_I1"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v26, 0x11

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v26, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_UI1"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v27, 0x12

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v27, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_UI2"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v28, 0x13

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v28, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_UI4"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v29, 0x14

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v29, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_I8"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v30, 0x15

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v30, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_UI8"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v31, 0x16

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v31, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_INT"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v32, 0x17

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v32, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_UINT"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v33, 0x18

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v33, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_VOID"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v34, 0x19

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v34, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_HRESULT"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v35, 0x1a

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v35, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_PTR"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v36, 0x1b

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v36, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_SAFEARRAY"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v37, 0x1c

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v37, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_CARRAY"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v38, 0x1d

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v38, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_USERDEFINED"

    aput-object v19, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v39, 0x1e

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v39, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v19, v13, v2

    const-string v19, "VT_LPSTR"

    aput-object v19, v13, v20

    aput-object v1, v13, v18

    const-wide/16 v40, 0x1f

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v19, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v1, v13, v2

    const-string v1, "VT_LPWSTR"

    aput-object v1, v13, v20

    aput-object v0, v13, v18

    const-wide/16 v40, 0x40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v40, v13

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v1, v13, v2

    const-string v1, "VT_FILETIME"

    aput-object v1, v13, v20

    aput-object v9, v13, v18

    const-wide/16 v41, 0x41

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v2

    const-string v1, "VT_BLOB"

    aput-object v1, v9, v20

    aput-object v0, v9, v18

    const-wide/16 v41, 0x42

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v41, v9

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v2

    const-string v1, "VT_STREAM"

    aput-object v1, v9, v20

    aput-object v0, v9, v18

    const-wide/16 v42, 0x43

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v42, v9

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v2

    const-string v1, "VT_STORAGE"

    aput-object v1, v9, v20

    aput-object v0, v9, v18

    const-wide/16 v43, 0x44

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v43, v9

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v2

    const-string v1, "VT_STREAMED_OBJECT"

    aput-object v1, v9, v20

    aput-object v0, v9, v18

    const-wide/16 v44, 0x45

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v44, v9

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v2

    const-string v1, "VT_STORED_OBJECT"

    aput-object v1, v9, v20

    aput-object v0, v9, v18

    const-wide/16 v45, 0x46

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v45, v9

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v2

    const-string v1, "VT_BLOB_OBJECT"

    aput-object v1, v9, v20

    aput-object v0, v9, v18

    const-wide/16 v46, 0x47

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v46, v9

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v2

    const-string v1, "VT_CF"

    aput-object v1, v9, v20

    aput-object v0, v9, v18

    const-wide/16 v47, 0x48

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v47, v9

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v1, v9, v2

    const-string v1, "VT_CLSID"

    aput-object v1, v9, v20

    aput-object v0, v9, v18

    const/16 v0, 0x28

    new-array v0, v0, [[Ljava/lang/Object;

    aput-object v12, v0, v2

    aput-object v10, v0, v20

    aput-object v14, v0, v18

    aput-object v5, v0, v11

    const/4 v1, 0x4

    aput-object v15, v0, v1

    const/4 v1, 0x5

    aput-object v7, v0, v1

    const/4 v1, 0x6

    aput-object v8, v0, v1

    const/4 v1, 0x7

    aput-object v6, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v21, v0, v1

    const/16 v1, 0xb

    aput-object v22, v0, v1

    const/16 v1, 0xc

    aput-object v23, v0, v1

    const/16 v1, 0xd

    aput-object v24, v0, v1

    const/16 v1, 0xe

    aput-object v25, v0, v1

    const/16 v1, 0xf

    aput-object v26, v0, v1

    const/16 v1, 0x10

    aput-object v27, v0, v1

    const/16 v1, 0x11

    aput-object v28, v0, v1

    const/16 v1, 0x12

    aput-object v29, v0, v1

    const/16 v1, 0x13

    aput-object v30, v0, v1

    const/16 v1, 0x14

    aput-object v31, v0, v1

    const/16 v1, 0x15

    aput-object v32, v0, v1

    const/16 v1, 0x16

    aput-object v33, v0, v1

    const/16 v1, 0x17

    aput-object v34, v0, v1

    const/16 v1, 0x18

    aput-object v35, v0, v1

    const/16 v1, 0x19

    aput-object v36, v0, v1

    const/16 v1, 0x1a

    aput-object v37, v0, v1

    const/16 v1, 0x1b

    aput-object v38, v0, v1

    const/16 v1, 0x1c

    aput-object v39, v0, v1

    const/16 v1, 0x1d

    aput-object v19, v0, v1

    const/16 v1, 0x1e

    aput-object v40, v0, v1

    const/16 v1, 0x1f

    aput-object v13, v0, v1

    const/16 v1, 0x20

    aput-object v41, v0, v1

    const/16 v1, 0x21

    aput-object v42, v0, v1

    const/16 v1, 0x22

    aput-object v43, v0, v1

    const/16 v1, 0x23

    aput-object v44, v0, v1

    const/16 v1, 0x24

    aput-object v45, v0, v1

    const/16 v1, 0x25

    aput-object v46, v0, v1

    const/16 v1, 0x26

    aput-object v47, v0, v1

    const/16 v1, 0x27

    aput-object v9, v0, v1

    sput-object v0, Lorg/apache/poi/hpsf/Variant;->NUMBER_TO_NAME_LIST:[[Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    array-length v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    new-instance v3, Ljava/util/HashMap;

    array-length v5, v0

    invoke-direct {v3, v5, v4}, Ljava/util/HashMap;-><init>(IF)V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    aget-object v7, v6, v2

    check-cast v7, Ljava/lang/Long;

    const/4 v8, 0x1

    aget-object v9, v6, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v7, v6, v2

    check-cast v7, Ljava/lang/Long;

    const/4 v9, 0x2

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v5, v8

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Variant;->numberToName:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Variant;->numberToLength:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVariantLength(J)I
    .locals 1

    sget-object v0, Lorg/apache/poi/hpsf/Variant;->numberToLength:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/hpsf/Variant;->LENGTH_UNKNOWN:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getVariantName(J)Ljava/lang/String;
    .locals 8

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    and-long v2, p0, v0

    .line 4
    .line 5
    const-string v4, ""

    .line 6
    .line 7
    const-wide/16 v5, 0x0

    .line 8
    .line 9
    cmp-long v7, v2, v5

    .line 10
    .line 11
    if-eqz v7, :cond_0

    .line 12
    .line 13
    sub-long/2addr p0, v0

    .line 14
    const-string v0, "Vector of "

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v0, 0x2000

    .line 18
    .line 19
    and-long v2, p0, v0

    .line 20
    .line 21
    cmp-long v7, v2, v5

    .line 22
    .line 23
    if-eqz v7, :cond_1

    .line 24
    .line 25
    sub-long/2addr p0, v0

    .line 26
    const-string v0, "Array of "

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-wide/16 v0, 0x4000

    .line 30
    .line 31
    and-long v2, p0, v0

    .line 32
    .line 33
    cmp-long v7, v2, v5

    .line 34
    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    sub-long/2addr p0, v0

    .line 38
    const-string v0, "ByRef of "

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object v0, v4

    .line 42
    :goto_0
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lorg/apache/poi/hpsf/Variant;->numberToName:Ljava/util/Map;

    .line 47
    .line 48
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const-string p0, "unknown variant type"

    .line 75
    .line 76
    :goto_1
    return-object p0
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
