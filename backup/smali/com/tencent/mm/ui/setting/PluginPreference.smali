.class public final Lcom/tencent/mm/ui/setting/PluginPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/m/p;


# instance fields
.field private bLH:Lcom/tencent/mm/ui/MMActivity;

.field private cqS:Landroid/widget/ImageView;

.field private dah:Ljava/lang/String;

.field private dai:I

.field private daj:I

.field private fsz:I

.field private heb:Ljava/lang/String;

.field private hec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->dah:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->dai:I

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->daj:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->cqS:Landroid/widget/ImageView;

    .line 39
    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->fsz:I

    .line 55
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 57
    const v0, 0x7f0301b3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setLayoutResource(I)V

    .line 60
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->a(Lcom/tencent/mm/m/p;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/PluginPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/PluginPreference;->atj()V

    return-void
.end method

.method private atj()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->cqS:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->heb:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->cqS:Landroid/widget/ImageView;

    const v1, 0x7f020509

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->cqS:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->cqS:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public final aMj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->hec:Ljava/lang/String;

    return-object v0
.end method

.method public final aMk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->heb:Ljava/lang/String;

    return-object v0
.end method

.method public final aq(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->dah:Ljava/lang/String;

    .line 133
    iput p2, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->dai:I

    .line 134
    return-void
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->heb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->heb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/ui/setting/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/o;-><init>(Lcom/tencent/mm/ui/setting/PluginPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public final nT(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->fsz:I

    .line 65
    return-void
.end method

.method public final np(I)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->daj:I

    .line 138
    return-void
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 118
    const v0, 0x7f0a031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->cqS:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->cqS:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->fsz:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 120
    const v0, 0x7f0a058a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget v1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->daj:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->dah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget v1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->dai:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    iget v2, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->dai:I

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/PluginPreference;->atj()V

    .line 129
    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 104
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/PluginPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 106
    const v1, 0x7f0a007c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 109
    const v3, 0x7f0301c9

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 110
    return-object v2
.end method

.method public final xt(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    const-string v0, "MicroMsg.PluginPreference"

    const-string v1, "plugin do not exist"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->heb:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->hec:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "settings_plugins_list_#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PluginPreference;->heb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/PluginPreference;->setKey(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    goto :goto_0
.end method
