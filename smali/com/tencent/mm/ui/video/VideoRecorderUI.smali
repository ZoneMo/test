.class public Lcom/tencent/mm/ui/video/VideoRecorderUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# static fields
.field private static hti:Lcom/tencent/mm/ui/video/VideoRecorderUI;


# instance fields
.field private bNl:Ljava/lang/String;

.field private cAv:Ljava/lang/String;

.field private cIr:Landroid/app/ProgressDialog;

.field private cSS:Lcom/tencent/mm/sdk/platformtools/ay;

.field private cSz:J

.field private ekZ:Landroid/widget/ImageButton;

.field private gFe:Landroid/view/SurfaceHolder;

.field private hsI:Landroid/widget/TextView;

.field private hsJ:Landroid/widget/TextView;

.field private hsQ:Ljava/lang/String;

.field private hsV:Landroid/view/SurfaceView;

.field private hsW:Lcom/tencent/mm/ui/video/b;

.field private hsX:Landroid/widget/ImageButton;

.field private hsY:Z

.field private hsZ:Z

.field private hta:Landroid/widget/TextView;

.field private htb:Landroid/widget/LinearLayout;

.field private htc:Landroid/widget/ImageView;

.field private htd:Landroid/widget/ImageView;

.field private hte:Landroid/widget/TextView;

.field private htf:I

.field private htg:Z

.field private hth:Landroid/widget/ImageButton;

.field private htj:Z

.field private htk:Z

.field private htl:Ljava/lang/String;

.field private htm:Ljava/lang/String;

.field private htn:Landroid/view/View;

.field private hto:Landroid/view/View;

.field private htp:Landroid/os/Handler;

.field htq:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    .line 45
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->gFe:Landroid/view/SurfaceHolder;

    .line 47
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->bNl:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cIr:Landroid/app/ProgressDialog;

    .line 52
    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsY:Z

    .line 53
    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsZ:Z

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cSz:J

    .line 62
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->ekZ:Landroid/widget/ImageButton;

    .line 67
    iput v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htf:I

    .line 71
    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htj:Z

    .line 72
    iput-boolean v4, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htk:Z

    .line 73
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cAv:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsQ:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htl:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htm:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/video/w;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/w;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cSS:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 319
    new-instance v0, Lcom/tencent/mm/ui/video/ag;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/ag;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htp:Landroid/os/Handler;

    .line 550
    new-instance v0, Lcom/tencent/mm/ui/video/y;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/y;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htq:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htf:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cSz:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cSz:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htj:Z

    return p1
.end method

.method private aPf()V
    .locals 4

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsY:Z

    if-eqz v0, :cond_0

    .line 365
    sget v0, Lcom/tencent/mm/n;->bEs:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/video/ai;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/video/ai;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    new-instance v3, Lcom/tencent/mm/ui/video/aj;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/aj;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->finish()V

    goto :goto_0
.end method

.method private aPg()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 409
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 410
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hte:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/d;->eQ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hto:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htd:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    iput-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsY:Z

    .line 416
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hta:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->ekZ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hte:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/d;->eQ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htc:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsX:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hth:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 430
    return-void
.end method

.method private aPh()V
    .locals 3

    .prologue
    .line 579
    sget v0, Lcom/tencent/mm/n;->bEl:I

    sget v1, Lcom/tencent/mm/n;->ber:I

    new-instance v2, Lcom/tencent/mm/ui/video/z;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/video/z;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 587
    return-void
.end method

.method static synthetic aPi()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hte:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoRecorderUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htk:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hta:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x4120

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 35
    iput-boolean v6, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsZ:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsX:Landroid/widget/ImageButton;

    sget v1, Lcom/tencent/mm/h;->ajK:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsX:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    sget v0, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I)Ljava/lang/String;

    sget v0, Lcom/tencent/mm/n;->bEk:I

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/video/x;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/x;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-static {p0, v0, v9, v1}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cIr:Landroid/app/ProgressDialog;

    iget-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cSz:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cSS:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v2}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hta:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v9, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsY:Z

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/ui/video/b;->ck(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/video/b;->ci(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    invoke-virtual {v1, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htc:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htc:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cIr:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hta:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hto:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/b;->getFileSize()I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x14

    shr-long v4, v2, v0

    cmp-long v0, v4, v10

    if-lez v0, :cond_2

    long-to-float v0, v2

    mul-float/2addr v0, v8

    const/high16 v2, 0x4980

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "MB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsJ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/video/b;->DO()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/ui/video/d;->eQ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->ekZ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htn:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hth:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsX:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    return-void

    :cond_2
    const/16 v0, 0x9

    shr-long v4, v2, v0

    cmp-long v0, v4, v10

    if-lez v0, :cond_3

    long-to-float v0, v2

    mul-float/2addr v0, v8

    const/high16 v2, 0x4480

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "KB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/video/VideoRecorderUI;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htf:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htd:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/video/VideoRecorderUI;)I
    .locals 2
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htf:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htf:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Lcom/tencent/mm/ui/video/b;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->bNl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aPf()V

    return-void
.end method

.method static synthetic k(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsZ:Z

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsY:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsX:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aFd()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hth:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hto:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsZ:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htc:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->ekZ:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hta:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cSz:J

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cSS:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->gFe:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/b;->e(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic o(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hth:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htp:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htj:Z

    return v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->gFe:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aPh()V

    return-void
.end method

.method static synthetic t(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aPg()V

    return-void
.end method

.method static synthetic v(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htb:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/view/SurfaceView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    sget v0, Lcom/tencent/mm/i;->aMB:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    .line 192
    sget v0, Lcom/tencent/mm/i;->aOC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htb:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsV:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->gFe:Landroid/view/SurfaceHolder;

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->gFe:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htq:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->gFe:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 196
    sget v0, Lcom/tencent/mm/i;->aOF:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htd:Landroid/widget/ImageView;

    .line 197
    sget v0, Lcom/tencent/mm/i;->aOI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hth:Landroid/widget/ImageButton;

    .line 198
    sget v0, Lcom/tencent/mm/i;->aOD:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hte:Landroid/widget/TextView;

    .line 199
    sget v0, Lcom/tencent/mm/i;->aOE:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htn:Landroid/view/View;

    .line 200
    sget v0, Lcom/tencent/mm/i;->aOy:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hto:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hte:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/d;->eQ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v0, Lcom/tencent/mm/ui/video/b;

    invoke-direct {v0}, Lcom/tencent/mm/ui/video/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    .line 204
    sget v0, Lcom/tencent/mm/i;->aOK:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hta:Landroid/widget/TextView;

    .line 205
    sget v0, Lcom/tencent/mm/i;->aOG:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsI:Landroid/widget/TextView;

    .line 206
    sget v0, Lcom/tencent/mm/i;->aOz:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsJ:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/tencent/mm/i;->aOJ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsX:Landroid/widget/ImageButton;

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsX:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tencent/mm/ui/video/ac;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/ac;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->getNumberOfCameras()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hth:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hth:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tencent/mm/ui/video/af;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/af;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    sget v0, Lcom/tencent/mm/i;->aOw:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->ekZ:Landroid/widget/ImageButton;

    sget v0, Lcom/tencent/mm/i;->aOB:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htc:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->ekZ:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tencent/mm/ui/video/ah;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/ah;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    iget-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->bNl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htg:Z

    if-nez v3, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cAv:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsQ:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htl:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htm:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/ui/video/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hth:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 315
    goto :goto_1
.end method

.method protected final getLayoutId()I
    .locals 3

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 627
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htg:Z

    .line 628
    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htg:Z

    if-nez v0, :cond_1

    .line 630
    sget v0, Lcom/tencent/mm/k;->bbg:I

    .line 635
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 627
    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 633
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setRequestedOrientation(I)V

    .line 635
    sget v0, Lcom/tencent/mm/k;->bbh:I

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 540
    if-eq p2, v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 543
    :cond_0
    if-nez p1, :cond_1

    .line 544
    invoke-virtual {p0, v0, p3}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setResult(ILandroid/content/Intent;)V

    .line 545
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->finish()V

    .line 547
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-static {p0}, Lcom/tencent/mm/ui/MMActivity;->bO(Landroid/content/Context;)Ljava/util/Locale;

    .line 125
    sput-object p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hti:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    .line 127
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 128
    sget v0, Lcom/tencent/mm/n;->bEu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->mn(I)V

    .line 129
    sget v0, Lcom/tencent/mm/n;->bel:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/video/aa;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/aa;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 142
    new-instance v0, Lcom/tencent/mm/ui/video/ab;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/ab;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_ToUser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->bNl:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_VideoPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cAv:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_VideoFullPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsQ:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_VideoThumbPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htl:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_FileName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htm:Ljava/lang/String;

    .line 155
    const-string v0, "MicroMsg.VideoRecorderUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "talker :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->bNl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "MicroMsg.VideoRecorderUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoPath :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->cAv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videoFullPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videoThumbPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KFileName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->FR()V

    .line 159
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aPg()V

    .line 161
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->pause()V

    .line 162
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/ah;->of()V

    .line 163
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hti:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    .line 179
    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->resume()V

    .line 182
    invoke-static {}, Lcom/tencent/mm/model/be;->nT()Lcom/tencent/mm/model/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/ah;->og()V

    .line 184
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 186
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 351
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 352
    const-string v1, "MicroMsg.VideoRecorderUI"

    const-string v2, "KEYCODE_BACK"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-boolean v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsZ:Z

    if-eqz v1, :cond_0

    .line 360
    :goto_0
    return v0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aPf()V

    goto :goto_0

    .line 360
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/b;->aPe()I

    .line 534
    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 536
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htk:Z

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    invoke-virtual {v0, p0, v2}, Lcom/tencent/mm/ui/video/b;->a(Landroid/app/Activity;Z)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->hsW:Lcom/tencent/mm/ui/video/b;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->gFe:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/b;->d(Landroid/view/SurfaceHolder;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->aPh()V

    .line 523
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htk:Z

    .line 524
    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 526
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStart()V

    .line 168
    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->htg:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setRequestedOrientation(I)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setRequestedOrientation(I)V

    goto :goto_0
.end method
