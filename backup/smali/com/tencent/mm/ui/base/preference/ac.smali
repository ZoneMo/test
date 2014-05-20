.class final Lcom/tencent/mm/ui/base/preference/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/preference/m;


# instance fields
.field final synthetic gGK:Lcom/tencent/mm/ui/base/preference/aa;

.field final synthetic gGw:Lcom/tencent/mm/ui/base/preference/Preference;

.field final synthetic gGy:Lcom/tencent/mm/ui/base/preference/EditPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/preference/aa;Lcom/tencent/mm/ui/base/preference/EditPreference;Lcom/tencent/mm/ui/base/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGK:Lcom/tencent/mm/ui/base/preference/aa;

    iput-object p2, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGy:Lcom/tencent/mm/ui/base/preference/EditPreference;

    iput-object p3, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGw:Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aIb()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGK:Lcom/tencent/mm/ui/base/preference/aa;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->c(Lcom/tencent/mm/ui/base/preference/y;)Z

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGy:Lcom/tencent/mm/ui/base/preference/EditPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/EditPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGK:Lcom/tencent/mm/ui/base/preference/aa;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->b(Lcom/tencent/mm/ui/base/preference/y;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGw:Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGy:Lcom/tencent/mm/ui/base/preference/EditPreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/preference/EditPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ac;->gGK:Lcom/tencent/mm/ui/base/preference/aa;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/x;->notifyDataSetChanged()V

    .line 184
    return-void
.end method
