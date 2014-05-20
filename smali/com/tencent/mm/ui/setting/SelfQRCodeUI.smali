.class public Lcom/tencent/mm/ui/setting/SelfQRCodeUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private bPx:Ljava/lang/String;

.field private cIr:Landroid/app/ProgressDialog;

.field private ckx:Landroid/graphics/Bitmap;

.field private daU:Landroid/widget/ImageView;

.field private hdC:Landroid/widget/ImageView;

.field private hee:Landroid/widget/TextView;

.field private hef:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->cIr:Landroid/app/ProgressDialog;

    .line 63
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hdC:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->daU:Landroid/widget/ImageView;

    .line 64
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hef:Landroid/widget/TextView;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    return-object v0
.end method

.method private aw(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 274
    new-instance v0, Lcom/tencent/mm/ad/a;

    invoke-direct {v0, p1, p2}, Lcom/tencent/mm/ad/a;-><init>(Ljava/lang/String;I)V

    .line 275
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 277
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0709bb

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    const v2, 0x7f070c77

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/setting/s;

    invoke-direct {v4, p0, v0, p1}, Lcom/tencent/mm/ui/setting/s;-><init>(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;Lcom/tencent/mm/ad/a;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->cIr:Landroid/app/ProgressDialog;

    .line 286
    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const v0, 0x7f07027f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->mn(I)V

    .line 102
    const v0, 0x7f0a0738

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070c8c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->dg(Z)V

    .line 108
    :goto_0
    const v0, 0x7f0a0737

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hdC:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0a0734

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->daU:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f0a0735

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0a0736

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hef:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 122
    const-string v0, "MicroMsg.SelfQRCodeNewUI"

    const-string v1, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "bitmap == null"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->aw(Ljava/lang/String;I)V

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->daU:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 132
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 133
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->tt(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    .line 138
    iget-object v0, v0, Lcom/tencent/mm/storage/b;->field_displayname:Ljava/lang/String;

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ao/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hef:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hdC:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/setting/p;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/p;-><init>(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v0, 0x7f020539

    new-instance v1, Lcom/tencent/mm/ui/setting/q;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/q;-><init>(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 229
    new-instance v0, Lcom/tencent/mm/ui/setting/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/r;-><init>(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 239
    return-void

    .line 106
    :cond_2
    const v0, 0x7f070281

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->mn(I)V

    goto/16 :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hdC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 150
    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    const v1, 0x7f070a16

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_4
    const-string v1, "MicroMsg.SelfQRCodeNewUI"

    const-string v2, "display user name = %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Lcom/tencent/mm/ad/b;->BS()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 170
    const-string v0, "MicroMsg.SelfQRCodeNewUI"

    const-string v1, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "bitmap == null"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->xu(Ljava/lang/String;)V

    .line 177
    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->daU:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    const-string v1, "MicroMsg.SelfQRCodeNewUI"

    const-string v2, "nick name = %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ao/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {}, Lcom/tencent/mm/model/co;->vw()Lcom/tencent/mm/model/co;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/tencent/mm/model/co;->rC()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0}, Lcom/tencent/mm/model/co;->rD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/tencent/mm/model/w;->dj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "MicroMsg.SelfQRCodeNewUI"

    const-string v2, "display location = %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hef:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v4}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 192
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    const v1, 0x7f02046c

    invoke-static {p0, v1}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 156
    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tD(Ljava/lang/String;)Z

    move-object v0, v1

    goto/16 :goto_4

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hdC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hee:Landroid/widget/TextView;

    const v1, 0x7f02046b

    invoke-static {p0, v1}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 458
    const-string v1, "MicroMsg.SelfQRCodeNewUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSceneEnd: errType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errMsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 462
    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->cIr:Landroid/app/ProgressDialog;

    .line 465
    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v1

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, p1, p2, v2}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 471
    :cond_3
    const v0, 0x7f070c78

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 476
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->dg(Z)V

    .line 477
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/ad/b;->gk(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_5

    :goto_1
    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    .line 482
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->hdC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 477
    :cond_5
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/h;->cj([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 480
    :cond_6
    invoke-static {}, Lcom/tencent/mm/ad/b;->BS()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method final aMa()V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Lcom/tencent/mm/ui/tools/dl;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/dl;-><init>(Landroid/content/Context;)V

    .line 299
    new-instance v1, Lcom/tencent/mm/ui/setting/t;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/t;-><init>(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->a(Lcom/tencent/mm/ui/base/cc;)V

    .line 313
    new-instance v1, Lcom/tencent/mm/ui/setting/u;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/u;-><init>(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/dl;->b(Lcom/tencent/mm/ui/base/cd;)V

    .line 338
    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/dl;->cB()Z

    .line 392
    return-void
.end method

.method final aMb()V
    .locals 5

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const v1, 0x7f0a0733

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 246
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/h;->ae(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_0

    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 251
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 253
    :cond_0
    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->bPx:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ad/b;->gk(Ljava/lang/String;)[B

    move-result-object v0

    .line 259
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->auS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mmqrcode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 264
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 265
    const v0, 0x7f0705e9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->auS()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    invoke-static {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->d(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_2
    :goto_1
    return-void

    .line 257
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x10401

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    invoke-static {v1}, Lcom/tencent/mm/ad/b;->gk(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final aMl()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v2, "@t.qq.com"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v2

    .line 407
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 409
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 412
    const v2, 0x7f070c7b

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    if-eqz v0, :cond_1

    .line 415
    const v0, 0x7f070c7c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_1
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 418
    const-string v1, "zh_CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    const v0, 0x7f070c7e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_2
    invoke-static {}, Lcom/tencent/mm/x/b;->Bj()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 425
    :cond_3
    const v0, 0x7f070c7d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 430
    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/tencent/mm/ui/setting/v;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/setting/v;-><init>(Lcom/tencent/mm/ui/setting/SelfQRCodeUI;[Ljava/lang/String;)V

    invoke-static {p0, v1, v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 454
    return-void

    :cond_5
    move v0, v1

    .line 407
    goto :goto_0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f03027c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x9e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 78
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 79
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->FR()V

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 85
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x9e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->ckx:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 91
    return-void
.end method

.method final xu(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v1, 0x10401

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;->aw(Ljava/lang/String;I)V

    .line 291
    return-void
.end method
