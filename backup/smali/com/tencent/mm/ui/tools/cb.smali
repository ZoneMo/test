.class final Lcom/tencent/mm/ui/tools/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hjY:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/cb;->hjY:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cb;->hjY:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;->b(Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cb;->hjY:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;->b(Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cb;->hjY:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;->c(Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/cb;->hjY:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;->b(Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 408
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cb;->hjY:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;->d(Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 409
    if-eqz v0, :cond_0

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
