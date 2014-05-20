.class public Lcom/tencent/mapapi/map/MapView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mapapi/map/ax;


# instance fields
.field private Vm:Lcom/tencent/mapapi/map/bh;

.field private Vn:Lcom/tencent/mapapi/map/l;

.field private Vo:Lcom/tencent/mapapi/map/f;

.field Vp:Landroid/widget/ZoomControls;

.field Vq:Lcom/tencent/mapapi/map/ah;

.field Vr:Landroid/view/View$OnClickListener;

.field Vs:Landroid/view/View$OnClickListener;

.field private Vt:Landroid/os/Handler;

.field private Vu:Ljava/lang/Runnable;

.field Vv:J

.field private Vw:Z

.field private Vx:Landroid/os/Handler;

.field private Vy:Ljava/lang/Runnable;

.field private j:Z

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mapapi/map/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    .line 33
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    .line 34
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vr:Landroid/view/View$OnClickListener;

    .line 35
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vs:Landroid/view/View$OnClickListener;

    .line 36
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    .line 37
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/MapView;->j:Z

    .line 39
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    .line 40
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/tencent/mapapi/map/MapView;->Vv:J

    .line 41
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/MapView;->Vw:Z

    .line 105
    const v0, 0x1d4c0

    iput v0, p0, Lcom/tencent/mapapi/map/MapView;->m:I

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/tencent/mapapi/map/g;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/g;-><init>(Lcom/tencent/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vy:Ljava/lang/Runnable;

    .line 69
    invoke-virtual {p0, v2}, Lcom/tencent/mapapi/map/MapView;->setClickable(Z)V

    .line 71
    new-array v0, v2, [I

    const v1, 0x1010211

    aput v1, v0, v3

    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    instance-of v0, p1, Lcom/tencent/mapapi/map/MapActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/tencent/mapapi/map/MapActivity;

    invoke-virtual {v0, p0}, Lcom/tencent/mapapi/map/MapActivity;->a(Lcom/tencent/mapapi/map/ax;)V

    .line 80
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/tencent/mapapi/map/MapView;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    .line 33
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    .line 34
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vr:Landroid/view/View$OnClickListener;

    .line 35
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vs:Landroid/view/View$OnClickListener;

    .line 36
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    .line 37
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/MapView;->j:Z

    .line 39
    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    .line 40
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/tencent/mapapi/map/MapView;->Vv:J

    .line 41
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/MapView;->Vw:Z

    .line 105
    const v0, 0x1d4c0

    iput v0, p0, Lcom/tencent/mapapi/map/MapView;->m:I

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/tencent/mapapi/map/g;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/g;-><init>(Lcom/tencent/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vy:Ljava/lang/Runnable;

    .line 51
    invoke-virtual {p0, v2}, Lcom/tencent/mapapi/map/MapView;->setClickable(Z)V

    .line 52
    instance-of v0, p1, Lcom/tencent/mapapi/map/MapActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/tencent/mapapi/map/MapActivity;

    invoke-virtual {v0, p0}, Lcom/tencent/mapapi/map/MapActivity;->a(Lcom/tencent/mapapi/map/ax;)V

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/mapapi/map/MapView;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/MapView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/MapView;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mapapi/map/MapView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vy:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mapapi/map/MapView;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/tencent/mapapi/map/MapView;->m:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/bh;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 84
    const/16 v0, 0xf2

    const/16 v1, 0xef

    const/16 v2, 0xee

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/MapView;->setBackgroundColor(I)V

    .line 86
    new-instance v0, Lcom/tencent/mapapi/map/l;

    invoke-virtual {p0}, Lcom/tencent/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mapapi/map/l;-><init>(Lcom/tencent/mapapi/map/MapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    new-instance v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/MapView$LayoutParams;-><init>()V

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-virtual {p0, v1, v3, v0}, Lcom/tencent/mapapi/map/MapView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-static {p1}, Lcom/tencent/mapapi/map/bq;->a(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lcom/tencent/mapapi/map/bh;

    invoke-virtual {p0}, Lcom/tencent/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Lcom/tencent/mapapi/map/bh;-><init>(Landroid/content/Context;Lcom/tencent/mapapi/map/MapView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    .line 89
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/l;->lX()V

    .line 91
    new-instance v0, Lcom/tencent/mapapi/map/ah;

    invoke-direct {v0}, Lcom/tencent/mapapi/map/ah;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    .line 92
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/ah;->a(Lcom/tencent/mapapi/map/bh;)V

    .line 93
    new-instance v0, Landroid/widget/ZoomControls;

    invoke-virtual {p0}, Lcom/tencent/mapapi/map/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    new-instance v0, Lcom/tencent/mapapi/map/h;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/h;-><init>(Lcom/tencent/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vr:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/mapapi/map/i;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/i;-><init>(Lcom/tencent/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vs:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vr:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vs:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mapapi/map/j;

    invoke-direct {v0, p0}, Lcom/tencent/mapapi/map/j;-><init>(Lcom/tencent/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    invoke-virtual {p0, v3, v3}, Lcom/tencent/mapapi/map/MapView;->c(ZZ)V

    .line 95
    new-instance v0, Lcom/tencent/mapapi/map/f;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    invoke-direct {v0, v1}, Lcom/tencent/mapapi/map/f;-><init>(Lcom/tencent/mapapi/map/bh;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vo:Lcom/tencent/mapapi/map/f;

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/MapView;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, v3}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    .line 98
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vy:Ljava/lang/Runnable;

    iget v2, p0, Lcom/tencent/mapapi/map/MapView;->m:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method static synthetic e(Lcom/tencent/mapapi/map/MapView;)Lcom/tencent/mapapi/map/f;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vo:Lcom/tencent/mapapi/map/f;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mapapi/map/MapView;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/MapView;->j:Z

    return v0
.end method


# virtual methods
.method final c(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/MapView;->Vw:Z

    if-eqz v0, :cond_0

    .line 356
    if-eqz p1, :cond_2

    .line 357
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 362
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/mapapi/map/MapView;->Vv:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    .line 562
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->b(Lcom/tencent/mapapi/map/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->b(Lcom/tencent/mapapi/map/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 567
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->b(Lcom/tencent/mapapi/map/l;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 568
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->e(Lcom/tencent/mapapi/map/l;)I

    move-result v0

    sub-int v1, v2, v0

    .line 569
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->f(Lcom/tencent/mapapi/map/l;)I

    move-result v0

    sub-int v0, v3, v0

    .line 571
    iget-object v4, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v4

    .line 572
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 574
    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 575
    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 578
    :cond_0
    iget-object v4, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v4, v2}, Lcom/tencent/mapapi/map/l;->a(Lcom/tencent/mapapi/map/l;I)I

    .line 579
    iget-object v2, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v2, v3}, Lcom/tencent/mapapi/map/l;->b(Lcom/tencent/mapapi/map/l;I)I

    .line 581
    iget-object v2, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WV:Lcom/tencent/mapapi/map/bn;

    iget-object v3, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mapapi/map/bn;->s(II)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v1}, Lcom/tencent/mapapi/map/l;->b(Lcom/tencent/mapapi/map/l;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    .line 593
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1, v0}, Lcom/tencent/mapapi/map/bm;->h(Lcom/tencent/mapapi/map/GeoPoint;)V

    goto :goto_0

    .line 592
    :cond_2
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    goto :goto_0
.end method

.method public final getOverlays()Ljava/util/List;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    goto :goto_0
.end method

.method public getZoomLevel()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 132
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/l;->invalidate()V

    .line 136
    :cond_0
    return-void
.end method

.method final me()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->bringToFront()V

    .line 277
    return-void
.end method

.method final mm()Lcom/tencent/mapapi/map/bh;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    return-object v0
.end method

.method public final mn()Lcom/tencent/mapapi/map/GeoPoint;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mW()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public final mo()Lcom/tencent/mapapi/map/f;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vo:Lcom/tencent/mapapi/map/f;

    return-object v0
.end method

.method public final mp()Lcom/tencent/mapapi/map/o;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WV:Lcom/tencent/mapapi/map/bn;

    return-object v0
.end method

.method public final mq()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    sget-object v0, Lcom/tencent/mapapi/map/bq;->VK:Lcom/tencent/mapapi/map/br;

    sget-object v1, Lcom/tencent/mapapi/map/br;->XG:Lcom/tencent/mapapi/map/br;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final mr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bl;->mP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final ms()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mT()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mS()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 384
    :goto_1
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    goto :goto_1
.end method

.method public final mt()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-boolean v0, v0, Lcom/tencent/mapapi/map/bm;->UN:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/be;->G(Z)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 657
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iput-boolean v1, v0, Lcom/tencent/mapapi/map/bm;->UN:Z

    .line 658
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/MapView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 659
    :goto_0
    if-ge v0, v2, :cond_2

    .line 660
    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 661
    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 662
    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 664
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/be;->lX()V

    .line 668
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ah;->md()V

    :cond_3
    const v0, 0x540be400

    iput v0, p0, Lcom/tencent/mapapi/map/MapView;->m:I

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/mapapi/map/MapView;->Vy:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/tencent/mapapi/map/MapView;->Vy:Ljava/lang/Runnable;

    iput-object v4, p0, Lcom/tencent/mapapi/map/MapView;->Vx:Landroid/os/Handler;

    const-wide/32 v2, 0x540be400

    iput-wide v2, p0, Lcom/tencent/mapapi/map/MapView;->Vv:J

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    iput-object v4, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->a(Lcom/tencent/mapapi/map/l;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bi;->md()V

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bi;->me()V

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->b(Lcom/tencent/mapapi/map/l;)Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->c(Lcom/tencent/mapapi/map/l;)Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-static {v0}, Lcom/tencent/mapapi/map/l;->d(Lcom/tencent/mapapi/map/l;)Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v4}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v4}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v4, p0, Lcom/tencent/mapapi/map/MapView;->Vr:Landroid/view/View$OnClickListener;

    iput-object v4, p0, Lcom/tencent/mapapi/map/MapView;->Vs:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    .line 669
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->Xa:Lcom/tencent/mapapi/map/k;

    invoke-interface {v0}, Lcom/tencent/mapapi/map/k;->mu()V

    .line 558
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 679
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/be;->bb(I)V

    .line 680
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/be;->mN()V

    .line 681
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iput-boolean v1, v0, Lcom/tencent/mapapi/map/bm;->UN:Z

    .line 682
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/be;->mB()V

    .line 683
    return-void
.end method

.method public final onRestart()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    .line 687
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/mapapi/map/bm;->UN:Z

    .line 673
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/be;->bb(I)V

    .line 674
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/be;->mN()V

    .line 675
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/be;->ms()V

    .line 676
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 620
    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 621
    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v1, v0}, Lcom/tencent/mapapi/map/bo;->a(Landroid/graphics/Point;)V

    .line 623
    new-instance v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;

    add-int/lit8 v1, p1, -0x8

    add-int/lit8 v2, p2, -0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapapi/map/MapView$LayoutParams;-><init>(II)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v2}, Lcom/tencent/mapapi/map/MapView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    :goto_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapapi/map/bm;->u(II)V

    .line 627
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 639
    :cond_0
    :goto_1
    return-void

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mapapi/map/MapView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bm;->Xv:Lcom/tencent/mapapi/map/GeoPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bm;->Xw:Lcom/tencent/mapapi/map/GeoPoint;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bm;->Xv:Lcom/tencent/mapapi/map/GeoPoint;

    iget-object v2, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bm;->Xw:Lcom/tencent/mapapi/map/GeoPoint;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/GeoPoint;Z)V

    .line 636
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iput-object v4, v0, Lcom/tencent/mapapi/map/bm;->Xv:Lcom/tencent/mapapi/map/GeoPoint;

    .line 637
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iput-object v4, v0, Lcom/tencent/mapapi/map/bm;->Xw:Lcom/tencent/mapapi/map/GeoPoint;

    goto :goto_1
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    .line 643
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 599
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    if-nez v0, :cond_0

    move v0, v3

    .line 614
    :goto_0
    return v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v4, Lcom/tencent/mapapi/map/bi;->Xb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/m;

    if-eqz v0, :cond_5

    iget-object v1, v4, Lcom/tencent/mapapi/map/bi;->Xk:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-static {v1}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mapapi/map/m;->a(Landroid/view/MotionEvent;Lcom/tencent/mapapi/map/MapView;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    :goto_3
    if-eqz v0, :cond_1

    move v0, v3

    .line 603
    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/l;->h(Landroid/view/MotionEvent;)Z

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 608
    invoke-virtual {p0, v3, v2}, Lcom/tencent/mapapi/map/MapView;->c(ZZ)V

    .line 614
    :cond_2
    :goto_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 610
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 612
    invoke-virtual {p0, v3, v3}, Lcom/tencent/mapapi/map/MapView;->c(ZZ)V

    goto :goto_4

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 142
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vn:Lcom/tencent/mapapi/map/l;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/l;->postInvalidate()V

    .line 146
    :cond_0
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/tencent/mapapi/map/MapView;->Vw:Z

    .line 293
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/MapView;->Vw:Z

    if-ne v0, v1, :cond_0

    .line 295
    invoke-virtual {p0, v1, v1}, Lcom/tencent/mapapi/map/MapView;->c(ZZ)V

    .line 302
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vt:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mapapi/map/MapView;->Vu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    iget-object v0, p0, Lcom/tencent/mapapi/map/MapView;->Vp:Landroid/widget/ZoomControls;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    goto :goto_0
.end method
