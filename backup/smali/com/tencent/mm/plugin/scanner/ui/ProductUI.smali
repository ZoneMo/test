.class public Lcom/tencent/mm/plugin/scanner/ui/ProductUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/platformtools/w;


# instance fields
.field private bMS:J

.field protected cIG:Lcom/tencent/mm/ui/base/preference/n;

.field protected cIr:Landroid/app/ProgressDialog;

.field private cXK:Landroid/widget/TextView;

.field private ecQ:Landroid/widget/ImageView;

.field private ecR:Landroid/widget/TextView;

.field private ecS:Landroid/widget/TextView;

.field private ecT:Lcom/tencent/mm/plugin/scanner/b/n;

.field private ecU:I

.field private ecV:Z

.field private ecW:Lcom/tencent/mm/plugin/scanner/ui/ah;

.field private ecX:Z

.field private ecY:Ljava/util/HashMap;

.field private ecZ:Lcom/tencent/mm/plugin/scanner/ui/t;

.field private eda:Lcom/tencent/mm/plugin/scanner/ui/v;

.field private edb:Ljava/util/List;

.field private edc:Z

.field private edd:Lcom/tencent/mm/model/am;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 93
    iput v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecU:I

    .line 95
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecV:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIr:Landroid/app/ProgressDialog;

    .line 100
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecX:Z

    .line 324
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/ae;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/ae;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->eda:Lcom/tencent/mm/plugin/scanner/ui/v;

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edc:Z

    .line 827
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;)I
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edb:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    const/4 v2, -0x1

    :cond_1
    return v2

    :cond_2
    const/4 v2, -0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecW:Lcom/tencent/mm/plugin/scanner/ui/ah;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    const-string v4, "%s_cd_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->eaU:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edb:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v13, v1

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;

    const-string v1, "%s_cd_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->eaU:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v8}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v14, v13

    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v17

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v8}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, v8, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->eaV:Ljava/lang/String;

    iget-object v7, v8, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->wapurl:Ljava/lang/String;

    iget-object v8, v8, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->eaU:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/plugin/scanner/b;->sX()Ljava/lang/String;

    move-result-object v10

    const-string v12, "wx482a4001c37e2b74"

    move-object v11, v3

    invoke-interface/range {v1 .. v12}, Lcom/tencent/mm/model/al;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/al;->b(Lcom/tencent/mm/protocal/a/or;)Lcom/tencent/mm/model/al;

    add-int/lit8 v1, v13, 0x1

    move v13, v1

    move v2, v14

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecW:Lcom/tencent/mm/plugin/scanner/ui/ah;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/scanner/ui/ah;->Fr()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    move v14, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecY:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Lcom/tencent/mm/plugin/scanner/b/n;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "refreshViewByProduct(), pd == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->finish()V

    .line 296
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->field_functionType:I

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecU:I

    .line 216
    iget v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_xmlType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cXK:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecR:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecS:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_type:I

    if-ne v0, v6, :cond_3

    .line 222
    sget v0, Lcom/tencent/mm/i;->aEt:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    .line 226
    :goto_1
    iget-object v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_playurl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    sget v0, Lcom/tencent/mm/i;->aEs:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 228
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/z;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/plugin/scanner/ui/z;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;Lcom/tencent/mm/plugin/scanner/b/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_1
    sget v0, Lcom/tencent/mm/h;->afQ:I

    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/aa;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/scanner/ui/aa;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V

    invoke-virtual {p0, v5, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 248
    iget-object v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_productid:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecV:Z

    if-nez v0, :cond_2

    .line 249
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/scanner/a/c;

    iget-object v2, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_productid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_ProductUI_getProductInfoScene"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/a/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 251
    iput-boolean v6, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecV:Z

    .line 252
    if-eqz p2, :cond_2

    .line 253
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/ab;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/plugin/scanner/ui/ab;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;Lcom/tencent/mm/plugin/scanner/b/n;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 278
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/ac;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/ac;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 288
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "start postToMainThread initBodyView"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/ad;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/plugin/scanner/ui/ad;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;Lcom/tencent/mm/plugin/scanner/b/n;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 224
    :cond_3
    sget v0, Lcom/tencent/mm/i;->aEu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    goto :goto_1

    .line 267
    :cond_4
    iget v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_xmlType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 268
    sget v0, Lcom/tencent/mm/i;->aEu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    .line 269
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->ahW:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cXK:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->bxl:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 273
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 274
    const/high16 v2, 0x4120

    invoke-static {p0, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;Lcom/tencent/mm/plugin/scanner/b/n;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 82
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    move v2, v3

    :goto_1
    iget-object v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_11

    iget-object v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/scanner/a/a;

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/CategoryWithTitlePreference;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/scanner/ui/CategoryWithTitlePreference;-><init>(Landroid/content/Context;)V

    iget-object v4, v0, Lcom/tencent/mm/plugin/scanner/a/a;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/tencent/mm/plugin/scanner/a/a;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/plugin/scanner/ui/CategoryWithTitlePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lcom/tencent/mm/plugin/scanner/ui/CategoryWithTitlePreference;->hF(I)V

    :goto_2
    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v4, v1}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    move v4, v3

    :goto_3
    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v4, v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/scanner/a/b;

    iget v6, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-eq v6, v9, :cond_2

    iget v6, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-eq v6, v10, :cond_2

    iget v6, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-eq v6, v11, :cond_2

    iget v6, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-ne v6, v12, :cond_9

    :cond_2
    new-instance v6, Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setKey(Ljava/lang/String;)V

    sget v5, Lcom/tencent/mm/k;->aYQ:I

    invoke-virtual {v6, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setLayoutResource(I)V

    iget v5, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-ne v5, v9, :cond_6

    iget-object v5, v1, Lcom/tencent/mm/plugin/scanner/a/b;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/tencent/mm/plugin/scanner/a/b;->desc:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v6}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    :cond_4
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/tencent/mm/plugin/scanner/ui/CategoryWithTitlePreference;->hF(I)V

    goto :goto_2

    :cond_6
    iget v5, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-ne v5, v10, :cond_7

    iget-object v5, v1, Lcom/tencent/mm/plugin/scanner/a/b;->crH:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/tencent/mm/plugin/scanner/a/b;->username:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    iget v5, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-ne v5, v11, :cond_8

    const-string v1, "thumburl"

    invoke-virtual {v6, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, ""

    invoke-virtual {v6, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    iget v5, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-ne v5, v12, :cond_3

    iget-object v5, v1, Lcom/tencent/mm/plugin/scanner/a/b;->crH:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/tencent/mm/ui/base/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/tencent/mm/plugin/scanner/a/b;->username:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    iget v6, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_f

    new-instance v6, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;

    invoke-direct {v6, p0}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->setKey(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/tencent/mm/plugin/scanner/a/b;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/tencent/mm/plugin/scanner/a/b;->eaU:Ljava/lang/String;

    iput-object v7, v6, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->eaU:Ljava/lang/String;

    iget-object v7, v1, Lcom/tencent/mm/plugin/scanner/a/b;->wapurl:Ljava/lang/String;

    iput-object v7, v6, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->wapurl:Ljava/lang/String;

    iget-object v7, v1, Lcom/tencent/mm/plugin/scanner/a/b;->eaV:Ljava/lang/String;

    iput-object v7, v6, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->eaV:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v7

    invoke-interface {v7}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    :cond_a
    invoke-virtual {v6, v3}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->be(Z)V

    :goto_6
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->eda:Lcom/tencent/mm/plugin/scanner/ui/v;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->a(Lcom/tencent/mm/plugin/scanner/ui/v;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v6}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edd:Lcom/tencent/mm/model/am;

    if-nez v1, :cond_b

    new-instance v1, Lcom/tencent/mm/plugin/scanner/ui/af;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/scanner/ui/af;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edd:Lcom/tencent/mm/model/am;

    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    iget-object v5, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edd:Lcom/tencent/mm/model/am;

    invoke-interface {v1, v5}, Lcom/tencent/mm/model/al;->a(Lcom/tencent/mm/model/am;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edb:Ljava/util/List;

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edb:Ljava/util/List;

    :cond_c
    iget-boolean v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edc:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edb:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    const-string v7, "%s_cd_%s"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/tencent/mm/plugin/scanner/a/b;->eaU:Ljava/lang/String;

    aput-object v1, v8, v3

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->mB(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v6, v3}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->be(Z)V

    goto :goto_6

    :cond_e
    invoke-virtual {v6, v9}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->be(Z)V

    goto :goto_6

    :cond_f
    iget v6, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    new-instance v6, Lcom/tencent/mm/plugin/scanner/ui/q;

    invoke-direct {v6, p0}, Lcom/tencent/mm/plugin/scanner/ui/q;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v5}, Lcom/tencent/mm/plugin/scanner/ui/q;->setKey(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/mm/plugin/scanner/a/b;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/tencent/mm/plugin/scanner/ui/q;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/tencent/mm/plugin/scanner/a/b;->desc:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/plugin/scanner/ui/q;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v1, v6}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecZ:Lcom/tencent/mm/plugin/scanner/ui/t;

    invoke-virtual {v6, v1}, Lcom/tencent/mm/plugin/scanner/ui/q;->a(Lcom/tencent/mm/plugin/scanner/ui/t;)V

    goto/16 :goto_5

    :cond_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "initBodyView finish"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edb:Ljava/util/List;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edc:Z

    goto/16 :goto_0
.end method

.method private aap()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_ProductUI_chatting_msgId"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->bMS:J

    .line 315
    iget-wide v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->bMS:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->bMS:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecW:Lcom/tencent/mm/plugin/scanner/ui/ah;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/scanner/ui/ah;->Fr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->bMS:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 322
    :cond_0
    return-void
.end method

.method private aaq()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 493
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v3, v4

    .line 496
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 497
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/scanner/a/a;

    .line 498
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    move v5, v4

    .line 499
    :goto_2
    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 502
    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/scanner/a/b;

    .line 503
    iget v2, v1, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    const/4 v6, 0x5

    if-ne v2, v6, :cond_2

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v6, v3, 0x64

    add-int/2addr v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 505
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v6}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;

    .line 506
    if-eqz v2, :cond_2

    .line 507
    const-string v7, "%s_cd_%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/tencent/mm/plugin/scanner/a/b;->eaU:Ljava/lang/String;

    aput-object v1, v8, v4

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {v1}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->mB(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 509
    invoke-virtual {v2, v4}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->be(Z)V

    .line 501
    :cond_2
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 511
    :cond_3
    invoke-virtual {v2, v9}, Lcom/tencent/mm/plugin/scanner/ui/MusicPreference;->be(Z)V

    goto :goto_3

    .line 496
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 517
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 82
    const-string v4, ""

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sget v0, Lcom/tencent/mm/n;->bIh:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/tencent/mm/n;->bIg:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_is_favorite_item"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/tencent/mm/n;->bdx:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v1, ""

    new-instance v5, Lcom/tencent/mm/plugin/scanner/ui/x;

    invoke-direct {v5, p0}, Lcom/tencent/mm/plugin/scanner/ui/x;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/tencent/mm/ui/base/w;)Lcom/tencent/mm/ui/base/ar;

    return-void

    :cond_0
    sget v0, Lcom/tencent/mm/n;->bsu:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;Lcom/tencent/mm/plugin/scanner/b/n;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/plugin/scanner/b/n;->field_thumburl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/ah;

    invoke-direct {v0, p1}, Lcom/tencent/mm/plugin/scanner/ui/ah;-><init>(Lcom/tencent/mm/plugin/scanner/b/n;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecW:Lcom/tencent/mm/plugin/scanner/ui/ah;

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecW:Lcom/tencent/mm/plugin/scanner/ui/ah;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecX:Z

    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->aap()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)Lcom/tencent/mm/model/am;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edd:Lcom/tencent/mm/model/am;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->aaq()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)Lcom/tencent/mm/plugin/scanner/b/n;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)Lcom/tencent/mm/plugin/scanner/ui/ah;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecW:Lcom/tencent/mm/plugin/scanner/ui/ah;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecX:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V
    .locals 6
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "do favorite, but product is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/mm/c/a/x;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/x;-><init>()V

    new-instance v1, Lcom/tencent/mm/protocal/a/fx;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/fx;-><init>()V

    new-instance v2, Lcom/tencent/mm/protocal/a/fy;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/fy;-><init>()V

    new-instance v3, Lcom/tencent/mm/protocal/a/fw;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/a/fw;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/fy;->sa(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/fy;->sb(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/fy;->ls(I)Lcom/tencent/mm/protocal/a/fy;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mm/protocal/a/fy;->bM(J)Lcom/tencent/mm/protocal/a/fy;

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget v4, v4, Lcom/tencent/mm/plugin/scanner/b/n;->field_functionType:I

    invoke-static {v4}, Lcom/tencent/mm/plugin/scanner/a/g;->hC(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/a/fy;->sg(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fy;

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v4, v4, Lcom/tencent/mm/plugin/scanner/b/n;->field_title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/a/fw;->rT(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v4, v4, Lcom/tencent/mm/plugin/scanner/b/n;->field_subtitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/a/fw;->rU(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget v4, v4, Lcom/tencent/mm/plugin/scanner/b/n;->field_type:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/a/fw;->lq(I)Lcom/tencent/mm/protocal/a/fw;

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    invoke-static {v4}, Lcom/tencent/mm/plugin/scanner/b/m;->b(Lcom/tencent/mm/plugin/scanner/b/n;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/a/fw;->rW(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v4, v4, Lcom/tencent/mm/plugin/scanner/b/n;->field_thumburl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/a/fw;->rV(Ljava/lang/String;)Lcom/tencent/mm/protocal/a/fw;

    iget-object v4, v0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v5, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v5, v5, Lcom/tencent/mm/plugin/scanner/b/n;->field_title:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/c/a/y;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget-object v5, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v5, v5, Lcom/tencent/mm/plugin/scanner/b/n;->field_subtitle:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/mm/c/a/y;->desc:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iput-object v1, v4, Lcom/tencent/mm/c/a/y;->bMn:Lcom/tencent/mm/protocal/a/fx;

    iget-object v4, v0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    const/16 v5, 0xa

    iput v5, v4, Lcom/tencent/mm/c/a/y;->type:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fy;)Lcom/tencent/mm/protocal/a/fx;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/a/fx;->a(Lcom/tencent/mm/protocal/a/fw;)Lcom/tencent/mm/protocal/a/fx;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v0, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v0, v0, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bli:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bkN:I

    sget v2, Lcom/tencent/mm/n;->bkF:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0
.end method

.method private static mB(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 688
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oo()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 691
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const/4 v0, 0x1

    .line 697
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic mC(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->mB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    sget v0, Lcom/tencent/mm/n;->bxs:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->mn(I)V

    .line 150
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 152
    sget v0, Lcom/tencent/mm/i;->aEz:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cXK:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/tencent/mm/i;->aEy:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecR:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/tencent/mm/i;->aEx:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecS:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_Product_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "MicroMsg.scanner.ProductUI"

    const-string v2, "productId = [%s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/b;->ZB()Lcom/tencent/mm/plugin/scanner/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/scanner/a/i;->mn(Ljava/lang/String;)Lcom/tencent/mm/plugin/scanner/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    if-nez v0, :cond_3

    .line 161
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "initView(), product == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->finish()V

    .line 207
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_Product_xml"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_Product_funcType"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/scanner/a/g;->O(Ljava/lang/String;I)Lcom/tencent/mm/plugin/scanner/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    if-nez v0, :cond_1

    .line 169
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "initView(), product == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->finish()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/scanner/a/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/scanner/a/a;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->field_productid:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->field_productid:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/plugin/scanner/b;->ZB()Lcom/tencent/mm/plugin/scanner/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/scanner/a/i;->mn(Ljava/lang/String;)Lcom/tencent/mm/plugin/scanner/b/n;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_3

    .line 177
    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    .line 182
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecY:Ljava/util/HashMap;

    .line 183
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/w;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/w;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecZ:Lcom/tencent/mm/plugin/scanner/ui/t;

    .line 206
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_ProductUI_addToDB"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->a(Lcom/tencent/mm/plugin/scanner/b/n;Z)V

    goto/16 :goto_0
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/tencent/mm/q;->bJT:I

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 923
    if-nez p4, :cond_1

    .line 924
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "scene == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x1b3

    if-ne v0, v1, :cond_6

    .line 928
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 929
    :cond_2
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "onSceneEnd() errType = [%s], errCode = [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 932
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    if-nez v0, :cond_4

    .line 933
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "onSceneEnd product == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :cond_4
    check-cast p4, Lcom/tencent/mm/plugin/scanner/a/c;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/scanner/a/c;->ZC()Lcom/tencent/mm/protocal/a/jz;

    move-result-object v0

    .line 937
    if-nez v0, :cond_5

    .line 938
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "onSceneEnd productInfo == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 941
    :cond_5
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/jz;->fLU:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 942
    const-string v1, "MicroMsg.scanner.ProductUI"

    const-string v2, "onSceneEnd  productInfo.DescXML != null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/jz;->fLU:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecU:I

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/scanner/a/g;->O(Ljava/lang/String;I)Lcom/tencent/mm/plugin/scanner/b/n;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v1, v1, Lcom/tencent/mm/plugin/scanner/b/n;->field_xml:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/plugin/scanner/b/n;->field_xml:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v1, v1, Lcom/tencent/mm/plugin/scanner/b/n;->field_xml:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/plugin/scanner/b/n;->field_xml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 946
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/b;->ZB()Lcom/tencent/mm/plugin/scanner/a/i;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v2, v2, Lcom/tencent/mm/plugin/scanner/b/n;->field_productid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/scanner/a/i;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/scanner/b/n;)I

    .line 947
    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    .line 948
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->a(Lcom/tencent/mm/plugin/scanner/b/n;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 949
    :catch_0
    move-exception v0

    .line 950
    const-string v1, "MicroMsg.scanner.ProductUI"

    const-string v2, "error occur: insert product [%s]"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 954
    :cond_6
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_0

    .line 955
    check-cast p4, Lcom/tencent/mm/modelsimple/aj;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/aj;->CB()Lcom/tencent/mm/protocal/a/sj;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 957
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 959
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_8
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sj;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sj;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/m/m;->c(Ljava/lang/String;[B)Z

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "SearchContac user is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/p/k;->eG(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/tencent/mm/p/a;->xD()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "Chat_User"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "finish_direct"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/plugin/scanner/a;->Tm()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/tencent/mm/pluginsdk/e;->d(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/16 v4, 0x2f

    invoke-static {v3, v0, v4}, Lcom/tencent/mm/pluginsdk/ui/tools/c;->a(Landroid/content/Intent;Lcom/tencent/mm/protocal/a/sj;I)V

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "Contact_IsLBSFriend"

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    iget v0, v0, Lcom/tencent/mm/protocal/a/sj;->fNp:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_c

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x283a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",47"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    :cond_c
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/a;->Tm()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v0

    invoke-interface {v0, v3, p0}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 605
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v3, "onPreferenceTreeClick item: [%s]"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 608
    :cond_0
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v2, "product == null || product.actionlist == null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 682
    :goto_0
    return v0

    .line 612
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 613
    div-int/lit8 v3, v0, 0x64

    .line 614
    rem-int/lit8 v4, v0, 0x64

    .line 615
    const-string v5, "MicroMsg.scanner.ProductUI"

    const-string v6, "keyId=[%s], ii=[%s], jj=[%s]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v3, v0, :cond_3

    .line 617
    :cond_2
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v4, "index out of bounds, ii=[%s], list Size=[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v6, v6, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 618
    goto :goto_0

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecT:Lcom/tencent/mm/plugin/scanner/b/n;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/b/n;->egv:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/scanner/a/a;

    .line 621
    if-nez v0, :cond_4

    .line 622
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v3, "actionList == null"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 623
    goto :goto_0

    .line 625
    :cond_4
    if-ltz v4, :cond_5

    iget-object v3, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v4, v3, :cond_6

    .line 626
    :cond_5
    const-string v3, "MicroMsg.scanner.ProductUI"

    const-string v5, "index out of bounds, jj=[%s], actions Size=[%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 627
    goto/16 :goto_0

    .line 629
    :cond_6
    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/a/a;->cxN:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/scanner/a/b;

    .line 630
    if-nez v0, :cond_7

    .line 631
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v3, "action == null"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 632
    goto/16 :goto_0

    .line 634
    :cond_7
    const-string v3, "MicroMsg.scanner.ProductUI"

    const-string v4, "action.type = [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    iget v3, v0, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-eq v3, v2, :cond_8

    iget v3, v0, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-ne v3, v10, :cond_a

    .line 636
    :cond_8
    iget-object v3, v0, Lcom/tencent/mm/plugin/scanner/a/b;->cxM:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 637
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 638
    const-string v4, "rawUrl"

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/a/b;->cxM:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/a;->Tm()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v0

    invoke-interface {v0, v3, p0}, Lcom/tencent/mm/pluginsdk/e;->h(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_9
    :goto_1
    move v0, v2

    .line 679
    goto/16 :goto_0

    .line 641
    :cond_a
    iget v3, v0, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    if-eq v3, v9, :cond_b

    iget v3, v0, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 642
    :cond_b
    iget-object v3, v0, Lcom/tencent/mm/plugin/scanner/a/b;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 643
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/plugin/scanner/a/b;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    .line 644
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v3

    if-lez v3, :cond_c

    .line 645
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 646
    const-string v4, "show_bottom"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    const-string v4, "Contact_User"

    iget-object v5, v0, Lcom/tencent/mm/plugin/scanner/a/b;->username:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v4, "Contact_Nick"

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/a/b;->crH:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/a;->Tm()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v0

    invoke-interface {v0, v3, p0}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    const-string v3, "MicroMsg.scanner.ProductUI"

    const-string v4, "onPreferenceTreeClick, [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 682
    goto/16 :goto_0

    .line 651
    :cond_c
    :try_start_1
    new-instance v3, Lcom/tencent/mm/modelsimple/aj;

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/a/b;->username:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/tencent/mm/modelsimple/aj;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 654
    sget v0, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getString(I)Ljava/lang/String;

    sget v0, Lcom/tencent/mm/n;->bxo:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/tencent/mm/plugin/scanner/ui/ag;

    invoke-direct {v4, p0, v3}, Lcom/tencent/mm/plugin/scanner/ui/ag;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ProductUI;Lcom/tencent/mm/modelsimple/aj;)V

    invoke-static {p0, v0, v4}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->cIr:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 663
    :cond_d
    iget v3, v0, Lcom/tencent/mm/plugin/scanner/a/b;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_e

    .line 665
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 666
    const-string v4, "rawUrl"

    iget-object v0, v0, Lcom/tencent/mm/plugin/scanner/a/b;->eaV:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/a;->Tm()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v0

    invoke-interface {v0, v3, p0}, Lcom/tencent/mm/pluginsdk/e;->h(Landroid/content/Intent;Landroid/content/Context;)V

    .line 669
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 670
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->release()V

    .line 671
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->aaq()V

    goto/16 :goto_1

    .line 674
    :cond_e
    iget v0, v0, Lcom/tencent/mm/plugin/scanner/a/b;->type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final aao()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/tencent/mm/k;->aXO:I

    return v0
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/tencent/mm/k;->aEr:I

    return v0
.end method

.method public final i(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 901
    if-eqz p1, :cond_2

    .line 903
    const-string v3, "MicroMsg.scanner.ProductUI"

    const-string v4, "onGetPictureFinish pic, url = [%s], bitmap is null ? [%B]"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v2

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecQ:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 907
    invoke-direct {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->aap()V

    .line 909
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->ecX:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 903
    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 912
    const-string v3, "MicroMsg.scanner.ProductUI"

    const-string v4, "onGetPictureFinish : [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 916
    :cond_2
    const-string v0, "MicroMsg.scanner.ProductUI"

    const-string v1, "onUpdate pic, url  is null "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {p0}, Lcom/tencent/mm/platformtools/v;->b(Lcom/tencent/mm/platformtools/w;)Z

    .line 123
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->FR()V

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Lcom/tencent/mm/platformtools/v;->c(Lcom/tencent/mm/platformtools/w;)Z

    .line 143
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ProductUI;->edd:Lcom/tencent/mm/model/am;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/al;->c(Lcom/tencent/mm/model/am;)V

    .line 144
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onDestroy()V

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1b3

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 136
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 137
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 129
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1b3

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 130
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 131
    return-void
.end method
