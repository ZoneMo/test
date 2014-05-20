.class final Lcom/tencent/mm/ui/tools/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic hks:Lcom/tencent/mm/ui/tools/ch;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ch;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/cj;->hks:Lcom/tencent/mm/ui/tools/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cj;->hks:Lcom/tencent/mm/ui/tools/ch;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->b(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/cj;->hks:Lcom/tencent/mm/ui/tools/ch;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/MMGestureGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/bs;->nZ(I)V

    const/4 v0, 0x0

    return-object v0
.end method
