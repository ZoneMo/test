.class public final Lcom/tencent/mapapi/map/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ua:Ljava/util/List;

.field public Ub:Ljava/util/List;

.field public WF:Z

.field public Xb:Ljava/util/List;

.field private Xc:Ljava/util/List;

.field Xd:[B

.field Xe:[B

.field public Xf:Z

.field public Xg:Lcom/tencent/mapapi/map/bs;

.field private final Xh:Ljava/lang/String;

.field private final Xi:Ljava/lang/String;

.field private Xj:Landroid/graphics/Matrix;

.field final synthetic Xk:Lcom/tencent/mapapi/map/bh;

.field private m:I


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/bh;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4380

    const v6, 0x3f19999a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    iput-object p1, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xc:Ljava/util/List;

    .line 268
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    .line 269
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xe:[B

    .line 270
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bi;->Xf:Z

    .line 271
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bi;->WF:Z

    .line 272
    sget-object v0, Lcom/tencent/mapapi/map/bs;->XL:Lcom/tencent/mapapi/map/bs;

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xg:Lcom/tencent/mapapi/map/bs;

    .line 274
    const-string v0, "http://pwh.map.qq.com/ih?dt=tile&rt=m256&c=%s"

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xh:Ljava/lang/String;

    .line 277
    const-string v0, "http://rtt.map.soso.com/m?c=%s&sp=128x2"

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xi:Ljava/lang/String;

    .line 319
    iput v2, p0, Lcom/tencent/mapapi/map/bi;->m:I

    .line 907
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xj:Landroid/graphics/Matrix;

    .line 282
    if-nez p2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 285
    :cond_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 286
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 288
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 293
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v0

    div-float/2addr v4, v6

    div-float/2addr v4, v7

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x2

    int-to-float v5, v3

    div-float/2addr v5, v6

    div-float/2addr v5, v7

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x2

    mul-int/2addr v4, v5

    div-int/lit16 v0, v0, 0x100

    add-int/lit8 v0, v0, 0x1

    div-int/lit16 v3, v3, 0x100

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tencent/mapapi/map/bi;->m:I

    .line 294
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    if-nez v0, :cond_2

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/mapapi/map/bq;->VK:Lcom/tencent/mapapi/map/br;

    sget-object v3, Lcom/tencent/mapapi/map/br;->XG:Lcom/tencent/mapapi/map/br;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    invoke-static {v0}, Lcom/tencent/mapapi/map/bl;->a(Lcom/tencent/mapapi/map/bl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mapapi/map/bq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/tencent/mapapi/map/au;

    invoke-direct {v3, v0}, Lcom/tencent/mapapi/map/au;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iput-object v0, v3, Lcom/tencent/mapapi/map/au;->Wy:Lcom/tencent/mapapi/map/bl;

    iget-object v4, p0, Lcom/tencent/mapapi/map/bi;->Xe:[B

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_3
    iget-object v0, p1, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/be;->bb(I)V

    .line 310
    sget-object v0, Lcom/tencent/mapapi/map/bq;->XF:Lcom/tencent/mapapi/map/bs;

    sget-object v3, Lcom/tencent/mapapi/map/bs;->XK:Lcom/tencent/mapapi/map/bs;

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 314
    :goto_1
    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v1

    :try_start_1
    const-string v0, "map_raster"

    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/bi;->ak(Ljava/lang/String;)Z

    new-instance v0, Lcom/tencent/mapapi/map/bb;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/bb;-><init>()V

    new-instance v2, Lcom/tencent/mapapi/map/bj;

    invoke-direct {v2, p0}, Lcom/tencent/mapapi/map/bj;-><init>(Lcom/tencent/mapapi/map/bi;)V

    iput-object v2, v0, Lcom/tencent/mapapi/map/bb;->WN:Lcom/tencent/mapapi/map/ae;

    const-string v2, "map_google"

    iput-object v2, v0, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bb;->WH:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bb;->Vw:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bb;->WI:Z

    const/16 v2, 0x12

    iput v2, v0, Lcom/tencent/mapapi/map/bb;->VL:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/tencent/mapapi/map/bb;->VM:I

    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/mapapi/map/bb;->r:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bb;->WM:Z

    iget-object v2, p0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/bi;->b(Lcom/tencent/mapapi/map/bb;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-object v0, Lcom/tencent/mapapi/map/bs;->XK:Lcom/tencent/mapapi/map/bs;

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xg:Lcom/tencent/mapapi/map/bs;

    .line 316
    :goto_2
    iget-object v0, p1, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/be;->bb(I)V

    goto/16 :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 314
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v1

    :try_start_5
    const-string v0, "map_google"

    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/bi;->ak(Ljava/lang/String;)Z

    new-instance v0, Lcom/tencent/mapapi/map/bb;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/bb;-><init>()V

    new-instance v2, Lcom/tencent/mapapi/map/bk;

    invoke-direct {v2, p0}, Lcom/tencent/mapapi/map/bk;-><init>(Lcom/tencent/mapapi/map/bi;)V

    iput-object v2, v0, Lcom/tencent/mapapi/map/bb;->WN:Lcom/tencent/mapapi/map/ae;

    const-string v2, "map_raster"

    iput-object v2, v0, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bb;->WH:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bb;->Vw:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bb;->WI:Z

    const/16 v2, 0x12

    iput v2, v0, Lcom/tencent/mapapi/map/bb;->VL:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/tencent/mapapi/map/bb;->VM:I

    const/4 v2, 0x3

    iput v2, v0, Lcom/tencent/mapapi/map/bb;->r:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/tencent/mapapi/map/bb;->WM:Z

    iget-object v2, p0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/bi;->b(Lcom/tencent/mapapi/map/bb;)Z

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    sget-object v0, Lcom/tencent/mapapi/map/bs;->XL:Lcom/tencent/mapapi/map/bs;

    iput-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xg:Lcom/tencent/mapapi/map/bs;

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    move v0, v2

    goto/16 :goto_1
.end method

.method private ak(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 681
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 703
    :goto_0
    return v0

    .line 684
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/tencent/mapapi/map/bi;->b(Ljava/lang/String;Z)Z

    .line 686
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v1

    .line 687
    :goto_1
    if-ge v3, v4, :cond_2

    .line 689
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 690
    if-eqz v0, :cond_1

    .line 691
    iget-object v5, v0, Lcom/tencent/mapapi/map/ba;->WG:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 694
    iput-boolean v1, v0, Lcom/tencent/mapapi/map/ba;->Vw:Z

    .line 695
    iget-object v1, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 696
    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ba;->md()V

    .line 697
    invoke-direct {p0}, Lcom/tencent/mapapi/map/bi;->mO()V

    move v0, v2

    .line 698
    goto :goto_0

    .line 687
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 703
    goto :goto_0
.end method

.method private b(Lcom/tencent/mapapi/map/bb;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 620
    if-nez p1, :cond_1

    move v0, v2

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    iget-object v0, p1, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v2

    .line 625
    goto :goto_0

    .line 627
    :cond_2
    iget-object v4, p1, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_4

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/tencent/mapapi/map/ba;->WG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    .line 628
    :goto_2
    if-ne v0, v3, :cond_5

    move v0, v2

    .line 629
    goto :goto_0

    .line 627
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    .line 632
    :cond_5
    iget-object v0, p1, Lcom/tencent/mapapi/map/bb;->WG:Ljava/lang/String;

    const-string v1, "trafficmap_raster"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 635
    new-instance v0, Lcom/tencent/mapapi/map/aw;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/aw;-><init>()V

    move-object v1, v0

    .line 641
    :goto_3
    invoke-virtual {v1, p1}, Lcom/tencent/mapapi/map/ad;->a(Lcom/tencent/mapapi/map/bb;)V

    .line 642
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    invoke-virtual {v1, v0}, Lcom/tencent/mapapi/map/ad;->a(Lcom/tencent/mapapi/map/bh;)V

    .line 643
    new-instance v0, Lcom/tencent/mapapi/map/an;

    iget v4, p0, Lcom/tencent/mapapi/map/bi;->m:I

    iget-boolean v5, v1, Lcom/tencent/mapapi/map/ad;->WJ:Z

    iget-wide v6, v1, Lcom/tencent/mapapi/map/ad;->WK:J

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/tencent/mapapi/map/an;-><init>(IZJ)V

    iput-object v0, v1, Lcom/tencent/mapapi/map/ad;->Wd:Lcom/tencent/mapapi/map/an;

    .line 646
    new-instance v0, Lcom/tencent/mapapi/map/bc;

    iget-object v4, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bl;->mQ()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Lcom/tencent/mapapi/map/bc;-><init>(Landroid/content/Context;Lcom/tencent/mapapi/map/bb;)V

    iput-object v0, v1, Lcom/tencent/mapapi/map/ad;->We:Lcom/tencent/mapapi/map/bc;

    .line 649
    iget-object v0, v1, Lcom/tencent/mapapi/map/ad;->We:Lcom/tencent/mapapi/map/bc;

    iget-object v4, v1, Lcom/tencent/mapapi/map/ad;->Wd:Lcom/tencent/mapapi/map/an;

    invoke-virtual {v0, v4}, Lcom/tencent/mapapi/map/bc;->a(Lcom/tencent/mapapi/map/an;)V

    .line 651
    invoke-virtual {v1}, Lcom/tencent/mapapi/map/ad;->mB()V

    .line 653
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 654
    iget-boolean v4, v1, Lcom/tencent/mapapi/map/ad;->WH:Z

    if-eqz v4, :cond_6

    if-nez v0, :cond_9

    .line 655
    :cond_6
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 673
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/tencent/mapapi/map/bi;->mO()V

    .line 674
    iget-boolean v2, v1, Lcom/tencent/mapapi/map/ad;->Vw:Z

    if-ne v2, v3, :cond_0

    .line 675
    iget-object v1, v1, Lcom/tencent/mapapi/map/ad;->WG:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/tencent/mapapi/map/bi;->b(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 639
    :cond_8
    new-instance v0, Lcom/tencent/mapapi/map/ad;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/ad;-><init>()V

    move-object v1, v0

    goto :goto_3

    .line 658
    :cond_9
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_5
    if-ltz v4, :cond_b

    .line 659
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 660
    if-eqz v0, :cond_a

    .line 661
    iget-boolean v0, v0, Lcom/tencent/mapapi/map/ba;->WH:Z

    if-nez v0, :cond_a

    .line 664
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v3

    .line 669
    :goto_6
    if-nez v0, :cond_7

    .line 670
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .line 658
    :cond_a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_5

    :cond_b
    move v0, v2

    goto :goto_6
.end method

.method private b(Ljava/lang/String;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 537
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 577
    :goto_0
    return v0

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v1

    .line 542
    :goto_1
    if-ge v3, v4, :cond_9

    .line 543
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 544
    if-eqz v0, :cond_8

    .line 545
    iget-object v5, v0, Lcom/tencent/mapapi/map/ba;->WG:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_8

    .line 548
    iput-boolean p2, v0, Lcom/tencent/mapapi/map/ba;->Vw:Z

    .line 549
    iget-boolean v5, v0, Lcom/tencent/mapapi/map/ba;->WH:Z

    if-nez v5, :cond_1

    move v0, v2

    .line 550
    goto :goto_0

    .line 553
    :cond_1
    if-ne p2, v2, :cond_8

    .line 554
    iget v3, v0, Lcom/tencent/mapapi/map/ba;->VL:I

    iget v4, v0, Lcom/tencent/mapapi/map/ba;->VM:I

    if-le v3, v4, :cond_5

    .line 556
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget v4, v0, Lcom/tencent/mapapi/map/ba;->VL:I

    if-lez v4, :cond_2

    iget-object v3, v3, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iput v4, v3, Lcom/tencent/mapapi/map/bo;->Ud:I

    .line 558
    :cond_2
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget v4, v0, Lcom/tencent/mapapi/map/ba;->VM:I

    if-lez v4, :cond_3

    iget-object v3, v3, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iput v4, v3, Lcom/tencent/mapapi/map/bo;->Uc:I

    .line 560
    :cond_3
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bo;->md()V

    .line 561
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v3

    iget v4, v0, Lcom/tencent/mapapi/map/ba;->VL:I

    if-le v3, v4, :cond_4

    .line 563
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget v4, v0, Lcom/tencent/mapapi/map/ba;->VL:I

    invoke-virtual {v3, v4}, Lcom/tencent/mapapi/map/bm;->bb(I)V

    .line 565
    :cond_4
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v3

    iget v4, v0, Lcom/tencent/mapapi/map/ba;->VM:I

    if-ge v3, v4, :cond_5

    .line 567
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget v0, v0, Lcom/tencent/mapapi/map/ba;->VM:I

    invoke-virtual {v3, v0}, Lcom/tencent/mapapi/map/bm;->bb(I)V

    .line 570
    :cond_5
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_7

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/tencent/mapapi/map/ba;->WG:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, v0, Lcom/tencent/mapapi/map/ba;->WH:Z

    if-ne v5, v2, :cond_6

    iget-boolean v5, v0, Lcom/tencent/mapapi/map/ba;->Vw:Z

    if-ne v5, v2, :cond_6

    iput-boolean v1, v0, Lcom/tencent/mapapi/map/ba;->Vw:Z

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 571
    :cond_7
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    move v0, v2

    .line 573
    goto/16 :goto_0

    .line 542
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 577
    goto/16 :goto_0
.end method

.method private mO()V
    .locals 3

    .prologue
    .line 707
    .line 708
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 709
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 710
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 711
    if-eqz v0, :cond_0

    .line 712
    iput v1, v0, Lcom/tencent/mapapi/map/ba;->p:I

    .line 709
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 716
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    const/4 v9, 0x0

    .line 910
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v2

    .line 911
    cmpl-float v0, v2, v6

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 914
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xj:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 915
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xj:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v1, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 918
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xj:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v9

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    if-eqz v0, :cond_1

    iget-boolean v5, v0, Lcom/tencent/mapapi/map/ba;->Vw:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/ba;->c(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 921
    :cond_2
    cmpl-float v0, v2, v6

    if-eqz v0, :cond_3

    .line 923
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 926
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/m;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/m;->mv()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-static {v1}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mapapi/map/m;->a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZJ)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/mapapi/map/m;

    if-eqz v6, :cond_6

    iget-object v1, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-static {v1}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v8

    move-object v7, p1

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/mapapi/map/m;->a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZJ)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Xg:Lcom/tencent/mapapi/map/bs;

    sget-object v1, Lcom/tencent/mapapi/map/bs;->XK:Lcom/tencent/mapapi/map/bs;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/mapapi/map/az;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-static {v1}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v8

    move-object v7, p1

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/mapapi/map/az;->a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZJ)Z

    goto :goto_3

    .line 927
    :cond_8
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    sget-object v0, Lcom/tencent/mapapi/map/bq;->VK:Lcom/tencent/mapapi/map/br;

    sget-object v1, Lcom/tencent/mapapi/map/br;->XH:Lcom/tencent/mapapi/map/br;

    if-ne v0, v1, :cond_a

    :goto_4
    if-eqz v3, :cond_9

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const-string v2, "\u9274\u6743\u5931\u8d25\uff0c\u8bf7\u5230soso"

    const-string v3, "\u5730\u56fe\u5b98\u7f51\u7533\u8bf7\u5bc6\u94a5"

    iget-object v4, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v5, v5, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v5}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v2, v9, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-int/lit8 v6, v4, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v2, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v9, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-int/lit8 v2, v4, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 929
    :cond_9
    return-void

    :cond_a
    move v3, v9

    .line 927
    goto :goto_4
.end method

.method public final a(Lcom/tencent/mapapi/map/az;)V
    .locals 1
    .parameter

    .prologue
    .line 900
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    return-void
.end method

.method public final mB()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-static {v0}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-static {v0}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->postInvalidate()V

    goto :goto_0
.end method

.method public final md()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 783
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v2

    .line 784
    :goto_0
    if-ge v0, v1, :cond_0

    .line 787
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 797
    :goto_1
    if-ge v1, v3, :cond_2

    .line 799
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Xc:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/az;

    .line 800
    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Lcom/tencent/mapapi/map/az;->me()V

    .line 803
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 806
    :cond_2
    return-void
.end method

.method public final me()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 809
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 811
    iget-object v3, p0, Lcom/tencent/mapapi/map/bi;->Xe:[B

    monitor-enter v3

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 815
    :goto_0
    if-ge v2, v4, :cond_1

    .line 817
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ub:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/av;

    .line 818
    if-eqz v0, :cond_0

    .line 820
    invoke-interface {v0}, Lcom/tencent/mapapi/map/av;->me()V

    .line 823
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 825
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 831
    iget-object v2, p0, Lcom/tencent/mapapi/map/bi;->Xd:[B

    monitor-enter v2

    .line 834
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 835
    :goto_1
    if-ge v1, v3, :cond_4

    .line 837
    iget-object v0, p0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    .line 838
    if-eqz v0, :cond_3

    .line 840
    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ba;->md()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 843
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 845
    :cond_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 848
    :cond_5
    return-void

    .line 845
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
