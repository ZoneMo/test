.class final Lcom/tencent/mm/ui/tools/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    .line 340
    new-instance v1, Lcom/tencent/mm/ui/tools/cr;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/ui/tools/cr;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;B)V

    .line 341
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v2, 0x7f0701bf

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/tools/ci;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/ci;-><init>(Lcom/tencent/mm/ui/tools/ch;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/tools/cr;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/tencent/mm/ui/tools/cr;

    .line 348
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v2, 0x7f0701bb

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/tools/cj;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/cj;-><init>(Lcom/tencent/mm/ui/tools/ch;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/tools/cr;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/tencent/mm/ui/tools/cr;

    .line 355
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/MMGestureGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v2, 0x7f0705f0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/tools/ck;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/ck;-><init>(Lcom/tencent/mm/ui/tools/ch;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/tools/cr;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/tencent/mm/ui/tools/cr;

    .line 364
    :cond_0
    const-string v0, "favorite"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v2, 0x7f070a4c

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/tools/cl;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/tools/cl;-><init>(Lcom/tencent/mm/ui/tools/ch;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/tools/cr;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/tencent/mm/ui/tools/cr;

    .line 375
    :cond_1
    iget-object v0, v1, Lcom/tencent/mm/ui/tools/cr;->hkv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    new-array v3, v0, [Ljava/util/concurrent/Callable;

    iget-object v0, v1, Lcom/tencent/mm/ui/tools/cr;->hkv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/mm/ui/tools/cr;->hkv:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/concurrent/Callable;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 377
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Ljava/util/concurrent/Callable;

    .line 379
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    new-instance v5, Lcom/tencent/mm/ui/tools/cm;

    invoke-direct {v5, p0, v1}, Lcom/tencent/mm/ui/tools/cm;-><init>(Lcom/tencent/mm/ui/tools/ch;[Ljava/util/concurrent/Callable;)V

    invoke-static {v2, v3, v0, v4, v5}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 394
    const/4 v0, 0x1

    return v0
.end method
