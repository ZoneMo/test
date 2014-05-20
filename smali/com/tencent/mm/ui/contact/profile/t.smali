.class final Lcom/tencent/mm/ui/contact/profile/t;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/platformtools/w;


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 890
    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/tencent/mm/model/av;->cp(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/b;->e(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "MicroMsg.ContactWidgetBizInfo"

    const-string v4, "verify bmp is null ? %B"

    new-array v5, v0, [Ljava/lang/Object;

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 891
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/t;->url:Ljava/lang/String;

    .line 892
    invoke-static {p0}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/w;)Z

    .line 893
    return-void

    :cond_0
    move v0, v1

    .line 890
    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/profile/t;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/t;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 898
    new-instance v0, Lcom/tencent/mm/ui/contact/profile/u;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/profile/u;-><init>(Lcom/tencent/mm/ui/contact/profile/t;)V

    invoke-static {v0}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 954
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/t;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 955
    if-eqz v0, :cond_2

    .line 957
    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 959
    :cond_2
    return-void
.end method

.method public final i(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 963
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/t;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/profile/t;->invalidateSelf()V

    .line 966
    :cond_0
    return-void
.end method
