.class final Lcom/tencent/mm/ui/setting/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cyn:Lcom/tencent/mm/n/m;

.field private hez:Lcom/tencent/mm/sdk/platformtools/ay;

.field final synthetic hgl:Lcom/tencent/mm/ui/setting/SettingsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 615
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object v0, p0, Lcom/tencent/mm/ui/setting/et;->cyn:Lcom/tencent/mm/n/m;

    .line 617
    iput-object v0, p0, Lcom/tencent/mm/ui/setting/et;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 615
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/et;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/et;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 615
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/et;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/et;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/et;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 620
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2b2d

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->b(Lcom/tencent/mm/ui/setting/SettingsUI;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 622
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    new-instance v2, Lcom/tencent/mm/ui/setting/eu;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/eu;-><init>(Lcom/tencent/mm/ui/setting/et;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/setting/et;->cyn:Lcom/tencent/mm/n/m;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 643
    new-instance v0, Lcom/tencent/mm/plugin/webwx/a/c;

    invoke-direct {v0, v6}, Lcom/tencent/mm/plugin/webwx/a/c;-><init>(I)V

    .line 644
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 647
    new-instance v1, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v2, Lcom/tencent/mm/ui/setting/ev;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/setting/ev;-><init>(Lcom/tencent/mm/ui/setting/et;Lcom/tencent/mm/plugin/webwx/a/c;)V

    invoke-direct {v1, v2, v4}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/et;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 666
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/et;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 669
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/setting/SettingsUI;->aal()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    const v4, 0x7f0709bb

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    const v4, 0x7f07078a

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/SettingsUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/setting/ew;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/setting/ew;-><init>(Lcom/tencent/mm/ui/setting/et;Lcom/tencent/mm/plugin/webwx/a/c;)V

    invoke-static {v2, v3, v5, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(Lcom/tencent/mm/ui/setting/SettingsUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 690
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/et;->hgl:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->g(Lcom/tencent/mm/ui/setting/SettingsUI;)V

    goto :goto_0
.end method
