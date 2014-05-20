.class final Lcom/tencent/mm/ui/setting/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic heH:Lcom/tencent/mm/ui/setting/SettingsAboutTimelineUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutTimelineUI;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/bf;->heH:Lcom/tencent/mm/ui/setting/SettingsAboutTimelineUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/bf;->heH:Lcom/tencent/mm/ui/setting/SettingsAboutTimelineUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutTimelineUI;->SM()V

    .line 174
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/bf;->heH:Lcom/tencent/mm/ui/setting/SettingsAboutTimelineUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutTimelineUI;->finish()V

    .line 175
    const/4 v0, 0x1

    return v0
.end method
