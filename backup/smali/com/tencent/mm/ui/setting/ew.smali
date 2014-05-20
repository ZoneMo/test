.class final Lcom/tencent/mm/ui/setting/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic ffc:Lcom/tencent/mm/plugin/webwx/a/c;

.field final synthetic hgp:Lcom/tencent/mm/ui/setting/et;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/et;Lcom/tencent/mm/plugin/webwx/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/ew;->hgp:Lcom/tencent/mm/ui/setting/et;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/ew;->ffc:Lcom/tencent/mm/plugin/webwx/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 674
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/ew;->ffc:Lcom/tencent/mm/plugin/webwx/a/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 675
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/ew;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/et;->a(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 676
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ew;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->b(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/n/m;

    .line 677
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ew;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->c(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ew;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->c(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 679
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ew;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->d(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ew;->hgp:Lcom/tencent/mm/ui/setting/et;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ew;->hgp:Lcom/tencent/mm/ui/setting/et;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 684
    :cond_1
    return-void
.end method
