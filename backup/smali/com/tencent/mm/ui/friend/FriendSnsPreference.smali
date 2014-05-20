.class public final Lcom/tencent/mm/ui/friend/FriendSnsPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private dah:Ljava/lang/String;

.field private dai:I

.field private daj:I

.field private dak:Landroid/graphics/Bitmap;

.field private dal:I

.field private dam:I

.field private dan:I

.field private dap:I

.field private daq:Landroid/widget/ImageView;

.field private dar:Landroid/view/ViewGroup;

.field private das:Landroid/view/View;

.field dat:Landroid/widget/RelativeLayout$LayoutParams;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private hbu:Ljava/lang/String;

.field private height:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dah:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dai:I

    .line 25
    iput v3, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daj:I

    .line 26
    iput-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->hbu:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dak:Landroid/graphics/Bitmap;

    .line 28
    iput v2, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dal:I

    .line 29
    iput v3, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dam:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dan:I

    .line 31
    iput v3, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dap:I

    .line 32
    iput-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    .line 33
    iput-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dar:Landroid/view/ViewGroup;

    .line 34
    iput-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->das:Landroid/view/View;

    .line 37
    iput v2, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->height:I

    .line 50
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->context:Landroid/content/Context;

    .line 52
    sget v0, Lcom/tencent/mm/k;->aWC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->setLayoutResource(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public final aq(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dah:Ljava/lang/String;

    .line 70
    iput p2, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dai:I

    .line 71
    return-void
.end method

.method public final nP(I)V
    .locals 2
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dap:I

    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->das:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->das:Landroid/view/View;

    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public final np(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daj:I

    .line 75
    return-void
.end method

.method public final nr(I)V
    .locals 2
    .parameter

    .prologue
    .line 105
    iput p1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dam:I

    .line 106
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dam:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :cond_0
    return-void
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 145
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 146
    sget v0, Lcom/tencent/mm/i;->aww:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :cond_0
    sget v0, Lcom/tencent/mm/i;->aBw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 152
    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->height:I

    if-eq v1, v3, :cond_1

    .line 153
    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 155
    :cond_1
    sget v0, Lcom/tencent/mm/i;->aMN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    if-eqz v0, :cond_2

    .line 157
    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daj:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dai:I

    if-eq v1, v3, :cond_2

    .line 160
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->context:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dai:I

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 165
    sget v0, Lcom/tencent/mm/i;->awB:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dar:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 169
    sget v0, Lcom/tencent/mm/i;->aHz:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dar:Landroid/view/ViewGroup;

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->das:Landroid/view/View;

    if-nez v0, :cond_5

    .line 173
    sget v0, Lcom/tencent/mm/i;->aHx:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->das:Landroid/view/View;

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->das:Landroid/view/View;

    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dak:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dak:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dam:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dar:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dan:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dat:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_7

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dat:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    :cond_7
    return-void

    .line 149
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 180
    :cond_9
    iget v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dal:I

    if-eq v0, v3, :cond_a

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 183
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->hbu:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->hbu:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    sget v0, Lcom/tencent/mm/i;->content:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 63
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/tencent/mm/k;->aWM:I

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/tencent/mm/g;->aaU:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 65
    return-object v1
.end method

.method public final setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->drawable:Landroid/graphics/drawable/Drawable;

    .line 140
    return-void
.end method

.method public final xm(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dak:Landroid/graphics/Bitmap;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->dal:I

    .line 80
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->hbu:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->daq:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method
