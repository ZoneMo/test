.class public Lcom/tencent/mm/ui/setting/SettingsAliasUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIr:Landroid/app/ProgressDialog;

.field private gsS:Lcom/tencent/mm/ui/account/fq;

.field private hff:Landroid/widget/EditText;

.field private hfg:Lcom/tencent/mm/modelsimple/w;

.field private hfh:Z

.field private wN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    .line 37
    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->cIr:Landroid/app/ProgressDialog;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfh:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Lcom/tencent/mm/ui/account/fq;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAliasUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->wN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hff:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->wN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V
    .locals 4
    .parameter

    .prologue
    const v2, 0x7f0703ac

    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/fq;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->wN:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0703b2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->wN:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hU(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070088

    const v2, 0x7f0700d1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    const v1, 0x7f0703ad

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/setting/bt;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/setting/bt;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->cIr:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfg:Lcom/tencent/mm/modelsimple/w;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfg:Lcom/tencent/mm/modelsimple/w;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    :cond_3
    new-instance v0, Lcom/tencent/mm/modelsimple/w;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->wN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelsimple/w;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfg:Lcom/tencent/mm/modelsimple/w;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfg:Lcom/tencent/mm/modelsimple/w;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Lcom/tencent/mm/modelsimple/w;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfg:Lcom/tencent/mm/modelsimple/w;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    const v0, 0x7f0703ac

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->mn(I)V

    .line 80
    new-instance v0, Lcom/tencent/mm/ui/account/fq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/account/fq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    .line 81
    const v0, 0x7f0a074e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hff:Landroid/widget/EditText;

    .line 83
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hff:Landroid/widget/EditText;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hff:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hff:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hff:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hff:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/setting/bp;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/bp;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    new-instance v0, Lcom/tencent/mm/ui/setting/bq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/bq;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 124
    const v0, 0x7f0709c5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/setting/br;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/br;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->dg(Z)V

    .line 150
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->cIr:Landroid/app/ProgressDialog;

    .line 190
    :cond_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 192
    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfh:Z

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2876

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0703b1

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->SM()V

    .line 197
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->wN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/setting/bu;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/bu;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    :cond_2
    :goto_0
    return-void

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, p1, p2, v3}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_4
    packed-switch p1, :pswitch_data_0

    :cond_5
    move v0, v1

    goto :goto_1

    :pswitch_0
    const/4 v2, -0x7

    if-eq p2, v2, :cond_6

    const/16 v2, -0xa

    if-ne p2, v2, :cond_5

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0700d0

    const v3, 0x7f0703b3

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f030287

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KFromSetAliasTips"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfh:Z

    .line 46
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->FR()V

    .line 47
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/fq;->cancel()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfg:Lcom/tencent/mm/modelsimple/w;

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->hfg:Lcom/tencent/mm/modelsimple/w;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 71
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 72
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->gsS:Lcom/tencent/mm/ui/account/fq;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/account/fq;->cancel()V

    .line 61
    :cond_0
    return-void
.end method
