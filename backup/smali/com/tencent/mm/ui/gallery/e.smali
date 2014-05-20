.class final Lcom/tencent/mm/ui/gallery/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/r;


# instance fields
.field final synthetic cGX:Ljava/lang/String;

.field final synthetic hcy:Lcom/tencent/mm/ui/gallery/GestureGalleryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/gallery/GestureGalleryUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/tencent/mm/ui/gallery/e;->hcy:Lcom/tencent/mm/ui/gallery/GestureGalleryUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/gallery/e;->cGX:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    if-eqz p1, :cond_1

    .line 244
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apx()Lcom/tencent/mm/pluginsdk/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apx()Lcom/tencent/mm/pluginsdk/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/gallery/e;->cGX:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/tencent/mm/pluginsdk/ac;->ap(Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apx()Lcom/tencent/mm/pluginsdk/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ac;->afA()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/gallery/e;->hcy:Lcom/tencent/mm/ui/gallery/GestureGalleryUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/gallery/e;->hcy:Lcom/tencent/mm/ui/gallery/GestureGalleryUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/gallery/GestureGalleryUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a27

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 251
    :cond_1
    return-void
.end method
