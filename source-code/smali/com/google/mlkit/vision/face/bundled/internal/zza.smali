.class final Lcom/google/mlkit/vision/face/bundled/internal/zza;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztm;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

.field private final zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

.field private zzd:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;)V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztm;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    iput-object p1, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zza:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zzc()I

    move-result p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    move-result-object v0

    const-string v1, "models_bundled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zze()I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const-string v6, "fssd_medium_8bit_v5.tflite"

    goto :goto_0

    :cond_0
    const-string v6, "fssd_25_8bit_v2.tflite"

    :goto_0
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    if-ne v2, v5, :cond_1

    const-string v6, "fssd_medium_8bit_gray_v5.tflite"

    goto :goto_1

    :cond_1
    const-string v6, "fssd_25_8bit_gray_v2.tflite"

    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    if-ne v2, v5, :cond_2

    const-string v1, "fssd_anchors_v5.pb"

    goto :goto_2

    :cond_2
    const-string v1, "fssd_anchors_v2.pb"

    :goto_2
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzt;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzao;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v5, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzg(Z)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zzf()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzb(Z)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zza()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzf(F)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzh(Z)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzk(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    goto :goto_6

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zze()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v1, :cond_7

    if-eq p1, v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzk(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzk(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    :goto_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zzd()I

    move-result p1

    if-eq p1, v1, :cond_9

    if-eq p1, v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    :goto_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zzb()I

    move-result p1

    if-eq p1, v1, :cond_b

    if-eq p1, v5, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzi(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzi(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    :goto_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    iput-object p1, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    iput-object p3, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;)Ljava/util/List;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zze()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    iget-object v4, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzk()I

    move-result v4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-ne v4, v8, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzn()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x73ae198e

    if-eq v5, v6, :cond_2

    const v6, -0x6d89eac3

    if-eq v5, v6, :cond_1

    const v6, 0x19bd4

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "joy"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_1
    const-string v5, "right_eye_closed"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    goto :goto_3

    :cond_2
    const-string v5, "left_eye_closed"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, -0x1

    :goto_3
    if-eqz v5, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v5, v9, :cond_5

    if-eq v5, v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;->zzb()F

    move-result v5

    sub-float v12, v6, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;->zzb()F

    move-result v5

    sub-float v11, v6, v5

    goto :goto_1

    :cond_6
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;->zzb()F

    move-result v13

    goto :goto_1

    :cond_7
    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    goto :goto_4

    :cond_8
    const/high16 v22, -0x40800000    # -1.0f

    const/high16 v23, -0x40800000    # -1.0f

    const/high16 v24, -0x40800000    # -1.0f

    :goto_4
    iget-object v4, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzl()I

    move-result v4

    const/4 v13, 0x7

    const/16 v14, 0x8

    const-string v15, "ThickFaceDetector"

    const/4 v5, 0x4

    const/16 v6, 0x9

    if-ne v4, v8, :cond_e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzo()Ljava/util/List;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzg()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    if-eqz v8, :cond_b

    if-eq v8, v9, :cond_a

    if-eq v8, v6, :cond_9

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v6, "Unknown landmark type: "

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_6

    :pswitch_0
    const/16 v6, 0x8

    goto :goto_6

    :pswitch_1
    const/4 v6, 0x2

    goto :goto_6

    :pswitch_2
    const/16 v6, 0x9

    goto :goto_6

    :pswitch_3
    const/4 v6, 0x3

    goto :goto_6

    :pswitch_4
    const/4 v6, 0x7

    goto :goto_6

    :pswitch_5
    const/4 v6, 0x1

    goto :goto_6

    :pswitch_6
    const/16 v6, 0xb

    goto :goto_6

    :pswitch_7
    const/4 v6, 0x5

    goto :goto_6

    :pswitch_8
    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    const/4 v6, 0x6

    goto :goto_6

    :cond_a
    const/16 v6, 0xa

    goto :goto_6

    :cond_b
    const/4 v6, 0x4

    :goto_6
    if-ltz v6, :cond_c

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztr;

    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzb()F

    move-result v11

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzd()F

    move-result v12

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v8, v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztr;-><init>(ILandroid/graphics/PointF;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x9

    const/4 v8, 0x3

    const/4 v9, 0x1

    goto :goto_5

    :cond_c
    const/16 v6, 0x9

    const/4 v8, 0x3

    goto :goto_5

    :cond_d
    move-object v4, v7

    goto :goto_7

    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    iget-object v6, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzl()I

    move-result v6

    if-ne v6, v5, :cond_12

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzas;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuw;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzd()I

    move-result v9

    add-int/2addr v9, v10

    packed-switch v9, :pswitch_data_2

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unknown contour type: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    goto :goto_9

    :pswitch_9
    const/16 v9, 0xf

    goto :goto_9

    :pswitch_a
    const/16 v9, 0xe

    goto :goto_9

    :pswitch_b
    const/16 v9, 0xd

    goto :goto_9

    :pswitch_c
    const/16 v9, 0xc

    goto :goto_9

    :pswitch_d
    const/16 v9, 0xb

    goto :goto_9

    :pswitch_e
    const/16 v9, 0xa

    goto :goto_9

    :pswitch_f
    const/16 v9, 0x9

    goto :goto_9

    :pswitch_10
    const/16 v9, 0x8

    goto :goto_9

    :pswitch_11
    const/4 v9, 0x7

    goto :goto_9

    :pswitch_12
    const/4 v9, 0x6

    goto :goto_9

    :pswitch_13
    const/4 v9, 0x5

    goto :goto_9

    :pswitch_14
    const/4 v9, 0x4

    goto :goto_9

    :pswitch_15
    const/4 v9, 0x3

    goto :goto_9

    :pswitch_16
    const/4 v9, 0x2

    goto :goto_9

    :pswitch_17
    const/4 v9, 0x1

    :goto_9
    if-eq v9, v10, :cond_f

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzc()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzz;

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzz;->zza()F

    move-result v10

    invoke-virtual {v12}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzz;->zzb()F

    move-result v12

    invoke-direct {v5, v10, v12}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    const/4 v10, -0x1

    goto :goto_a

    :cond_10
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztg;

    invoke-direct {v5, v9, v11}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztg;-><init>(ILjava/util/List;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    const/4 v10, -0x1

    goto/16 :goto_8

    :cond_11
    move-object/from16 v27, v7

    goto :goto_b

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v5

    :goto_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzk()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzj()J

    move-result-wide v7

    long-to-int v8, v7

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzb()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zze()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzd()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzg()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v7, v9, v10, v11, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzh()F

    move-result v19

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzg()F

    move-result v20

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzi()F

    move-result v21

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzJ()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zze()F

    move-result v3

    move/from16 v25, v3

    goto :goto_c

    :cond_13
    const/high16 v25, -0x40800000    # -1.0f

    :goto_c
    move-object/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v26, v4

    invoke-direct/range {v16 .. v27}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;-><init>(ILandroid/graphics/Rect;FFFFFFFLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    return-object v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xee
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private static zzf(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Unsupported rotation degree: "

    .line 16
    .line 17
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    return v0

    .line 26
    :cond_2
    const/4 p0, 0x4

    .line 27
    return p0

    .line 28
    :cond_3
    return v0
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
.end method

.method private final zzg(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;I)Ljava/util/List;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzc()I

    move-result v1

    invoke-static {v1}, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zze()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-lez p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zze()J

    move-result-wide p2

    const-wide/16 v1, 0x3e8

    mul-long p2, p2, v1

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v0, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzd(JLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v0, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzb(J[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    new-array p3, p3, [B

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v0, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    invoke-virtual {p1, v0, v1, p3, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzb(J[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;)Ljava/util/List;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzb()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v3, :cond_7

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    const v3, 0x32315659

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v3, 0x7

    invoke-direct {v0, v2, v1, v3}, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzg(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;I)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzb()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported image format "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at API "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThickFaceDetector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v6, v2, v3

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzd()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zza()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzc()I

    move-result v7

    invoke-static {v7}, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzf(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zze()J

    move-result-wide v7

    const-wide/16 v13, 0x0

    cmp-long v9, v7, v13

    if-lez v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zze()J

    move-result-wide v7

    const-wide/16 v13, 0x3e8

    mul-long v7, v7, v13

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v7, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v8, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    aget-object v1, v2, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    aget-object v1, v2, v4

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    aget-object v1, v2, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    aget-object v1, v2, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    aget-object v1, v2, v4

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v17

    aget-object v1, v2, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v18

    move-object/from16 v19, v25

    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zze(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v13, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v14, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v18

    aget-object v1, v2, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    aget-object v1, v2, v4

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    aget-object v1, v2, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v21

    aget-object v1, v2, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v22

    aget-object v1, v2, v4

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v23

    aget-object v1, v2, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v24

    invoke-virtual/range {v13 .. v25}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzc(J[B[B[BIIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v13, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v14, v0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    aget-object v8, v2, v3

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    aget-object v8, v2, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    aget-object v8, v2, v5

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v21

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v22

    aget-object v3, v2, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v23

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v24

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v25}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzc(J[B[B[BIIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    invoke-direct {v0, v1}, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    :goto_1
    invoke-direct {v0, v2, v1, v5}, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzg(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;I)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzd;->zza(Landroid/graphics/Bitmap;Z)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_1

    :goto_2
    return-object v1
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-object v2, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Landroid/content/res/AssetManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    return-void
.end method

.method public final zzd()V
    .locals 5

    iget-wide v0, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzc:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzf(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/mlkit/vision/face/bundled/internal/zza;->zzd:J

    :cond_0
    return-void
.end method
