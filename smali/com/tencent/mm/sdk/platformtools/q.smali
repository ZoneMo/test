.class final Lcom/tencent/mm/sdk/platformtools/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public gcW:[I

.field final synthetic gcX:Lcom/tencent/mm/sdk/platformtools/o;

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/sdk/platformtools/o;Landroid/graphics/Bitmap;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 680
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/q;->gcX:Lcom/tencent/mm/sdk/platformtools/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    if-nez p2, :cond_0

    .line 689
    :goto_0
    return-void

    .line 685
    :cond_0
    iget v0, p1, Lcom/tencent/mm/sdk/platformtools/o;->width:I

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/q;->width:I

    .line 686
    iget v0, p1, Lcom/tencent/mm/sdk/platformtools/o;->height:I

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/q;->height:I

    .line 687
    mul-int v0, p3, p4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/sdk/platformtools/q;->gcW:[I

    .line 688
    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/q;->gcW:[I

    move-object v0, p2

    move v3, p3

    move v4, v2

    move v5, v2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_0
.end method
