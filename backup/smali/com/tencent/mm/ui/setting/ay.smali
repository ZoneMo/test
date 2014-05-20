.class final Lcom/tencent/mm/ui/setting/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Z)Z

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const v3, 0x7f0709bb

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->getString(I)Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/ay;->heD:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const v3, 0x7f0709ee

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/setting/az;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/setting/az;-><init>(Lcom/tencent/mm/ui/setting/ay;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 183
    new-instance v0, Lcom/tencent/mm/ui/setting/ba;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/ba;-><init>(Lcom/tencent/mm/ui/setting/ay;)V

    invoke-static {v0}, Lcom/tencent/mm/model/bv;->a(Lcom/tencent/mm/model/ca;)V

    .line 198
    return-void
.end method
