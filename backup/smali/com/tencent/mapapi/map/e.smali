.class final Lcom/tencent/mapapi/map/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private Vi:Ljava/util/ArrayList;

.field private Vj:Ljava/util/ArrayList;

.field final synthetic Vk:Lcom/tencent/mapapi/map/b;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/b;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 500
    iput-object p1, p0, Lcom/tencent/mapapi/map/e;->Vk:Lcom/tencent/mapapi/map/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 505
    iput-object v1, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vj:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 510
    iput-object v1, p0, Lcom/tencent/mapapi/map/e;->Vj:Ljava/util/ArrayList;

    .line 513
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/b;->size()I

    move-result v1

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/e;->Vj:Ljava/util/ArrayList;

    .line 517
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 518
    iget-object v2, p0, Lcom/tencent/mapapi/map/e;->Vj:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {p1, v0}, Lcom/tencent/mapapi/map/b;->bf(I)Lcom/tencent/mapapi/map/OverlayItem;

    move-result-object v2

    .line 520
    iget-object v3, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vj:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    return-void
.end method

.method private static a(Lcom/tencent/mapapi/map/OverlayItem;Lcom/tencent/mapapi/map/o;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/OverlayItem;->my()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/tencent/mapapi/map/o;->a(Lcom/tencent/mapapi/map/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 666
    new-instance v1, Landroid/graphics/Point;

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v3, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private e(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)I
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mapapi/map/MapView;->mp()Lcom/tencent/mapapi/map/o;

    move-result-object v9

    .line 614
    const/4 v0, 0x0

    invoke-interface {v9, p1, v0}, Lcom/tencent/mapapi/map/o;->a(Lcom/tencent/mapapi/map/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 615
    const/4 v6, -0x1

    .line 616
    const-wide v2, 0x7fefffffffffffffL

    .line 618
    const v4, 0x7fffffff

    .line 619
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 622
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v11, :cond_2

    .line 625
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/OverlayItem;

    .line 626
    if-eqz v0, :cond_3

    .line 628
    const-wide/high16 v7, -0x4010

    invoke-static {v0, v9, v10}, Lcom/tencent/mapapi/map/e;->a(Lcom/tencent/mapapi/map/OverlayItem;Lcom/tencent/mapapi/map/o;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v12

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/OverlayItem;->mx()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mapapi/map/e;->Vk:Lcom/tencent/mapapi/map/b;

    invoke-static {v1}, Lcom/tencent/mapapi/map/b;->a(Lcom/tencent/mapapi/map/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iget-object v13, p0, Lcom/tencent/mapapi/map/e;->Vk:Lcom/tencent/mapapi/map/b;

    iget v13, v12, Landroid/graphics/Point;->x:I

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-static {v1, v13, v12}, Lcom/tencent/mapapi/map/b;->a(Landroid/graphics/drawable/Drawable;II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0, v9, v10}, Lcom/tencent/mapapi/map/e;->a(Lcom/tencent/mapapi/map/OverlayItem;Lcom/tencent/mapapi/map/o;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v7

    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v7

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 635
    :goto_1
    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-ltz v7, :cond_1

    cmpg-double v7, v0, v2

    if-gez v7, :cond_1

    .line 638
    invoke-virtual {p0, v5}, Lcom/tencent/mapapi/map/e;->bi(I)I

    move-result v2

    move v3, v5

    .line 624
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v4, v2

    move v6, v3

    move-wide v2, v0

    goto :goto_0

    .line 640
    :cond_1
    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 642
    invoke-virtual {p0, v5}, Lcom/tencent/mapapi/map/e;->bi(I)I

    move-result v0

    .line 643
    if-le v0, v4, :cond_3

    move-wide v0, v2

    move v2, v4

    move v3, v5

    .line 644
    goto :goto_2

    .line 648
    :cond_2
    return v6

    :cond_3
    move-wide v0, v2

    move v2, v4

    move v3, v6

    goto :goto_2

    :cond_4
    move-wide v0, v7

    goto :goto_1
.end method


# virtual methods
.method public final b(Lcom/tencent/mapapi/map/OverlayItem;)I
    .locals 3
    .parameter

    .prologue
    .line 548
    const/4 v1, -0x1

    .line 549
    if-eqz p1, :cond_1

    .line 550
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 551
    iget-object v2, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    :goto_1
    return v0

    .line 550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final bh(I)Lcom/tencent/mapapi/map/OverlayItem;
    .locals 1
    .parameter

    .prologue
    .line 561
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/OverlayItem;

    return-object v0
.end method

.method public final bi(I)I
    .locals 1
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 593
    invoke-direct {p0, p1, p2}, Lcom/tencent/mapapi/map/e;->e(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)I

    move-result v0

    .line 594
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/tencent/mapapi/map/e;->Vk:Lcom/tencent/mapapi/map/b;

    iget-object v2, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/OverlayItem;

    invoke-static {v1, v0}, Lcom/tencent/mapapi/map/b;->a(Lcom/tencent/mapapi/map/b;Lcom/tencent/mapapi/map/OverlayItem;)Lcom/tencent/mapapi/map/OverlayItem;

    .line 597
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 494
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/OverlayItem;->my()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/OverlayItem;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/OverlayItem;->my()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v5

    if-le v4, v5, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v0

    if-le v1, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-direct {p0, p1, p2}, Lcom/tencent/mapapi/map/e;->e(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)I

    move-result v0

    .line 603
    if-ltz v0, :cond_0

    .line 604
    iget-object v1, p0, Lcom/tencent/mapapi/map/e;->Vk:Lcom/tencent/mapapi/map/b;

    invoke-virtual {v1, v0}, Lcom/tencent/mapapi/map/b;->onTap(I)Z

    .line 608
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/mapapi/map/MapView;->mm()Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bi;->mB()V

    .line 609
    const/4 v0, 0x0

    return v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vk:Lcom/tencent/mapapi/map/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/b;->a(Lcom/tencent/mapapi/map/OverlayItem;)V

    goto :goto_0
.end method

.method public final ml()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/tencent/mapapi/map/e;->Vi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
