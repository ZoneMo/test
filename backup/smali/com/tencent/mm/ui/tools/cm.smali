.class final Lcom/tencent/mm/ui/tools/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic hks:Lcom/tencent/mm/ui/tools/ch;

.field final synthetic hkt:[Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ch;[Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/cm;->hks:Lcom/tencent/mm/ui/tools/ch;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/cm;->hkt:[Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cm;->hks:Lcom/tencent/mm/ui/tools/ch;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/ch;->hkn:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->b(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/bs;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/cm;->hkt:[Ljava/util/concurrent/Callable;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    goto :goto_0
.end method
