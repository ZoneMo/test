.class final Lcom/tencent/mapapi/map/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Xt:F


# instance fields
.field TW:Z

.field UN:Z

.field Uk:Z

.field private VX:Z

.field private XN:Landroid/graphics/PointF;

.field private XO:Landroid/graphics/PointF;

.field private XP:Landroid/graphics/PointF;

.field private XQ:Landroid/graphics/PointF;

.field private XR:Lcom/tencent/mapapi/map/bh;

.field private XS:Landroid/view/GestureDetector;

.field private XT:J

.field private XU:Ljava/lang/reflect/Method;

.field private XV:Ljava/lang/reflect/Method;

.field private Xf:Z

.field c:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    const-wide v0, 0x3f5c98710add7e36L

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/tencent/mapapi/map/bt;->Xt:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/tencent/mapapi/map/bt;->VX:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/bt;->Xf:Z

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    .line 52
    iput-object v2, p0, Lcom/tencent/mapapi/map/bt;->XR:Lcom/tencent/mapapi/map/bh;

    .line 53
    iput-object v2, p0, Lcom/tencent/mapapi/map/bt;->XS:Landroid/view/GestureDetector;

    .line 55
    iput-boolean v1, p0, Lcom/tencent/mapapi/map/bt;->TW:Z

    .line 56
    iput-boolean v1, p0, Lcom/tencent/mapapi/map/bt;->Uk:Z

    .line 57
    iput-boolean v1, p0, Lcom/tencent/mapapi/map/bt;->c:Z

    .line 58
    iput-boolean v1, p0, Lcom/tencent/mapapi/map/bt;->UN:Z

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapapi/map/bt;->XT:J

    .line 64
    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bt;->XU:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 335
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getX"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bt;->XU:Ljava/lang/reflect/Method;

    .line 336
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "getY"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bt;->XV:Ljava/lang/reflect/Method;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bt;->XU:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 339
    iget-object v0, p0, Lcom/tencent/mapapi/map/bt;->XU:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 340
    iget-object v0, p0, Lcom/tencent/mapapi/map/bt;->XV:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 341
    iget-object v0, p0, Lcom/tencent/mapapi/map/bt;->XV:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v0, p3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 342
    invoke-virtual {p1, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 343
    invoke-virtual {p2, v2, v0}, Landroid/graphics/PointF;->set(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private n(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4040

    .line 271
    iget-object v0, p0, Lcom/tencent/mapapi/map/bt;->XR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 272
    iget-object v1, p0, Lcom/tencent/mapapi/map/bt;->XR:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 275
    iget-object v2, p0, Lcom/tencent/mapapi/map/bt;->XR:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/bt;->XR:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/GestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/mapapi/map/bt;->XS:Landroid/view/GestureDetector;

    .line 74
    return-void
.end method

.method public final a(Lcom/tencent/mapapi/map/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/mapapi/map/bt;->XR:Lcom/tencent/mapapi/map/bh;

    .line 69
    return-void
.end method

.method public final h(Landroid/view/MotionEvent;)Z
    .locals 28
    .parameter

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 119
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->VX:Z

    if-eqz v2, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XS:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 82
    :pswitch_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/tencent/mapapi/map/bt;->XT:J

    .line 83
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->VX:Z

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/tencent/mapapi/map/bt;->XT:J

    .line 88
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->Xf:Z

    .line 89
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    .line 90
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->VX:Z

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/mapapi/map/bt;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 92
    const/4 v2, 0x1

    goto :goto_1

    .line 94
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->Uk:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/mapapi/map/bt;->XT:J

    sub-long/2addr v2, v4

    .line 97
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 104
    :cond_2
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->Xf:Z

    if-eqz v2, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XR:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    .line 107
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->Xf:Z

    .line 108
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 112
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->Xf:Z

    if-eqz v2, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/mapapi/map/bt;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v12, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->c:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-nez v2, :cond_6

    const-wide/high16 v2, 0x4038

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-lez v2, :cond_7

    :cond_4
    mul-double v2, v8, v12

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v14, 0x3ff3333333333333L

    mul-double/2addr v4, v14

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v14, 0x3ff3333333333333L

    mul-double/2addr v4, v14

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 115
    :cond_5
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 114
    :cond_6
    const-wide/high16 v2, 0x4020

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v0, v2

    move-wide/from16 v18, v0

    mul-double v2, v4, v4

    mul-double v20, v14, v14

    add-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    mul-double v2, v16, v16

    mul-double v22, v18, v18

    add-double v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->UN:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    :cond_8
    mul-double v2, v20, v22

    const-wide/16 v24, 0x0

    cmpl-double v2, v2, v24

    if-lez v2, :cond_b

    mul-double v2, v4, v16

    mul-double v24, v14, v18

    add-double v2, v2, v24

    mul-double v24, v20, v22

    div-double v2, v2, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    sget v26, Lcom/tencent/mapapi/map/bt;->Xt:F

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_b

    const-wide v24, 0x4066800000000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double v2, v2, v24

    const-wide v24, 0x400921fb54442d18L

    div-double v2, v2, v24

    mul-double v4, v4, v18

    mul-double v14, v14, v16

    sub-double/2addr v4, v14

    const-wide/16 v14, 0x0

    cmpg-double v4, v4, v14

    if-gez v4, :cond_9

    neg-double v2, v2

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-nez v4, :cond_a

    const-wide/high16 v4, 0x402a

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_b

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_3

    :cond_a
    const-wide/high16 v4, 0x3ff0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mapapi/map/bt;->Uk:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    :cond_c
    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-lez v2, :cond_f

    div-double v4, v22, v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-nez v2, :cond_e

    const-wide v2, 0x3fb999999999999aL

    :goto_5
    const-wide/high16 v14, 0x3ff0

    sub-double v14, v4, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v2, v14, v2

    if-lez v2, :cond_f

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XR:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mapapi/map/bm;->a(D)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/tencent/mapapi/map/bt;->n(FF)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/tencent/mapapi/map/bt;->n(FF)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/tencent/mapapi/map/bt;->n(FF)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_3

    :cond_e
    const-wide v2, 0x3fa999999999999aL

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    if-nez v2, :cond_12

    const-wide/high16 v2, 0x4054

    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_11

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_11

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_11

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-lez v2, :cond_5

    :cond_11
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/mapapi/map/bt;->g:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XP:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XN:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bt;->XQ:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mapapi/map/bt;->XO:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_3

    :cond_12
    const-wide/high16 v2, 0x4020

    goto :goto_6

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
