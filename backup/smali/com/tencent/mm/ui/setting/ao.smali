.class final Lcom/tencent/mm/ui/setting/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field final synthetic heA:Lcom/tencent/mm/ui/setting/an;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/an;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

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
    .line 296
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x119

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/an;->a(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 297
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/an;->b(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/n/m;

    .line 298
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/an;->c(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/an;->c(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 300
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/an;->d(Lcom/tencent/mm/ui/setting/an;)Lcom/tencent/mm/sdk/platformtools/ay;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ao;->heA:Lcom/tencent/mm/ui/setting/an;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/an;->hey:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->b(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)V

    .line 306
    return-void
.end method
