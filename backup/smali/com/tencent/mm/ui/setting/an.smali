.class final Lcom/tencent/mm/ui/setting/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private cyn:Lcom/tencent/mm/n/m;

.field final synthetic hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

.field private hez:Lcom/tencent/mm/sdk/platformtools/ay;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 282
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object v0, p0, Lcom/tencent/mm/ui/setting/an;->cyn:Lcom/tencent/mm/n/m;

    .line 285
    iput-object v0, p0, Lcom/tencent/mm/ui/setting/an;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/an;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/an;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/an;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/an;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    new-instance v2, Lcom/tencent/mm/ui/setting/ao;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/ao;-><init>(Lcom/tencent/mm/ui/setting/an;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/setting/an;->cyn:Lcom/tencent/mm/n/m;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 310
    new-instance v0, Lcom/tencent/mm/plugin/webwx/a/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/webwx/a/c;-><init>(I)V

    .line 311
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 314
    new-instance v1, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v2, Lcom/tencent/mm/ui/setting/ap;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/setting/ap;-><init>(Lcom/tencent/mm/ui/setting/an;Lcom/tencent/mm/plugin/webwx/a/c;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/an;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 333
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/an;->hez:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 336
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->aal()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    const v4, 0x7f0709bb

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    const v4, 0x7f07078a

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/setting/aq;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/setting/aq;-><init>(Lcom/tencent/mm/ui/setting/an;Lcom/tencent/mm/plugin/webwx/a/c;)V

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->b(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)V

    goto :goto_0
.end method
