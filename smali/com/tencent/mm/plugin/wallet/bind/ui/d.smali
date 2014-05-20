.class final Lcom/tencent/mm/plugin/wallet/bind/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dFu:Landroid/graphics/Bitmap;

.field final synthetic eYa:Lcom/tencent/mm/plugin/wallet/bind/ui/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/b;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/d;->eYa:Lcom/tencent/mm/plugin/wallet/bind/ui/b;

    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/d;->dFu:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/d;->eYa:Lcom/tencent/mm/plugin/wallet/bind/ui/b;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/ui/b;->eXV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/d;->dFu:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 283
    return-void
.end method
