.class final Lcom/tencent/mm/ui/setting/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cmw:Lcom/tencent/mm/n/x;

.field final synthetic cmy:I

.field final synthetic cmz:I

.field final synthetic hgm:Lcom/tencent/mm/ui/setting/eh;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/eh;Lcom/tencent/mm/n/x;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/ei;->cmw:Lcom/tencent/mm/n/x;

    iput p3, p0, Lcom/tencent/mm/ui/setting/ei;->cmz:I

    iput p4, p0, Lcom/tencent/mm/ui/setting/ei;->cmy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 911
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v1, v1, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsUI;->c(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/n/m;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 912
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/n/m;)Lcom/tencent/mm/n/m;

    .line 913
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 915
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/sdk/platformtools/ay;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->cmw:Lcom/tencent/mm/n/x;

    invoke-virtual {v0}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 922
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->cmw:Lcom/tencent/mm/n/x;

    check-cast v0, Lcom/tencent/mm/modelsimple/ac;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/ac;->Cv()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 923
    iget v0, p0, Lcom/tencent/mm/ui/setting/ei;->cmz:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/setting/ei;->cmy:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 924
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v1, v1, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 925
    const-string v1, "kintent_hint"

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v2, v2, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    const v3, 0x7f070106

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v1, v1, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 932
    :cond_2
    :goto_0
    return-void

    .line 928
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ei;->hgm:Lcom/tencent/mm/ui/setting/eh;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eh;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->k(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    goto :goto_0
.end method
