.class final Lcom/tencent/mm/ui/setting/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hfR:Lcom/tencent/mm/ui/setting/SettingsPrivacyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsPrivacyUI;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/du;->hfR:Lcom/tencent/mm/ui/setting/SettingsPrivacyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/du;->hfR:Lcom/tencent/mm/ui/setting/SettingsPrivacyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsPrivacyUI;->SM()V

    .line 232
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/du;->hfR:Lcom/tencent/mm/ui/setting/SettingsPrivacyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsPrivacyUI;->finish()V

    .line 233
    const/4 v0, 0x1

    return v0
.end method
