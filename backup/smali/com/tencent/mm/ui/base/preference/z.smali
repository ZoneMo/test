.class final Lcom/tencent/mm/ui/base/preference/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/preference/ai;


# instance fields
.field final synthetic gGJ:Lcom/tencent/mm/ui/base/preference/y;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/preference/y;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->a(Lcom/tencent/mm/ui/base/preference/y;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/preference/y;->a(Lcom/tencent/mm/ui/base/preference/y;Z)Z

    .line 97
    instance-of v0, p1, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;

    .line 99
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;->setChecked(Z)V

    .line 100
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v3}, Lcom/tencent/mm/ui/base/preference/y;->b(Lcom/tencent/mm/ui/base/preference/y;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;->isChecked()Z

    move-result v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->c(Lcom/tencent/mm/ui/base/preference/y;)Z

    move v0, v1

    .line 107
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    iget-object v4, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v4}, Lcom/tencent/mm/ui/base/preference/y;->d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v3, p1}, Lcom/tencent/mm/ui/base/preference/y;->f(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 111
    :cond_1
    if-eqz v0, :cond_2

    .line 112
    iget-object v3, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v3}, Lcom/tencent/mm/ui/base/preference/y;->d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/preference/x;->notifyDataSetChanged()V

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/ui/base/preference/z;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v3, v2}, Lcom/tencent/mm/ui/base/preference/y;->a(Lcom/tencent/mm/ui/base/preference/y;Z)Z

    .line 115
    if-eqz v0, :cond_3

    .line 119
    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method
