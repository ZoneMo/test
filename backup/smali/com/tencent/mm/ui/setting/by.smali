.class final Lcom/tencent/mm/ui/setting/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/by;->hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/by;->hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->finish()V

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/by;->hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/by;->hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->a(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/by;->hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->b(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->a(Lcom/tencent/mm/ui/setting/SettingsLanguageUI;Ljava/lang/String;Z)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
