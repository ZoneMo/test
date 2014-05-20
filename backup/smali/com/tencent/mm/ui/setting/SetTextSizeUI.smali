.class public Lcom/tencent/mm/ui/setting/SetTextSizeUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private hek:F

.field private xy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->xy:I

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SetTextSizeUI;)F
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SetTextSizeUI;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->xy:I

    return v0
.end method

.method private static cc(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 78
    invoke-static {p0}, Lcom/tencent/mm/ui/ez;->bS(Landroid/content/Context;)F

    move-result v1

    .line 80
    cmpl-float v2, v1, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f60

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f90

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3fa0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3fb0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 84
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static cd(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-static {p0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cc(Landroid/content/Context;)F

    move-result v0

    .line 90
    const/high16 v1, 0x3f60

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 91
    const v0, 0x7f0703d8

    .line 106
    :goto_0
    return v0

    .line 94
    :cond_0
    const/high16 v1, 0x3f90

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 95
    const v0, 0x7f0703d6

    goto :goto_0

    .line 98
    :cond_1
    const/high16 v1, 0x3fa0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 99
    const v0, 0x7f0703d5

    goto :goto_0

    .line 102
    :cond_2
    const/high16 v1, 0x3fb0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 103
    const v0, 0x7f0703d4

    goto :goto_0

    .line 106
    :cond_3
    const v0, 0x7f0703d7

    goto :goto_0
.end method

.method private refresh()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/high16 v2, 0x3f60

    const v5, 0x7f0301e5

    const v4, 0x7f0301e4

    const v3, 0x7f0301b3

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 143
    new-instance v0, Lcom/tencent/mm/ui/setting/ad;

    invoke-direct {v0, p0, p0, v2}, Lcom/tencent/mm/ui/setting/ad;-><init>(Lcom/tencent/mm/ui/setting/SetTextSizeUI;Landroid/content/Context;F)V

    .line 144
    const v1, 0x7f0703d8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 145
    const-string v1, "setting_text_size_small"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 147
    iget v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 148
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 154
    new-instance v0, Lcom/tencent/mm/ui/setting/ad;

    invoke-direct {v0, p0, p0, v6}, Lcom/tencent/mm/ui/setting/ad;-><init>(Lcom/tencent/mm/ui/setting/SetTextSizeUI;Landroid/content/Context;F)V

    .line 155
    const v1, 0x7f0703d7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 156
    const-string v1, "setting_text_size_normal"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 158
    iget v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_2

    .line 159
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 163
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 165
    new-instance v0, Lcom/tencent/mm/ui/setting/ad;

    const/high16 v1, 0x3f90

    invoke-direct {v0, p0, p0, v1}, Lcom/tencent/mm/ui/setting/ad;-><init>(Lcom/tencent/mm/ui/setting/SetTextSizeUI;Landroid/content/Context;F)V

    .line 166
    const v1, 0x7f0703d6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 167
    const-string v1, "setting_text_size_large"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 169
    iget v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    const/high16 v2, 0x3f90

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 170
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 174
    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 176
    new-instance v0, Lcom/tencent/mm/ui/setting/ad;

    const/high16 v1, 0x3fa0

    invoke-direct {v0, p0, p0, v1}, Lcom/tencent/mm/ui/setting/ad;-><init>(Lcom/tencent/mm/ui/setting/SetTextSizeUI;Landroid/content/Context;F)V

    .line 177
    const v1, 0x7f0703d5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 178
    const-string v1, "setting_text_size_super"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 180
    iget v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    const/high16 v2, 0x3fa0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 181
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 185
    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 187
    new-instance v0, Lcom/tencent/mm/ui/setting/ad;

    const/high16 v1, 0x3fb0

    invoke-direct {v0, p0, p0, v1}, Lcom/tencent/mm/ui/setting/ad;-><init>(Lcom/tencent/mm/ui/setting/SetTextSizeUI;Landroid/content/Context;F)V

    .line 188
    const v1, 0x7f0703d4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(I)V

    .line 189
    const-string v1, "setting_text_size_huge"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    .line 191
    iget v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    const/high16 v2, 0x3fb0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    .line 192
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    .line 196
    :goto_4
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 198
    new-instance v0, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 199
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 203
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->aES()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_6

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 206
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 207
    const-string v4, "ui.settings.SetTextSize"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 150
    :cond_1
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_0

    .line 161
    :cond_2
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_1

    .line 172
    :cond_3
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_2

    .line 183
    :cond_4
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_3

    .line 194
    :cond_5
    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_4

    .line 210
    :cond_6
    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    .line 49
    invoke-static {p0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cc(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    .line 50
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 52
    const v0, 0x7f070316

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->mn(I)V

    .line 53
    new-instance v0, Lcom/tencent/mm/ui/setting/ab;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/ab;-><init>(Lcom/tencent/mm/ui/setting/SetTextSizeUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 63
    const v0, 0x7f07033d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/setting/ac;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/ac;-><init>(Lcom/tencent/mm/ui/setting/SetTextSizeUI;)V

    sget-object v2, Lcom/tencent/mm/ui/bt;->gnO:Lcom/tencent/mm/ui/bt;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->a(Ljava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;Lcom/tencent/mm/ui/bt;)V

    .line 74
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->refresh()V

    .line 75
    return-void
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 112
    iput v3, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->xy:I

    .line 114
    const-string v1, "setting_text_size_small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const/high16 v0, 0x3f60

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    .line 116
    iput v2, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->xy:I

    .line 135
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->refresh()V

    .line 137
    return v2

    .line 118
    :cond_1
    const-string v1, "setting_text_size_normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    .line 120
    iput v3, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->xy:I

    goto :goto_0

    .line 122
    :cond_2
    const-string v1, "setting_text_size_large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    const/high16 v0, 0x3f90

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->xy:I

    goto :goto_0

    .line 126
    :cond_3
    const-string v1, "setting_text_size_super"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    const/high16 v0, 0x3fa0

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    .line 128
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->xy:I

    goto :goto_0

    .line 130
    :cond_4
    const-string v1, "setting_text_size_huge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/high16 v0, 0x3fb0

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->hek:F

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->xy:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SetTextSizeUI;->FR()V

    .line 45
    return-void
.end method
