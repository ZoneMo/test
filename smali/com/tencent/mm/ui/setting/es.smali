.class final Lcom/tencent/mm/ui/setting/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic heC:Lcom/tencent/mm/modelsimple/ac;

.field final synthetic hgn:Lcom/tencent/mm/ui/setting/eo;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/eo;Lcom/tencent/mm/modelsimple/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/es;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/es;->heC:Lcom/tencent/mm/modelsimple/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 599
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/es;->heC:Lcom/tencent/mm/modelsimple/ac;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 600
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xff

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/es;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v2, v2, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->c(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 601
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/es;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/n/m;)Lcom/tencent/mm/n/m;

    .line 602
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/es;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/es;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 604
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/es;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/sdk/platformtools/ay;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/es;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/es;->hgn:Lcom/tencent/mm/ui/setting/eo;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/eo;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 609
    :cond_1
    return-void
.end method
