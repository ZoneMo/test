.class public Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/m/p;
.implements Lcom/tencent/mm/p/w;
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field private bLH:Lcom/tencent/mm/ui/MMActivity;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private frR:Landroid/widget/ImageView;

.field private frS:Landroid/widget/TextView;

.field private frT:Landroid/widget/TextView;

.field private fsg:Z

.field private gVP:Landroid/widget/ImageView;

.field private gVQ:Landroid/view/View;

.field private gVR:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    .line 52
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 53
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    .line 58
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 59
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    .line 64
    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    .line 65
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    .line 66
    return-void
.end method

.method private FR()V
    .locals 8

    .prologue
    const v7, 0x7f070a16

    const v6, 0x7f0205a1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 93
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->ati()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "MicroMsg.BizInfoHeaderPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initView : bindView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frS:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVR:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/tencent/mm/p/u;->b(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frR:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frR:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVQ:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/contact/profile/a;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/profile/a;-><init>(Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frT:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frT:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->re()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVP:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    iget-object v1, v0, Lcom/tencent/mm/p/a;->field_brandIconURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVR:Ljava/lang/String;

    .line 108
    iget-object v1, v0, Lcom/tencent/mm/p/a;->field_username:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/p/a;->field_brandIconURL:Ljava/lang/String;

    invoke-static {v1, v0, v6}, Lcom/tencent/mm/p/u;->b(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v4, v1}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tD(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frT:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frT:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 145
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frT:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frT:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVP:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method private ati()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->bLH:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVR:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->ati()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    const-string v0, "MicroMsg.BizInfoHeaderPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initView : bindView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    check-cast p3, Ljava/lang/String;

    .line 212
    invoke-static {p3}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    goto :goto_0
.end method

.method public final c(Lcom/tencent/mm/storage/i;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVR:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->onDetach()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->d(Lcom/tencent/mm/m/p;)V

    invoke-static {}, Lcom/tencent/mm/p/ab;->yf()Lcom/tencent/mm/p/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/p/v;->a(Lcom/tencent/mm/p/w;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    const-string v1, "initView: contact username is null"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->FR()V

    .line 177
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final eP(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->FR()V

    .line 227
    :cond_0
    return-void
.end method

.method public final ei(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->ati()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    const-string v0, "MicroMsg.BizInfoHeaderPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initView : bindView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 194
    const-string v0, "MicroMsg.BizInfoHeaderPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyChanged: user = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->FR()V

    goto :goto_0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const-string v0, "MicroMsg.BizInfoHeaderPreference"

    const-string v1, "onBindView"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const v0, 0x7f0a00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frS:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a0260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frT:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a0261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVP:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0a00b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->frR:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0a025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->gVQ:Landroid/view/View;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->fsg:Z

    .line 83
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/profile/BizInfoHeaderPreference;->FR()V

    .line 85
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 182
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/m/m;->e(Lcom/tencent/mm/m/p;)V

    .line 183
    invoke-static {}, Lcom/tencent/mm/p/ab;->yf()Lcom/tencent/mm/p/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/p/v;->b(Lcom/tencent/mm/p/w;)V

    .line 184
    return-void
.end method
