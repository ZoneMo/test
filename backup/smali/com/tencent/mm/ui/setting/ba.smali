.class final Lcom/tencent/mm/ui/setting/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ca;


# instance fields
.field final synthetic heE:Lcom/tencent/mm/ui/setting/ay;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/ay;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/ba;->heE:Lcom/tencent/mm/ui/setting/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uW()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ba;->heE:Lcom/tencent/mm/ui/setting/ay;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->b(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ba;->heE:Lcom/tencent/mm/ui/setting/ay;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->b(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ba;->heE:Lcom/tencent/mm/ui/setting/ay;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 196
    :cond_0
    return-void
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ba;->heE:Lcom/tencent/mm/ui/setting/ay;

    iget-object v0, v0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)Z

    move-result v0

    return v0
.end method
