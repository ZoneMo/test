.class final Lcom/tencent/mm/ui/tools/gridviewheaders/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/a/g;


# instance fields
.field final synthetic hoJ:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

.field final synthetic hoK:Lcom/tencent/mm/ui/tools/ee;

.field final synthetic hoL:Landroid/widget/ImageView;

.field final synthetic hoM:Lcom/tencent/mm/ui/tools/gridviewheaders/x;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/gridviewheaders/x;Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;Lcom/tencent/mm/ui/tools/ee;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/y;->hoM:Lcom/tencent/mm/ui/tools/gridviewheaders/x;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/y;->hoJ:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    iput-object p3, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/y;->hoK:Lcom/tencent/mm/ui/tools/ee;

    iput-object p4, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/y;->hoL:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final p(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/y;->hoJ:Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/y;->hoK:Lcom/tencent/mm/ui/tools/ee;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/gridviewheaders/y;->hoL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;->d(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 162
    return-void
.end method
