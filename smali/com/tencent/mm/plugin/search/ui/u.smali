.class final Lcom/tencent/mm/plugin/search/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1397
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
    .line 1400
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1401
    instance-of v1, v0, Lcom/tencent/mm/plugin/search/ui/r;

    if-eqz v1, :cond_1

    .line 1403
    check-cast v0, Lcom/tencent/mm/plugin/search/ui/r;

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/r;->ejt:Lcom/tencent/mm/plugin/search/ui/q;

    .line 1404
    iget-object v1, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejo:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 1405
    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejo:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    instance-of v1, v0, Lcom/tencent/mm/plugin/search/ui/w;

    if-eqz v1, :cond_2

    .line 1407
    check-cast v0, Lcom/tencent/mm/plugin/search/ui/w;

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/w;->ejy:Lcom/tencent/mm/plugin/search/ui/v;

    .line 1408
    iget-object v1, v0, Lcom/tencent/mm/plugin/search/ui/v;->ejo:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 1409
    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/v;->ejo:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 1410
    :cond_2
    instance-of v1, v0, Lcom/tencent/mm/plugin/search/ui/p;

    if-eqz v1, :cond_0

    .line 1411
    check-cast v0, Lcom/tencent/mm/plugin/search/ui/p;

    .line 1412
    iget-object v1, v0, Lcom/tencent/mm/plugin/search/ui/p;->ejn:Lcom/tencent/mm/plugin/search/ui/o;

    iget-object v1, v1, Lcom/tencent/mm/plugin/search/ui/o;->ejm:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 1413
    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/p;->ejn:Lcom/tencent/mm/plugin/search/ui/o;

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/o;->ejm:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
