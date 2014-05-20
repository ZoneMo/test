.class final Lcom/tencent/mm/plugin/wallet/pay/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic dFu:Landroid/graphics/Bitmap;

.field final synthetic fbU:Lcom/tencent/mm/plugin/wallet/pay/ui/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/pay/ui/k;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/l;->fbU:Lcom/tencent/mm/plugin/wallet/pay/ui/k;

    iput-object p2, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/l;->dFu:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/l;->fbU:Lcom/tencent/mm/plugin/wallet/pay/ui/k;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/pay/ui/k;->fbT:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/wallet/pay/ui/l;->dFu:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    return-void
.end method
