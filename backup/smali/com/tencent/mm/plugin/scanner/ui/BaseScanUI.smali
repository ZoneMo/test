.class public Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/tencent/mm/plugin/scanner/ui/am;


# instance fields
.field private ebG:J

.field private final ebH:J

.field private ebI:Landroid/view/SurfaceHolder;

.field private ebJ:Z

.field private ebK:Landroid/widget/LinearLayout;

.field private ebL:Landroid/widget/TextView;

.field private ebM:Landroid/widget/FrameLayout;

.field private ebN:Lcom/tencent/mm/plugin/scanner/b/h;

.field private ebO:Z

.field private ebP:Ljava/lang/Object;

.field private ebQ:Landroid/graphics/Point;

.field private ebR:Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;

.field private ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

.field private ebT:Z

.field private ebU:Z

.field private ebV:Lcom/tencent/mm/plugin/scanner/ui/al;

.field private ebW:Z

.field private ebX:I

.field private ebY:I

.field private ebZ:I

.field private eca:I

.field private ecb:Landroid/view/animation/TranslateAnimation;

.field private ecc:Landroid/widget/ImageView;

.field private ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

.field ece:I

.field private ecf:Landroid/widget/TextView;

.field private ecg:Landroid/view/View;

.field private ech:J

.field private eci:Z

.field private ecj:Z

.field private eck:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;

.field private ecl:Lcom/tencent/mm/network/ag;

.field protected ecm:Landroid/os/Handler;

.field private final ecn:I

.field private eco:Landroid/view/SurfaceHolder$Callback;

.field private ecp:Z

.field protected ecq:Landroid/os/Handler;

.field protected ecr:Landroid/os/Handler;

.field protected ecs:Landroid/os/Handler;

.field private ect:J

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 58
    const-wide/16 v0, 0x4b0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebG:J

    .line 59
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebH:J

    .line 62
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebJ:Z

    .line 67
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebO:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebP:Ljava/lang/Object;

    .line 72
    iput-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    .line 74
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebU:Z

    .line 77
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    .line 89
    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ece:I

    .line 95
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eci:Z

    .line 96
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecj:Z

    .line 126
    iput-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eck:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;

    .line 128
    iput-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/a;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/a;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecl:Lcom/tencent/mm/network/ag;

    .line 488
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/l;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/l;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecm:Landroid/os/Handler;

    .line 510
    const/16 v0, 0xa28

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecn:I

    .line 561
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/m;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eco:Landroid/view/SurfaceHolder$Callback;

    .line 835
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecp:Z

    .line 836
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/d;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/d;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecq:Landroid/os/Handler;

    .line 918
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/e;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecr:Landroid/os/Handler;

    .line 937
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/f;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/f;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecs:Landroid/os/Handler;

    .line 953
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ect:J

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Lcom/tencent/mm/plugin/scanner/b/h;)Lcom/tencent/mm/plugin/scanner/b/h;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Lcom/tencent/mm/plugin/scanner/ui/ai;)Lcom/tencent/mm/plugin/scanner/ui/ai;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aag()V

    return-void
.end method

.method private a(ZJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 513
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebZ:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eca:I

    if-gtz v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    if-eqz p1, :cond_2

    .line 517
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecb:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebZ:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eca:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecb:Landroid/view/animation/TranslateAnimation;

    .line 519
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecm:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_4

    .line 521
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecm:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecb:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->reset()V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebZ:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eca:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecb:Landroid/view/animation/TranslateAnimation;

    goto :goto_1

    .line 523
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aad()V

    .line 524
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecm:Landroid/os/Handler;

    invoke-virtual {v0, v4, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebU:Z

    return p1
.end method

.method private aac()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    if-nez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 362
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aax()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebM:Landroid/widget/FrameLayout;

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 363
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaz()V

    .line 364
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebJ:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aai()V

    goto :goto_0
.end method

.method private aaf()V
    .locals 3

    .prologue
    .line 595
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/n;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/n;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 622
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/o;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/o;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    const-wide/16 v1, 0x1e

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    .line 649
    return-void
.end method

.method private aag()V
    .locals 2

    .prologue
    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebO:Z

    .line 653
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/p;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/scanner/ui/p;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 668
    return-void
.end method

.method private aah()V
    .locals 3

    .prologue
    .line 671
    sget v0, Lcom/tencent/mm/n;->bxr:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/scanner/ui/c;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/scanner/ui/c;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    .line 680
    if-nez v0, :cond_0

    .line 681
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "comfirmDialog == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/x;->setCanceledOnTouchOutside(Z)V

    .line 685
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebU:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecf:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebJ:Z

    return p1
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecp:Z

    return p1
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(ZJ)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Lcom/tencent/mm/plugin/scanner/ui/ai;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecb:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Lcom/tencent/mm/plugin/scanner/b/h;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebJ:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)J
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ech:J

    return-wide v0
.end method

.method static synthetic l(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebP:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aaf()V

    return-void
.end method

.method static synthetic n(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebI:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aah()V

    return-void
.end method

.method static synthetic p(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebO:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecp:Z

    return v0
.end method

.method static synthetic r(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    return v0
.end method

.method static synthetic s(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebR:Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eci:Z

    return v0
.end method

.method static synthetic u(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecj:Z

    return v0
.end method

.method static synthetic v(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Landroid/graphics/Point;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebQ:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aac()V

    return-void
.end method

.method static synthetic x(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    return v0
.end method


# virtual methods
.method protected final FR()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ech:J

    .line 239
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    .line 240
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 242
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aFd()V

    .line 243
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "oncreate LANDSCAPE"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    sget v0, Lcom/tencent/mm/i;->aIb:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    .line 246
    sget v0, Lcom/tencent/mm/i;->aIc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecf:Landroid/widget/TextView;

    .line 248
    sget v0, Lcom/tencent/mm/i;->aIf:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebK:Landroid/widget/LinearLayout;

    .line 249
    sget v0, Lcom/tencent/mm/i;->aIg:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebL:Landroid/widget/TextView;

    .line 250
    sget v0, Lcom/tencent/mm/i;->aHZ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebM:Landroid/widget/FrameLayout;

    .line 252
    sget v0, Lcom/tencent/mm/i;->aEp:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 253
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebI:Landroid/view/SurfaceHolder;

    .line 254
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebI:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eco:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 255
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebI:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 257
    sget v0, Lcom/tencent/mm/i;->aHY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 258
    if-eqz v0, :cond_2

    .line 259
    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/i;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/scanner/ui/i;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :goto_0
    sget v0, Lcom/tencent/mm/i;->aIa:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    .line 284
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GetFriendQRCodeUI.INTENT_FROM_ACTIVITY"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ece:I

    .line 285
    sget v0, Lcom/tencent/mm/i;->aId:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebR:Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;

    .line 287
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 289
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BaseScanUI_select_scan_mode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 290
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BaseScanUI_qrcode_right_btn_direct_album"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecj:Z

    .line 291
    iget-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    if-eqz v1, :cond_1

    .line 294
    iput-boolean v6, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eci:Z

    move v0, v6

    .line 297
    :cond_1
    if-ne v0, v8, :cond_3

    .line 298
    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/an;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebQ:Landroid/graphics/Point;

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/plugin/scanner/ui/an;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    .line 299
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aac()V

    .line 300
    sget v1, Lcom/tencent/mm/n;->bxn:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->mn(I)V

    .line 335
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebR:Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;

    new-instance v2, Lcom/tencent/mm/plugin/scanner/ui/k;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/scanner/ui/k;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;->a(Lcom/tencent/mm/plugin/scanner/ui/bs;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebR:Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;->hI(I)V

    .line 337
    const-string v1, "MicroMsg.scanner.ScanBaseUI"

    const-string v2, "initView() done, fromSource=[%s], directSelectMode=[%s]"

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ece:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    return-void

    .line 269
    :cond_2
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/j;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/j;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto/16 :goto_0

    .line 301
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 302
    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/bi;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebQ:Landroid/graphics/Point;

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/plugin/scanner/ui/bi;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    .line 303
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aac()V

    .line 304
    sget v1, Lcom/tencent/mm/n;->bxj:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->mn(I)V

    goto :goto_1

    .line 305
    :cond_4
    if-ne v0, v3, :cond_5

    .line 306
    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/ar;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebQ:Landroid/graphics/Point;

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/plugin/scanner/ui/ar;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    .line 307
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aac()V

    .line 308
    sget v1, Lcom/tencent/mm/n;->bxf:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->mn(I)V

    goto :goto_1

    .line 317
    :cond_5
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/at;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebQ:Landroid/graphics/Point;

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ece:I

    iget-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    iget-boolean v5, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecj:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/scanner/ui/at;-><init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;IZZ)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    check-cast v0, Lcom/tencent/mm/plugin/scanner/ui/at;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_is_finish_on_scanned"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/at;->bh(Z)V

    .line 319
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aac()V

    .line 321
    invoke-static {}, Lcom/tencent/mm/x/b;->Bh()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 322
    iput-boolean v6, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eci:Z

    .line 323
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebR:Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;

    invoke-virtual {v0, v9}, Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;->setVisibility(I)V

    .line 328
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eci:Z

    if-eqz v0, :cond_8

    .line 329
    sget v0, Lcom/tencent/mm/n;->bxh:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->mn(I)V

    move v0, v6

    goto/16 :goto_1

    .line 324
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BaseScanUI_only_scan_qrcode_with_zbar"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 325
    iput-boolean v7, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eci:Z

    .line 326
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebR:Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;

    invoke-virtual {v0, v9}, Lcom/tencent/mm/plugin/scanner/ui/SelectScanModePanel;->setVisibility(I)V

    goto :goto_2

    .line 331
    :cond_8
    sget v0, Lcom/tencent/mm/n;->bxi:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->mn(I)V

    move v0, v6

    goto/16 :goto_1
.end method

.method protected final IX()I
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    .line 145
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    if-nez v0, :cond_0

    .line 146
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "getForceOrientation PORTRAIT"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "getForceOrientation LANDSCAPE"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final VX()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 169
    :cond_0
    return-void
.end method

.method public final a(ILandroid/view/View$OnClickListener;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1051
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebK:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebK:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebK:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    if-eqz p3, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebL:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1056
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebL:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bxT:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    if-nez p2, :cond_2

    .line 1060
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->mE(I)Z

    goto :goto_0

    .line 1062
    :cond_2
    if-eqz p3, :cond_3

    .line 1063
    sget v0, Lcom/tencent/mm/n;->bxT:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/g;

    invoke-direct {v1, p0, p2}, Lcom/tencent/mm/plugin/scanner/ui/g;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    .line 1074
    :cond_3
    sget v0, Lcom/tencent/mm/h;->afQ:I

    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/h;

    invoke-direct {v1, p0, p2}, Lcom/tencent/mm/plugin/scanner/ui/h;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0
.end method

.method public final a(JZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 799
    if-eqz p3, :cond_0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 800
    iput-wide p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebG:J

    .line 802
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->aaM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aC(J)V

    .line 805
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 806
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aD(J)V

    .line 812
    :cond_1
    :goto_0
    return-void

    .line 808
    :cond_2
    iget-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebG:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aD(J)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/plugin/scanner/ui/al;)V
    .locals 0
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebV:Lcom/tencent/mm/plugin/scanner/ui/al;

    .line 1013
    return-void
.end method

.method public final aC(J)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecr:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 930
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecr:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 935
    :goto_0
    return-void

    .line 933
    :cond_0
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "takeOneShotDelay() scanPause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final aD(J)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 956
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecs:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 957
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecs:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ect:J

    .line 972
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->aaM()Z

    .line 964
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ect:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebG:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 965
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "autoFocusDelay sendEmptyMessageDelayed [%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebG:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ect:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecs:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebG:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ect:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 968
    :cond_1
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "autoFocusDelay sendEmptyMessageDelayed [%s]."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecs:Landroid/os/Handler;

    invoke-virtual {v0, v9, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ect:J

    goto :goto_0
.end method

.method public final aad()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecb:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 535
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecc:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 537
    :cond_0
    return-void
.end method

.method public final aae()V
    .locals 1

    .prologue
    .line 556
    sget v0, Lcom/tencent/mm/n;->buc:I

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/bq;->q(Landroid/content/Context;I)V

    .line 559
    return-void
.end method

.method public final aai()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/ai;->bg(Z)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    .line 692
    :cond_0
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "initBodyByScanMode null scanMode"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_1
    :goto_0
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-eqz v0, :cond_1

    .line 698
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 699
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 700
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 702
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/mm/plugin/scanner/ui/ai;->bg(Z)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/scanner/b/h;->a(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 703
    const-string v3, "MicroMsg.scanner.ScanBaseUI"

    const-string v4, "initBodyByScanMode statusBarHeight = [%s], CameraScreenHeightRate() = [%s], CameraScreenWidthRate() = [%s], frame.width=[%s], frame.height=[%s]"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/scanner/b/h;->aaP()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    if-nez v0, :cond_6

    .line 707
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->aaN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 708
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    .line 709
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/scanner/b/h;->aaP()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebY:I

    .line 719
    :goto_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebY:I

    const/4 v5, 0x3

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 720
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->aaN()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 721
    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/scanner/b/h;->aaP()F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 722
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 723
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x3ff4cccccccccccdL

    cmpl-double v0, v4, v6

    if-lez v0, :cond_7

    .line 724
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    int-to-float v2, v1

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v4

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 733
    :goto_2
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v2, "mask : leftMargin=[%s], topMargin=[%s], width=[%s], height=[%s], needRotate=[%s], statusBarHeight=[%s]"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/scanner/b/h;->aaN()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0, v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaA()I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 741
    const/high16 v0, 0x4170

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    .line 742
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v6, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v6, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebY:I

    add-int/2addr v3, v6

    sub-int/2addr v3, v1

    sub-int v1, v3, v1

    invoke-direct {v0, v2, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 748
    :goto_3
    invoke-static {p0}, Lcom/tencent/mm/plugin/scanner/b/h;->h(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_3

    .line 749
    const-string v1, "MicroMsg.scanner.ScanBaseUI"

    const-string v2, "this is a special device"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {p0}, Lcom/tencent/mm/plugin/scanner/b/h;->h(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_3

    .line 751
    invoke-static {p0}, Lcom/tencent/mm/plugin/scanner/b/h;->h(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 754
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    .line 756
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    if-eqz v1, :cond_a

    .line 757
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;->aas()Landroid/graphics/Rect;

    move-result-object v1

    .line 758
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;->aar()V

    .line 759
    new-instance v2, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    invoke-direct {v2, p0, v1}, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    .line 763
    :goto_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 764
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebM:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 767
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aax()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebM:Landroid/widget/FrameLayout;

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 768
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebM:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;->a(Landroid/graphics/Rect;)V

    .line 770
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/ai;->hG(I)V

    .line 771
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebZ:I

    .line 772
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v1, 0x4100

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eca:I

    .line 774
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebU:Z

    if-eqz v0, :cond_b

    .line 775
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    invoke-static {}, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;->aat()J

    const-wide/16 v1, 0x15e

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(ZJ)V

    .line 776
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->aaM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 777
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aC(J)V

    .line 778
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aD(J)V

    .line 780
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecf:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecf:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 793
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 711
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/scanner/b/h;->aaP()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    .line 712
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebY:I

    goto/16 :goto_1

    .line 715
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/scanner/b/h;->aaP()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    .line 716
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebY:I

    goto/16 :goto_1

    .line 726
    :cond_7
    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    const/high16 v2, 0x4110

    invoke-static {p0, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int v2, v1, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v4

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 729
    :cond_8
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/scanner/b/h;->aaP()F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 730
    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/scanner/b/h;->aaQ()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 746
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebX:I

    add-int/2addr v4, v5

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebY:I

    add-int/2addr v3, v5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    .line 761
    :cond_a
    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    goto/16 :goto_4

    .line 785
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecf:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecf:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bxq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 787
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecf:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public final aaj()V
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebJ:Z

    if-nez v0, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebI:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/scanner/b/h;->b(Landroid/view/SurfaceHolder;)V

    .line 822
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aC(J)V

    .line 823
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aD(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_1
    const/4 v0, 0x0

    const-wide/16 v1, 0x96

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(ZJ)V

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "in setPreviewState"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final aak()V
    .locals 1

    .prologue
    .line 1017
    const/16 v0, 0x1234

    invoke-static {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->e(Landroid/app/Activity;I)Z

    .line 1018
    return-void
.end method

.method public final aal()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 1029
    return-object p0
.end method

.method public final aam()Z
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-nez v0, :cond_0

    .line 1092
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "scanCamera == null, cameraNeedRotate return false"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const/4 v0, 0x0

    .line 1095
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->aaN()Z

    move-result v0

    goto :goto_0
.end method

.method public final bd(Z)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1034
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    .line 1035
    if-eqz p1, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aad()V

    .line 1037
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    invoke-virtual {p0, v2, v3, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(JZ)V

    .line 1042
    invoke-direct {p0, v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(ZJ)V

    .line 1043
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    .line 133
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebW:Z

    if-nez v0, :cond_0

    .line 134
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "getLayoutId PORTRAIT"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget v0, Lcom/tencent/mm/k;->aYM:I

    .line 138
    :goto_0
    return v0

    .line 137
    :cond_0
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "getLayoutId LANDSCAPE"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget v0, Lcom/tencent/mm/k;->aYN:I

    goto :goto_0
.end method

.method public final hD(I)V
    .locals 3
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecq:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 915
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecq:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 916
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebV:Lcom/tencent/mm/plugin/scanner/ui/al;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebV:Lcom/tencent/mm/plugin/scanner/ui/al;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/mm/plugin/scanner/ui/al;->b(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 1025
    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    if-eqz v0, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaA()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaA()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->aaM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebG:J

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aD(J)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-static {p0}, Lcom/tencent/mm/ui/MMActivity;->bO(Landroid/content/Context;)Ljava/util/Locale;

    .line 217
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 218
    :cond_0
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebU:Z

    .line 223
    :goto_0
    invoke-static {p0}, Lcom/tencent/mm/plugin/scanner/b/h;->h(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebQ:Landroid/graphics/Point;

    .line 225
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;-><init>(Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eck:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;

    .line 226
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eck:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->FR()V

    .line 234
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebU:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 448
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebS:Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ScanMaskView;->aar()V

    .line 455
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aag()V

    .line 456
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->VX()V

    .line 457
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->eck:Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI$ScreenOnOffReceiver;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 459
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 371
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 372
    const-string v1, "MicroMsg.scanner.ScanBaseUI"

    const-string v2, "keyCode KEYCODE_BACK"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    .line 374
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->finish()V

    .line 375
    invoke-virtual {p0, v3, v3}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->overridePendingTransition(II)V

    .line 378
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 427
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    .line 429
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->onPause()V

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaw()Lcom/tencent/mm/plugin/scanner/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaw()Lcom/tencent/mm/plugin/scanner/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/a;->aaF()V

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebP:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/h;->stopPreview()V

    .line 440
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.ui.ACTION_DEACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.tencent.mm.permission.MM_MESSAGE"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecl:Lcom/tencent/mm/network/ag;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->b(Lcom/tencent/mm/network/ag;)V

    .line 443
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 444
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 976
    iget-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaw()Lcom/tencent/mm/plugin/scanner/b/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/plugin/scanner/ui/ai;->bg(Z)Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_1

    .line 977
    :cond_0
    const-string v2, "MicroMsg.scanner.ScanBaseUI"

    const-string v3, "onPreviewFrame error state, scanPause = [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    :goto_0
    return-void

    .line 980
    :cond_1
    if-eqz p1, :cond_2

    array-length v2, p1

    if-gtz v2, :cond_4

    .line 981
    :cond_2
    const-string v2, "MicroMsg.scanner.ScanBaseUI"

    const-string v3, "onPreviewFrame, wrong data, data is null [%s]"

    new-array v4, v0, [Ljava/lang/Object;

    if-nez p1, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aah()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 981
    goto :goto_1

    .line 985
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-nez v0, :cond_5

    .line 986
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "onPreviewFrame, scanCamera == null, finish this activity"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaw()Lcom/tencent/mm/plugin/scanner/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/scanner/b/h;->aaO()Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v4, v1}, Lcom/tencent/mm/plugin/scanner/ui/ai;->bg(Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/plugin/scanner/b/h;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->bD(Landroid/content/Context;)J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/plugin/scanner/b/a;->a([BLandroid/graphics/Point;Landroid/graphics/Rect;J)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 383
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 384
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebU:Z

    if-eqz v0, :cond_4

    .line 385
    iput-boolean v4, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    .line 386
    invoke-direct {p0, v4, v5, v6}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->a(ZJ)V

    .line 391
    :goto_0
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v1, "onResume(), scanPause=[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebJ:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebP:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    if-nez v0, :cond_5

    .line 395
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v2, "reOpen Camera"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/tencent/mm/plugin/scanner/b/h;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/b/h;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    .line 397
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aaf()V

    .line 408
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaw()Lcom/tencent/mm/plugin/scanner/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->aaw()Lcom/tencent/mm/plugin/scanner/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/b/a;->aaG()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecd:Lcom/tencent/mm/plugin/scanner/ui/ai;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/scanner/ui/ai;->onResume()V

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_3

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "MicroMsg.scanner.ScanBaseUI"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 421
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.mm.ui.ACTION_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.tencent.mm.permission.MM_MESSAGE"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ecl:Lcom/tencent/mm/network/ag;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->a(Lcom/tencent/mm/network/ag;)V

    .line 423
    return-void

    .line 388
    :cond_4
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebT:Z

    .line 389
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aad()V

    goto/16 :goto_0

    .line 399
    :cond_5
    :try_start_1
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v2, "startPreview"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebO:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebN:Lcom/tencent/mm/plugin/scanner/b/h;

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->ebI:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/scanner/b/h;->b(Landroid/view/SurfaceHolder;)V

    .line 403
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aC(J)V

    .line 404
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/plugin/scanner/ui/BaseScanUI;->aD(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 407
    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "MicroMsg.scanner.ScanBaseUI"

    const-string v2, "in onResume startPreview"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
