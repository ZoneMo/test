.class final Lcom/tencent/mm/ui/tools/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

.field final synthetic hko:I

.field final synthetic hkp:I

.field final synthetic hkq:I

.field final synthetic hkr:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iput p2, p0, Lcom/tencent/mm/ui/tools/cf;->hko:I

    iput p3, p0, Lcom/tencent/mm/ui/tools/cf;->hkp:I

    iput p4, p0, Lcom/tencent/mm/ui/tools/cf;->hkq:I

    iput p5, p0, Lcom/tencent/mm/ui/tools/cf;->hkr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/MMGestureGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 244
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 245
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/MMGestureGallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getLocationOnScreen([I)V

    .line 246
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget v2, p0, Lcom/tencent/mm/ui/tools/cf;->hko:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjK:I

    .line 247
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget v2, p0, Lcom/tencent/mm/ui/tools/cf;->hkp:I

    aget v0, v0, v4

    sub-int v0, v2, v0

    iput v0, v1, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjL:I

    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget v1, p0, Lcom/tencent/mm/ui/tools/cf;->hkq:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/MMGestureGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjM:F

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget v1, p0, Lcom/tencent/mm/ui/tools/cf;->hkr:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/MMGestureGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjN:F

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cf;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNq()V

    .line 255
    return v4
.end method
