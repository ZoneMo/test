.class final Lcom/tencent/mm/w/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cto:Lcom/tencent/mm/w/g;

.field final synthetic ctp:Ljava/lang/String;

.field final synthetic ctq:F


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/g;Ljava/lang/String;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/tencent/mm/w/j;->cto:Lcom/tencent/mm/w/g;

    iput-object p2, p0, Lcom/tencent/mm/w/j;->ctp:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/mm/w/j;->ctq:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 432
    iget-object v0, p0, Lcom/tencent/mm/w/j;->cto:Lcom/tencent/mm/w/g;

    iget-object v1, p0, Lcom/tencent/mm/w/j;->ctp:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/w/j;->ctq:F

    const/4 v5, 0x0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;ZFZZ)Landroid/graphics/Bitmap;

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/w/j;->cto:Lcom/tencent/mm/w/g;

    invoke-static {v0}, Lcom/tencent/mm/w/g;->a(Lcom/tencent/mm/w/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/w/k;

    invoke-direct {v1, p0}, Lcom/tencent/mm/w/k;-><init>(Lcom/tencent/mm/w/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    return-void
.end method
