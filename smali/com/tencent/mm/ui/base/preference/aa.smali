.class final Lcom/tencent/mm/ui/base/preference/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic gGJ:Lcom/tencent/mm/ui/base/preference/y;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/preference/y;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->e(Lcom/tencent/mm/ui/base/preference/y;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->e(Lcom/tencent/mm/ui/base/preference/y;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 138
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/preference/y;->d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/x;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/Preference;

    .line 139
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/Preference;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    instance-of v1, v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    move-object v1, v0

    .line 143
    check-cast v1, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    .line 144
    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v2}, Lcom/tencent/mm/ui/base/preference/y;->b(Lcom/tencent/mm/ui/base/preference/y;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/preference/y;->c(Lcom/tencent/mm/ui/base/preference/y;)Z

    move v2, v3

    .line 152
    :goto_2
    instance-of v1, v0, Lcom/tencent/mm/ui/base/preference/DialogPreference;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 153
    check-cast v1, Lcom/tencent/mm/ui/base/preference/DialogPreference;

    .line 154
    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->showDialog()V

    .line 155
    new-instance v5, Lcom/tencent/mm/ui/base/preference/ab;

    invoke-direct {v5, p0, v1, v0}, Lcom/tencent/mm/ui/base/preference/ab;-><init>(Lcom/tencent/mm/ui/base/preference/aa;Lcom/tencent/mm/ui/base/preference/DialogPreference;Lcom/tencent/mm/ui/base/preference/Preference;)V

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/base/preference/DialogPreference;->a(Lcom/tencent/mm/ui/base/preference/i;)V

    .line 170
    :cond_3
    instance-of v1, v0, Lcom/tencent/mm/ui/base/preference/EditPreference;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 171
    check-cast v1, Lcom/tencent/mm/ui/base/preference/EditPreference;

    .line 172
    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/preference/EditPreference;->showDialog()V

    .line 173
    new-instance v5, Lcom/tencent/mm/ui/base/preference/ac;

    invoke-direct {v5, p0, v1, v0}, Lcom/tencent/mm/ui/base/preference/ac;-><init>(Lcom/tencent/mm/ui/base/preference/aa;Lcom/tencent/mm/ui/base/preference/EditPreference;Lcom/tencent/mm/ui/base/preference/Preference;)V

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/base/preference/EditPreference;->a(Lcom/tencent/mm/ui/base/preference/m;)V

    .line 188
    :cond_4
    instance-of v1, v0, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;

    if-eqz v1, :cond_7

    .line 189
    check-cast v0, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;

    .line 190
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    :goto_3
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/MMSwitchButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 144
    goto :goto_1

    :cond_6
    move v3, v4

    .line 190
    goto :goto_3

    .line 194
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 195
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    iget-object v3, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v3}, Lcom/tencent/mm/ui/base/preference/y;->d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/y;->f(Lcom/tencent/mm/ui/base/preference/Preference;)Z

    .line 198
    :cond_8
    if-eqz v2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/aa;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/x;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_9
    move v2, v4

    goto :goto_2
.end method
