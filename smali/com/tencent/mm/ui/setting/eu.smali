.class final Lcom/tencent/mm/ui/setting/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field final synthetic hgp:Lcom/tencent/mm/ui/setting/et;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/et;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 629
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/et;->a(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 630
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->b(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/n/m;

    .line 631
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->c(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->c(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 633
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/et;->d(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eu;->hgp:Lcom/tencent/mm/ui/setting/et;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->g(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    .line 639
    return-void
.end method
