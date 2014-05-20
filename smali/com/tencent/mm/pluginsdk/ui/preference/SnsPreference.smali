.class public final Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/preference/o;


# instance fields
.field private bLH:Lcom/tencent/mm/ui/MMActivity;

.field private dtu:Ljava/util/List;

.field private fsA:Lcom/tencent/mm/pluginsdk/ui/preference/w;

.field private fsw:Lcom/tencent/mm/ui/widget/QImageView;

.field private fsx:Lcom/tencent/mm/ui/widget/QImageView;

.field private fsy:Lcom/tencent/mm/ui/widget/QImageView;

.field private fsz:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->mTitle:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    .line 35
    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    .line 36
    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    .line 37
    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsz:I

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/preference/w;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/preference/w;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsA:Lcom/tencent/mm/pluginsdk/ui/preference/w;

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 62
    sget v0, Lcom/tencent/mm/n;->biy:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->mTitle:Ljava/lang/String;

    .line 63
    sget v0, Lcom/tencent/mm/k;->aWC:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->setLayoutResource(I)V

    .line 65
    return-void
.end method

.method private atp()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    sget v1, Lcom/tencent/mm/f;->white:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/widget/QImageView;->setVisibility(I)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    sget v1, Lcom/tencent/mm/f;->white:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/widget/QImageView;->setVisibility(I)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    sget v1, Lcom/tencent/mm/f;->white:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/widget/QImageView;->setVisibility(I)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/widget/QImageView;->setVisibility(I)V

    .line 88
    invoke-static {}, Lcom/tencent/mm/compatible/g/i;->qd()Z

    move-result v0

    if-nez v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    sget v1, Lcom/tencent/mm/h;->agl:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageResource(I)V

    .line 94
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 95
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/widget/QImageView;->setVisibility(I)V

    .line 96
    invoke-static {}, Lcom/tencent/mm/compatible/g/i;->qd()Z

    move-result v0

    if-nez v0, :cond_7

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    sget v1, Lcom/tencent/mm/h;->agl:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageResource(I)V

    .line 102
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/widget/QImageView;->setVisibility(I)V

    .line 104
    invoke-static {}, Lcom/tencent/mm/compatible/g/i;->qd()Z

    move-result v0

    if-nez v0, :cond_8

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    sget v1, Lcom/tencent/mm/h;->agl:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageResource(I)V

    .line 110
    :cond_5
    :goto_2
    return-void

    .line 91
    :cond_6
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/nk;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/tencent/mm/pluginsdk/w;->b(Lcom/tencent/mm/protocal/a/nk;Landroid/view/View;I)V

    goto :goto_0

    .line 99
    :cond_7
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/nk;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/tencent/mm/pluginsdk/w;->b(Lcom/tencent/mm/protocal/a/nk;Landroid/view/View;I)V

    goto :goto_1

    .line 107
    :cond_8
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apy()Lcom/tencent/mm/pluginsdk/w;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/nk;

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/tencent/mm/pluginsdk/w;->b(Lcom/tencent/mm/protocal/a/nk;Landroid/view/View;I)V

    goto :goto_2
.end method


# virtual methods
.method protected final onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 128
    sget v0, Lcom/tencent/mm/i;->awx:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/widget/QImageView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsz:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setAlpha(I)V

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsw:Lcom/tencent/mm/ui/widget/QImageView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsA:Lcom/tencent/mm/pluginsdk/ui/preference/w;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    sget v0, Lcom/tencent/mm/i;->awy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/widget/QImageView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    .line 132
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsz:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setAlpha(I)V

    .line 133
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsx:Lcom/tencent/mm/ui/widget/QImageView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsA:Lcom/tencent/mm/pluginsdk/ui/preference/w;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    sget v0, Lcom/tencent/mm/i;->awz:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/widget/QImageView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsz:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setAlpha(I)V

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsy:Lcom/tencent/mm/ui/widget/QImageView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->fsA:Lcom/tencent/mm/pluginsdk/ui/preference/w;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/QImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    sget v0, Lcom/tencent/mm/i;->amb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->atp()V

    .line 147
    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 117
    sget v1, Lcom/tencent/mm/i;->content:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    sget v3, Lcom/tencent/mm/k;->aWJ:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    return-object v2
.end method

.method public final qS(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    new-instance v0, Lcom/tencent/mm/c/a/ez;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ez;-><init>()V

    .line 174
    iget-object v1, v0, Lcom/tencent/mm/c/a/ez;->bPL:Lcom/tencent/mm/c/a/fa;

    iput-object p1, v1, Lcom/tencent/mm/c/a/fa;->bPN:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 176
    iget-object v1, v0, Lcom/tencent/mm/c/a/ez;->bPM:Lcom/tencent/mm/c/a/fb;

    iget-object v1, v1, Lcom/tencent/mm/c/a/fb;->bPO:Lcom/tencent/mm/protocal/a/nk;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    iget-object v2, v0, Lcom/tencent/mm/c/a/ez;->bPM:Lcom/tencent/mm/c/a/fb;

    iget-object v2, v2, Lcom/tencent/mm/c/a/fb;->bPO:Lcom/tencent/mm/protocal/a/nk;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    iget-object v1, v0, Lcom/tencent/mm/c/a/ez;->bPM:Lcom/tencent/mm/c/a/fb;

    iget-object v1, v1, Lcom/tencent/mm/c/a/fb;->bPP:Lcom/tencent/mm/protocal/a/nk;

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    iget-object v2, v0, Lcom/tencent/mm/c/a/ez;->bPM:Lcom/tencent/mm/c/a/fb;

    iget-object v2, v2, Lcom/tencent/mm/c/a/fb;->bPP:Lcom/tencent/mm/protocal/a/nk;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/c/a/ez;->bPM:Lcom/tencent/mm/c/a/fb;

    iget-object v1, v1, Lcom/tencent/mm/c/a/fb;->bPQ:Lcom/tencent/mm/protocal/a/nk;

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->dtu:Ljava/util/List;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ez;->bPM:Lcom/tencent/mm/c/a/fb;

    iget-object v0, v0, Lcom/tencent/mm/c/a/fb;->bPQ:Lcom/tencent/mm/protocal/a/nk;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/preference/SnsPreference;->atp()V

    goto :goto_0
.end method
