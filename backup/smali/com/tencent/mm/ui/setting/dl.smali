.class final Lcom/tencent/mm/ui/setting/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hfK:Lcom/tencent/mm/ui/setting/SettingsNotificationUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsNotificationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/dl;->hfK:Lcom/tencent/mm/ui/setting/SettingsNotificationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dl;->hfK:Lcom/tencent/mm/ui/setting/SettingsNotificationUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->SM()V

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dl;->hfK:Lcom/tencent/mm/ui/setting/SettingsNotificationUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->finish()V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
