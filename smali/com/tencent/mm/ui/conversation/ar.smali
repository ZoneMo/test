.class final Lcom/tencent/mm/ui/conversation/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gZL:Lcom/tencent/mm/ui/conversation/aq;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ar;->gZL:Lcom/tencent/mm/ui/conversation/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 827
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ar;->gZL:Lcom/tencent/mm/ui/conversation/aq;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/aq;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->n(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ar;->gZL:Lcom/tencent/mm/ui/conversation/aq;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/aq;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->n(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ar;->gZL:Lcom/tencent/mm/ui/conversation/aq;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/aq;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->n(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ar;->gZL:Lcom/tencent/mm/ui/conversation/aq;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/aq;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->o(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/tools/ds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ds;->uQ()Lcom/tencent/mm/platformtools/ab;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_1

    .line 833
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ar;->gZL:Lcom/tencent/mm/ui/conversation/aq;

    iget-object v1, v1, Lcom/tencent/mm/ui/conversation/aq;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/conversation/MainUI;->n(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ar;->gZL:Lcom/tencent/mm/ui/conversation/aq;

    iget-object v1, v1, Lcom/tencent/mm/ui/conversation/aq;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/conversation/MainUI;->f()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/tools/dz;->a(Landroid/app/Activity;Lcom/tencent/mm/platformtools/ab;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ar;->gZL:Lcom/tencent/mm/ui/conversation/aq;

    iget-object v1, v1, Lcom/tencent/mm/ui/conversation/aq;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/conversation/MainUI;->n(Lcom/tencent/mm/ui/conversation/MainUI;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    :cond_1
    return-void
.end method
