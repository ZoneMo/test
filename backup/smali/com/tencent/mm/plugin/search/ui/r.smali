.class final Lcom/tencent/mm/plugin/search/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/p/w;


# instance fields
.field cMS:Landroid/widget/ImageView;

.field cPP:Landroid/widget/TextView;

.field dle:Landroid/widget/TextView;

.field ejt:Lcom/tencent/mm/plugin/search/ui/q;

.field eju:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final eP(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/r;->ejt:Lcom/tencent/mm/plugin/search/ui/q;

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/r;->ejt:Lcom/tencent/mm/plugin/search/ui/q;

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/q;->cnh:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/p/u;->b(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/r;->ejt:Lcom/tencent/mm/plugin/search/ui/q;

    iget-object v1, v1, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/r;->cMS:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/plugin/search/ui/s;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/plugin/search/ui/s;-><init>(Lcom/tencent/mm/plugin/search/ui/r;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
