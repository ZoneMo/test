.class final Lcom/tencent/mm/ui/tools/jsapi/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V
    .locals 0
    .parameter

    .prologue
    .line 2531
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/ae;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2536
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ae;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->l(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->apZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2537
    if-eqz v0, :cond_1

    .line 2538
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ae;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->f(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v3, v2}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2539
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ae;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/jsapi/p;->f(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/storage/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2540
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;ZF)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2541
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2542
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2543
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2546
    :cond_1
    return-void
.end method
