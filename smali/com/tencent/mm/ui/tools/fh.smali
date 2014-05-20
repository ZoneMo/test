.class final Lcom/tencent/mm/ui/tools/fh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic hmg:Lcom/tencent/mm/ui/tools/fl;

.field final synthetic hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ShareImageUI;Lcom/tencent/mm/ui/tools/fl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/fh;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/fh;->hmg:Lcom/tencent/mm/ui/tools/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fh;->hmg:Lcom/tencent/mm/ui/tools/fl;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/tools/fl;->oi(I)V

    .line 73
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/fh;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fh;->hmg:Lcom/tencent/mm/ui/tools/fl;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/fl;->aNK()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/tools/ShareImageUI;->dg(Z)V

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fh;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/fh;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    const v4, 0x7f0708cd

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/fh;->hmg:Lcom/tencent/mm/ui/tools/fl;

    invoke-virtual {v5}, Lcom/tencent/mm/ui/tools/fl;->aNK()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Lcom/tencent/mm/ui/tools/ShareImageUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/ui/tools/ShareImageUI;->v(ILjava/lang/String;)V

    .line 75
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0
.end method
