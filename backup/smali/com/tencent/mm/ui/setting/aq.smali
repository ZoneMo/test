.class final Lcom/tencent/mm/ui/setting/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic ffc:Lcom/tencent/mm/plugin/webwx/a/c;

.field final synthetic heA:Lcom/tencent/mm/ui/setting/an;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/an;Lcom/tencent/mm/plugin/webwx/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/aq;->heA:Lcom/tencent/mm/ui/setting/an;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/aq;->ffc:Lcom/tencent/mm/plugin/webwx/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 341
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/aq;->ffc:Lcom/tencent/mm/plugin/webwx/a/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 342
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/aq;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/an;->a(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 343
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/aq;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/an;->b(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/n/m;

    .line 344
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/aq;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/an;->c(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/aq;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/an;->c(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/aq;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/an;->d(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/aq;->heA:Lcom/tencent/mm/ui/setting/an;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/aq;->heA:Lcom/tencent/mm/ui/setting/an;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    :cond_1
    return-void
.end method
