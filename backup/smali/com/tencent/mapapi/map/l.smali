.class final Lcom/tencent/mapapi/map/l;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field TW:Z

.field private Um:I

.field private Un:I

.field private VB:Landroid/view/GestureDetector;

.field private VC:Landroid/widget/Scroller;

.field private VD:Lcom/tencent/mapapi/map/bt;

.field final synthetic VE:Lcom/tencent/mapapi/map/MapView;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/MapView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 724
    iput-object p1, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    .line 725
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 716
    iput v1, p0, Lcom/tencent/mapapi/map/l;->Um:I

    .line 717
    iput v1, p0, Lcom/tencent/mapapi/map/l;->Un:I

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/l;->VD:Lcom/tencent/mapapi/map/bt;

    .line 752
    iput-boolean v1, p0, Lcom/tencent/mapapi/map/l;->TW:Z

    .line 728
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/l;->VB:Landroid/view/GestureDetector;

    .line 729
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/l;->VC:Landroid/widget/Scroller;

    .line 730
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/l;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 710
    iput p1, p0, Lcom/tencent/mapapi/map/l;->Um:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/l;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 710
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VB:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mapapi/map/l;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 710
    iput p1, p0, Lcom/tencent/mapapi/map/l;->Un:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mapapi/map/l;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 710
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VC:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mapapi/map/l;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/l;->VB:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mapapi/map/l;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/l;->VC:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mapapi/map/l;)I
    .locals 1
    .parameter

    .prologue
    .line 710
    iget v0, p0, Lcom/tencent/mapapi/map/l;->Um:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mapapi/map/l;)I
    .locals 1
    .parameter

    .prologue
    .line 710
    iget v0, p0, Lcom/tencent/mapapi/map/l;->Un:I

    return v0
.end method


# virtual methods
.method public final h(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 754
    .line 755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 764
    :goto_0
    iget-object v1, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v1}, Lcom/tencent/mapapi/map/MapView;->f(Lcom/tencent/mapapi/map/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mapapi/map/l;->VD:Lcom/tencent/mapapi/map/bt;

    if-eqz v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VD:Lcom/tencent/mapapi/map/bt;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/bt;->h(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 771
    :cond_0
    return v0

    .line 758
    :sswitch_0
    iput-boolean v0, p0, Lcom/tencent/mapapi/map/l;->TW:Z

    goto :goto_0

    .line 761
    :sswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mapapi/map/l;->TW:Z

    goto :goto_0

    .line 755
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public final lX()V
    .locals 2

    .prologue
    .line 734
    new-instance v0, Lcom/tencent/mapapi/map/bt;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/bt;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/l;->VD:Lcom/tencent/mapapi/map/bt;

    .line 735
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VD:Lcom/tencent/mapapi/map/bt;

    iget-object v1, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v1}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bt;->a(Lcom/tencent/mapapi/map/bh;)V

    .line 736
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VD:Lcom/tencent/mapapi/map/bt;

    iget-object v1, p0, Lcom/tencent/mapapi/map/l;->VB:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bt;->a(Landroid/view/GestureDetector;)V

    .line 737
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 849
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    iget-object v0, v0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mapapi/map/ah;->t(II)Z

    .line 850
    const/4 v0, 0x1

    return v0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 777
    const/4 v0, 0x1

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/bi;->a(Landroid/graphics/Canvas;)V

    .line 743
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 783
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VC:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VC:Landroid/widget/Scroller;

    invoke-virtual {v0, v9}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 787
    :cond_0
    iput v1, p0, Lcom/tencent/mapapi/map/l;->Um:I

    .line 788
    iput v1, p0, Lcom/tencent/mapapi/map/l;->Un:I

    .line 789
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v0

    mul-int/lit8 v6, v0, 0x3

    .line 790
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v0

    mul-int/lit8 v8, v0, 0x3

    .line 791
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VC:Landroid/widget/Scroller;

    neg-float v2, p3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v3, v2, 0x14

    neg-float v2, p4

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v4, v2, 0x14

    neg-int v5, v6

    neg-int v7, v8

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 794
    return v9
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    .line 799
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    if-nez v0, :cond_1

    .line 804
    :cond_0
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v2, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WV:Lcom/tencent/mapapi/map/bn;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mapapi/map/bn;->s(II)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v3

    iget-object v0, v2, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, v2, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/m;

    if-eqz v0, :cond_2

    iget-object v4, v2, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-static {v4}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mapapi/map/m;->b(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 815
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v0

    .line 816
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 818
    div-float/2addr p3, v0

    .line 819
    div-float/2addr p4, v0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->e(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/f;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/tencent/mapapi/map/f;->l(FF)V

    .line 822
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->invalidate()V

    .line 823
    const/4 v0, 0x1

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 860
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    const/4 v1, 0x0

    iget-object v0, v3, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WV:Lcom/tencent/mapapi/map/bn;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Lcom/tencent/mapapi/map/bn;->s(II)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v4

    iget-object v0, v3, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, v3, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/m;

    if-eqz v0, :cond_1

    iget-object v5, v3, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v5, v5, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-static {v5}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mapapi/map/m;->a(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 862
    :cond_0
    if-nez v1, :cond_2

    .line 864
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WV:Lcom/tencent/mapapi/map/bn;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mapapi/map/bn;->s(II)Lcom/tencent/mapapi/map/GeoPoint;

    .line 866
    iget-object v0, p0, Lcom/tencent/mapapi/map/l;->VE:Lcom/tencent/mapapi/map/MapView;

    invoke-static {v0}, Lcom/tencent/mapapi/map/MapView;->d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v2, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v3, v2, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 860
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 869
    :cond_2
    return v1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method
