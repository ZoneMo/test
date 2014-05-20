.class final Lcom/tencent/mm/ui/tools/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic dmE:I

.field final synthetic hku:Lcom/tencent/mm/ui/tools/co;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/co;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/cp;->hku:Lcom/tencent/mm/ui/tools/co;

    iput p2, p0, Lcom/tencent/mm/ui/tools/cp;->dmE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cp;->hku:Lcom/tencent/mm/ui/tools/co;

    iget-object v2, v0, Lcom/tencent/mm/ui/tools/co;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cp;->hku:Lcom/tencent/mm/ui/tools/co;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/co;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->e(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;Z)Z

    .line 466
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cp;->hku:Lcom/tencent/mm/ui/tools/co;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/co;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/cp;->hku:Lcom/tencent/mm/ui/tools/co;

    iget-object v2, v2, Lcom/tencent/mm/ui/tools/co;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->e(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Z

    move-result v2

    iget v3, p0, Lcom/tencent/mm/ui/tools/cp;->dmE:I

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->g(ZI)V

    .line 467
    return v1

    :cond_0
    move v0, v1

    .line 465
    goto :goto_0
.end method
