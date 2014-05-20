.class final Lcom/tencent/mm/ui/dn;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private ekS:Landroid/graphics/Bitmap;

.field final synthetic goA:Lcom/tencent/mm/ui/dm;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/ui/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/ui/dm;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/dn;-><init>(Lcom/tencent/mm/ui/dm;)V

    return-void
.end method

.method private e(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 332
    iget-object v0, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-static {v0}, Lcom/tencent/mm/ui/dm;->d(Lcom/tencent/mm/ui/dm;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030284

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 334
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    .line 336
    const v0, 0x7f0a0459

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 337
    const/4 v3, -0x1

    invoke-static {v1, v5, v3}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_2

    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 360
    :goto_0
    const v0, 0x7f0a0749

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 361
    const v0, 0x7f0a00d2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 362
    invoke-static {}, Lcom/tencent/mm/model/v;->ti()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    .line 363
    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tD(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 364
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :goto_1
    const v0, 0x7f0a0748

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 373
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 375
    iget-object v3, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-static {v3}, Lcom/tencent/mm/ui/dm;->e(Lcom/tencent/mm/ui/dm;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v1, v4}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_1
    return-object v2

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/dn;->ekS:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-static {v1}, Lcom/tencent/mm/ui/dm;->e(Lcom/tencent/mm/ui/dm;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "avatar/default_nor_avatar.png"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/dn;->ekS:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/dn;->ekS:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 368
    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-static {v0}, Lcom/tencent/mm/ui/dm;->a(Lcom/tencent/mm/ui/dm;)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 274
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 279
    iget-object v0, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-static {v0}, Lcom/tencent/mm/ui/dm;->b(Lcom/tencent/mm/ui/dm;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 280
    invoke-direct {p0, p3}, Lcom/tencent/mm/ui/dn;->e(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-static {v0}, Lcom/tencent/mm/ui/dm;->c(Lcom/tencent/mm/ui/dm;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/do;

    iget-object v1, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-static {v1}, Lcom/tencent/mm/ui/dm;->d(Lcom/tencent/mm/ui/dm;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301ef

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0a0045

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/tencent/mm/ui/do;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0044

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Lcom/tencent/mm/ui/do;->icon:I

    if-lez v2, :cond_1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/dn;->goA:Lcom/tencent/mm/ui/dm;

    invoke-static {v2}, Lcom/tencent/mm/ui/dm;->c(Lcom/tencent/mm/ui/dm;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/ui/do;

    iget v2, v2, Lcom/tencent/mm/ui/do;->icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v1, 0x7f0a0311

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0a05b5

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0a05b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, v0, Lcom/tencent/mm/ui/do;->goz:Z

    if-eqz v5, :cond_2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/dn;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_6

    const v0, 0x7f0207c1

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget v5, v0, Lcom/tencent/mm/ui/do;->goC:I

    if-lez v5, :cond_4

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget v2, v0, Lcom/tencent/mm/ui/do;->goC:I

    const/16 v4, 0x63

    if-le v2, v4, :cond_3

    const v0, 0x7f070a7d

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/tencent/mm/ui/do;->goC:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-boolean v0, v0, Lcom/tencent/mm/ui/do;->goB:Z

    if-eqz v0, :cond_5

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const v0, 0x7f0207c0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method
