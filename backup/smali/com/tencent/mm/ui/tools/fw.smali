.class final Lcom/tencent/mm/ui/tools/fw;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field imagePath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/fw;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 180
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fw;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/v;->hN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    if-nez v0, :cond_2

    .line 188
    const-string v0, "MicroMsg.ShowImageUI"

    const-string v1, "get image fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/tencent/mm/ui/base/MultiTouchImageView;

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03029f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 192
    :cond_1
    const v0, 0x7f0a031f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :goto_0
    return-object p2

    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_3

    instance-of v2, p2, Lcom/tencent/mm/ui/base/MultiTouchImageView;

    if-nez v2, :cond_4

    :cond_3
    new-instance p2, Lcom/tencent/mm/ui/base/MultiTouchImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p2, v1, v2, v3}, Lcom/tencent/mm/ui/base/MultiTouchImageView;-><init>(Landroid/content/Context;II)V

    :goto_1
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/tencent/mm/ui/base/MultiTouchImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Lcom/tencent/mm/ui/base/MultiTouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/MultiTouchImageView;->aHD()V

    goto :goto_0

    :cond_4
    check-cast p2, Lcom/tencent/mm/ui/base/MultiTouchImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/tencent/mm/ui/base/MultiTouchImageView;->bk(II)V

    goto :goto_1
.end method
