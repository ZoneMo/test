.class final Lcom/tencent/mm/ui/base/preference/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic gGJ:Lcom/tencent/mm/ui/base/preference/y;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/preference/y;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/tencent/mm/ui/base/preference/ad;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ad;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->e(Lcom/tencent/mm/ui/base/preference/y;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ad;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->e(Lcom/tencent/mm/ui/base/preference/y;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 214
    iget-object v1, p0, Lcom/tencent/mm/ui/base/preference/ad;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/preference/y;->d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/preference/x;->getItem(I)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ad;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ad;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->d(Lcom/tencent/mm/ui/base/preference/y;)Lcom/tencent/mm/ui/base/preference/x;

    iget-object v0, p0, Lcom/tencent/mm/ui/base/preference/ad;->gGJ:Lcom/tencent/mm/ui/base/preference/y;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/preference/y;->e(Lcom/tencent/mm/ui/base/preference/y;)Landroid/widget/ListView;

    invoke-static {}, Lcom/tencent/mm/ui/base/preference/y;->aIn()Z

    move-result v0

    goto :goto_0
.end method
