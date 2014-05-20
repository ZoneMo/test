.class final Lcom/tencent/mm/ui/base/preference/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/preference/i;


# instance fields
.field final synthetic gGv:Lcom/tencent/mm/ui/base/preference/DialogPreference;

.field final synthetic gGw:Lcom/tencent/mm/ui/base/preference/Preference;

.field final synthetic gGx:Lcom/tencent/mm/ui/base/preference/t;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/preference/t;Lcom/tencent/mm/ui/base/preference/DialogPreference;Lcom/tencent/mm/ui/base/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/u;->gGx:Lcom/tencent/mm/ui/base/preference/t;

    iput-object p2, p0, Lcom/tencent/mm/ui/base/preference/u;->gGv:Lcom/tencent/mm/ui/base/preference/DialogPreference;

    iput-object p3, p0, Lcom/tencent/mm/ui/base/preference/u;->gGw:Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aIb()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/u;->gGx:Lcom/tencent/mm/ui/base/preference/t;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/t;->gGu:Lcom/tencent/mm/ui/base/preference/MMPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->c(Lcom/tencent/mm/ui/base/preference/MMPreference;)Z

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/u;->gGv:Lcom/tencent/mm/ui/base/preference/DialogPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/u;->gGx:Lcom/tencent/mm/ui/base/preference/t;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/t;->gGu:Lcom/tencent/mm/ui/base/preference/MMPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->b(Lcom/tencent/mm/ui/base/preference/MMPreference;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/u;->gGw:Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/u;->gGv:Lcom/tencent/mm/ui/base/preference/DialogPreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/u;->gGx:Lcom/tencent/mm/ui/base/preference/t;

    iget-object v0, v0, Lcom/tencent/mm/ui/base/preference/t;->gGu:Lcom/tencent/mm/ui/base/preference/MMPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->d(Lcom/tencent/mm/ui/base/preference/MMPreference;)Lcom/tencent/mm/ui/base/preference/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/x;->notifyDataSetChanged()V

    .line 185
    return-void
.end method
