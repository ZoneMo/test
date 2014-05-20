.class final Lcom/tencent/mm/ui/setting/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hgq:Lcom/tencent/mm/ui/setting/ex;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/ex;)V
    .locals 0
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 815
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    iget-object v2, v2, Lcom/tencent/mm/ui/setting/ex;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->h(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 816
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ex;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->i(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/n/m;

    .line 817
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ex;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ex;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->d(Lcom/tencent/mm/ui/setting/SettingsUI;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 819
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ex;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;Lcom/tencent/mm/sdk/platformtools/ay;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ex;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ex;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->e(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ey;->hgq:Lcom/tencent/mm/ui/setting/ex;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ex;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->j(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    .line 825
    return-void
.end method
