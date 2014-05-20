.class public Lcom/tencent/mm/ui/tools/MMTextInputUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private cSa:I

.field private gFV:Landroid/widget/EditText;

.field private hlu:Landroid/widget/TextView;

.field private hlv:I

.field private hlw:Z

.field private yx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/MMTextInputUI;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->cSa:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->cSa:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/MMTextInputUI;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->goBack()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/MMTextInputUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->gFV:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/MMTextInputUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->hlw:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/MMTextInputUI;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->yx:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/MMTextInputUI;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->cSa:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/MMTextInputUI;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->cSa:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/tools/MMTextInputUI;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->hlv:I

    return v0
.end method

.method private goBack()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_show_confirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bum:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Lcom/tencent/mm/ui/tools/do;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/do;-><init>(Lcom/tencent/mm/ui/tools/MMTextInputUI;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->SM()V

    .line 53
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->finish()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/tools/MMTextInputUI;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->hlu:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/tencent/mm/k;->aVc:I

    return v0
.end method

.method protected m(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v0, Lcom/tencent/mm/i;->aMK:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->gFV:Landroid/widget/EditText;

    .line 73
    sget v0, Lcom/tencent/mm/i;->aMo:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->hlu:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->gFV:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_hint"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->gFV:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_value"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_max_count"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->yx:I

    .line 80
    iput v3, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->cSa:I

    .line 81
    iget v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->yx:I

    add-int/lit8 v0, v0, -0x78

    iget v1, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->yx:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->hlv:I

    .line 82
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_nullable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->hlw:Z

    .line 83
    new-instance v0, Lcom/tencent/mm/ui/tools/dp;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/dp;-><init>(Lcom/tencent/mm/ui/tools/MMTextInputUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 92
    sget v0, Lcom/tencent/mm/n;->bdY:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/tools/dq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/dq;-><init>(Lcom/tencent/mm/ui/tools/MMTextInputUI;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 107
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->hlw:Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->dg(Z)V

    .line 111
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->hlw:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->yx:I

    if-lez v0, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/MMTextInputUI;->gFV:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/tools/dr;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/dr;-><init>(Lcom/tencent/mm/ui/tools/MMTextInputUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 171
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 61
    const-string v0, "MicroMsg.MMTextInputUI"

    const-string v1, "on back key down"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/MMTextInputUI;->goBack()V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 181
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 176
    return-void
.end method
