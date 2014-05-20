.class public Lcom/tencent/mm/ui/account/ResizeLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private gul:Lcom/tencent/mm/ui/account/ku;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/ResizeLayout;->gul:Lcom/tencent/mm/ui/account/ku;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/account/ku;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ResizeLayout;->gul:Lcom/tencent/mm/ui/account/ku;

    .line 20
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ResizeLayout;->gul:Lcom/tencent/mm/ui/account/ku;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ResizeLayout;->gul:Lcom/tencent/mm/ui/account/ku;

    invoke-interface {v0, p2, p4}, Lcom/tencent/mm/ui/account/ku;->bd(II)V

    .line 26
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 27
    return-void
.end method
