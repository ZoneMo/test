.class final Lcom/tencent/mm/ui/setting/er;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic heC:Lcom/tencent/mm/modelsimple/ac;

.field final synthetic hgn:Lcom/tencent/mm/ui/setting/eo;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/eo;Lcom/tencent/mm/modelsimple/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/er;->heC:Lcom/tencent/mm/modelsimple/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 578
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/er;->heC:Lcom/tencent/mm/modelsimple/ac;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 579
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xff

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v2, v2, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->c(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 580
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/n/m;)Lcom/tencent/mm/n/m;

    .line 581
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 583
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/sdk/platformtools/ay;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/er;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->f(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    .line 589
    const/4 v0, 0x0

    return v0
.end method
