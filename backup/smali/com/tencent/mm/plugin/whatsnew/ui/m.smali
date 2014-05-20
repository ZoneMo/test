.class final Lcom/tencent/mm/plugin/whatsnew/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field public final ffT:I

.field public final ffU:I

.field public final ffV:I

.field public final ffW:I

.field public final ffX:I

.field public final ffY:I

.field public final ffZ:I

.field public final fga:I

.field public final fgb:I

.field public final fgc:I

.field public final fgd:I

.field public final fge:I

.field public final fgf:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x1e

    const/16 v1, 0xf

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->context:Landroid/content/Context;

    .line 773
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffT:I

    .line 774
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffU:I

    .line 775
    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffV:I

    .line 776
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffW:I

    .line 777
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffX:I

    .line 778
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffY:I

    .line 779
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffV:I

    mul-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffZ:I

    .line 780
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fga:I

    .line 782
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgc:I

    .line 784
    iget v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->ffW:I

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgb:I

    .line 785
    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgd:I

    .line 786
    const/16 v0, 0x5c

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fge:I

    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_0

    .line 788
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgf:I

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/whatsnew/ui/m;->jV(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->fgf:I

    goto :goto_0
.end method

.method private jV(I)I
    .locals 4
    .parameter

    .prologue
    .line 795
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/m;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
