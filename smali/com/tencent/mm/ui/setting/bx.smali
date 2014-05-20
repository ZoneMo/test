.class final Lcom/tencent/mm/ui/setting/bx;
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
    .line 69
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/bx;->hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/bx;->hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->SM()V

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/bx;->hfo:Lcom/tencent/mm/ui/setting/SettingsLanguageUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsLanguageUI;->finish()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
