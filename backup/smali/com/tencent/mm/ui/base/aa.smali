.class public final Lcom/tencent/mm/ui/base/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gyN:Lcom/tencent/mm/ui/base/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lcom/tencent/mm/ui/base/aa;->mContext:Landroid/content/Context;

    .line 398
    new-instance v0, Lcom/tencent/mm/ui/base/a;

    invoke-direct {v0}, Lcom/tencent/mm/ui/base/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    .line 399
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/mm/ui/base/a;->gyc:I

    .line 400
    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object v0, v1, Lcom/tencent/mm/ui/base/a;->gxV:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p2, v0, Lcom/tencent/mm/ui/base/a;->gxX:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/mm/ui/base/a;->gye:Z

    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->gxZ:Landroid/content/DialogInterface$OnCancelListener;

    .line 510
    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->gya:Landroid/content/DialogInterface$OnDismissListener;

    .line 515
    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->gxV:Ljava/lang/CharSequence;

    .line 489
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p2, v0, Lcom/tencent/mm/ui/base/a;->gxX:Landroid/content/DialogInterface$OnClickListener;

    .line 490
    return-object p0
.end method

.method public final aGI()Lcom/tencent/mm/ui/base/x;
    .locals 3

    .prologue
    .line 524
    new-instance v0, Lcom/tencent/mm/ui/base/x;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/aa;->mContext:Landroid/content/Context;

    sget v2, Lcom/tencent/mm/o;->bIN:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/base/x;-><init>(Landroid/content/Context;)V

    .line 525
    iget-object v1, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/x;->a(Lcom/tencent/mm/ui/base/a;)V

    .line 526
    return-object v0
.end method

.method public final ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->fox:Landroid/view/View;

    .line 471
    return-object p0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/mm/ui/base/aa;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->gxW:Ljava/lang/CharSequence;

    .line 500
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p2, v0, Lcom/tencent/mm/ui/base/a;->gxY:Landroid/content/DialogInterface$OnClickListener;

    .line 501
    return-object p0
.end method

.method public final c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/mm/ui/base/aa;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    move-result-object v0

    return-object v0
.end method

.method public final dp(Z)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-boolean p1, v0, Lcom/tencent/mm/ui/base/a;->fcB:Z

    .line 520
    return-object p0
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->gxS:Landroid/graphics/drawable/Drawable;

    .line 459
    return-object p0
.end method

.method public final mR(I)Lcom/tencent/mm/ui/base/aa;
    .locals 2
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/aa;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/base/a;->title:Ljava/lang/CharSequence;

    .line 411
    return-object p0
.end method

.method public final mS(I)Lcom/tencent/mm/ui/base/aa;
    .locals 2
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/aa;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/base/a;->gxT:Ljava/lang/CharSequence;

    .line 429
    return-object p0
.end method

.method public final wf(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->title:Ljava/lang/CharSequence;

    .line 405
    return-object p0
.end method

.method public final wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->gxT:Ljava/lang/CharSequence;

    .line 417
    return-object p0
.end method

.method public final wh(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;
    .locals 1
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/mm/ui/base/aa;->gyN:Lcom/tencent/mm/ui/base/a;

    iput-object p1, v0, Lcom/tencent/mm/ui/base/a;->gxU:Ljava/lang/CharSequence;

    .line 435
    return-object p0
.end method
