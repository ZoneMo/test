.class public Lcom/tencent/mm/ui/setting/PersonalPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"


# instance fields
.field private bPk:Ljava/lang/String;

.field private cMU:Landroid/widget/TextView;

.field private ckx:Landroid/graphics/Bitmap;

.field private dkV:Landroid/widget/ImageView;

.field private gMy:Landroid/widget/TextView;

.field private hdY:I

.field private hdZ:Ljava/lang/String;

.field private hea:Landroid/view/View$OnClickListener;

.field private username:Ljava/lang/String;

.field private wN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->cMU:Landroid/widget/TextView;

    .line 24
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->gMy:Landroid/widget/TextView;

    .line 25
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    .line 27
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->ckx:Landroid/graphics/Bitmap;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdY:I

    .line 29
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdZ:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->cMU:Landroid/widget/TextView;

    .line 24
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->gMy:Landroid/widget/TextView;

    .line 25
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    .line 27
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->ckx:Landroid/graphics/Bitmap;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdY:I

    .line 29
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdZ:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->cMU:Landroid/widget/TextView;

    .line 24
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->gMy:Landroid/widget/TextView;

    .line 25
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    .line 27
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->ckx:Landroid/graphics/Bitmap;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdY:I

    .line 29
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdZ:Ljava/lang/String;

    .line 48
    const v0, 0x7f0301b3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/PersonalPreference;->setLayoutResource(I)V

    .line 49
    const v0, 0x7f0301e8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/PersonalPreference;->setWidgetLayoutResource(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public final onBindView(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 66
    const v0, 0x7f0a031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->ckx:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->ckx:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hea:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->cMU:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->bPk:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->cMU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->cMU:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/PersonalPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->bPk:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->cMU:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->gMy:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->wN:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->username:Ljava/lang/String;

    .line 91
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->wN:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->username:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tD(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->gMy:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->gMy:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/PersonalPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070a16

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_4
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 98
    return-void

    .line 72
    :cond_5
    iget v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdY:I

    if-lez v0, :cond_6

    .line 73
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdY:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdZ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->wN:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    const v0, 0x7f0a007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 59
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/PersonalPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0301c8

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    return-object v1
.end method

.method public final xs(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->ckx:Landroid/graphics/Bitmap;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdY:I

    .line 103
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdZ:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->dkV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->hdZ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
