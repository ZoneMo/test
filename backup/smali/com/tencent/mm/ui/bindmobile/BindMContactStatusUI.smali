.class public Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;
.super Lcom/tencent/mm/ui/MMWizardActivity;
.source "SourceFile"


# instance fields
.field private dMp:Landroid/widget/Button;

.field private gvc:Landroid/widget/ImageView;

.field private gvd:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMWizardActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->aFs()V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 5

    .prologue
    .line 37
    sget v0, Lcom/tencent/mm/i;->anw:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->gvc:Landroid/widget/ImageView;

    .line 38
    sget v0, Lcom/tencent/mm/i;->ans:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->gvd:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/tencent/mm/i;->anv:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->dMp:Landroid/widget/Button;

    .line 41
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zp()Lcom/tencent/mm/modelfriend/aa;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    if-ne v0, v1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->gvc:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->afT:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->gvd:Landroid/widget/TextView;

    sget v2, Lcom/tencent/mm/n;->bfh:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->dMp:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/bindmobile/ab;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bindmobile/ab;-><init>(Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->gvc:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->afU:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->gvd:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bfq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/tencent/mm/k;->aSF:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lcom/tencent/mm/n;->bfk:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->mn(I)V

    .line 27
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->FR()V

    .line 28
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bindmobile/BindMContactStatusUI;->aFs()V

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
