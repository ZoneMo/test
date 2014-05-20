.class final Lcom/tencent/mm/ui/setting/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cmw:Lcom/tencent/mm/n/x;

.field final synthetic cmy:I

.field final synthetic cmz:I

.field final synthetic heB:Lcom/tencent/mm/ui/setting/ar;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/ar;Lcom/tencent/mm/n/x;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/as;->cmw:Lcom/tencent/mm/n/x;

    iput p3, p0, Lcom/tencent/mm/ui/setting/as;->cmz:I

    iput p4, p0, Lcom/tencent/mm/ui/setting/as;->cmy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v2, 0xff

    .line 379
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v1, v1, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->c(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Lcom/tencent/mm/n/m;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 380
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->d(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Lcom/tencent/mm/n/m;

    .line 381
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->e(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->e(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 383
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->f(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->cmw:Lcom/tencent/mm/n/x;

    invoke-virtual {v0}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 390
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->cmw:Lcom/tencent/mm/n/x;

    check-cast v0, Lcom/tencent/mm/modelsimple/ac;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/ac;->Cv()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 391
    iget v0, p0, Lcom/tencent/mm/ui/setting/as;->cmz:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/setting/as;->cmy:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 392
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v1, v1, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    const-string v1, "kintent_hint"

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v2, v2, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    const v3, 0x7f070106

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v1, v1, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 400
    :cond_2
    :goto_0
    return-void

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/as;->heB:Lcom/tencent/mm/ui/setting/ar;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ar;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->g(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)V

    goto :goto_0
.end method
