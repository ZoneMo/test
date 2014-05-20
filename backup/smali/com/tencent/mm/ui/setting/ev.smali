.class final Lcom/tencent/mm/ui/setting/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic ffc:Lcom/tencent/mm/plugin/webwx/a/c;

.field final synthetic hgp:Lcom/tencent/mm/ui/setting/et;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/et;Lcom/tencent/mm/plugin/webwx/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/ev;->ffc:Lcom/tencent/mm/plugin/webwx/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 3

    .prologue
    .line 652
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/ev;->ffc:Lcom/tencent/mm/plugin/webwx/a/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 653
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/et;->a(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 654
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->b(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/n/m;

    .line 655
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->c(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->c(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 657
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->d(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ev;->hgp:Lcom/tencent/mm/ui/setting/et;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->g(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    .line 663
    const/4 v0, 0x0

    return v0
.end method
