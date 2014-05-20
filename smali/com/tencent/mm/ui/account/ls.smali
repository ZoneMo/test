.class final Lcom/tencent/mm/ui/account/ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic dXr:Landroid/view/View;

.field final synthetic guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

.field final synthetic guL:F

.field final synthetic guM:F


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/WelcomeSelectView;Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/ls;->dXr:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/account/ls;->guL:F

    iput p3, p0, Lcom/tencent/mm/ui/account/ls;->guM:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v5, 0x0

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->dXr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/tencent/mm/ui/account/ls;->dXr:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/tencent/mm/ui/account/ls;->guL:F

    iget v3, p0, Lcom/tencent/mm/ui/account/ls;->guM:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 198
    iget-object v2, p0, Lcom/tencent/mm/ui/account/ls;->dXr:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 199
    iget-object v3, p0, Lcom/tencent/mm/ui/account/ls;->dXr:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 200
    iget-object v4, p0, Lcom/tencent/mm/ui/account/ls;->dXr:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 201
    iget-object v4, p0, Lcom/tencent/mm/ui/account/ls;->dXr:Landroid/view/View;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->a(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/widget/ImageView;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->a(Landroid/view/View;J)V

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->b(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->a(Landroid/view/View;J)V

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->c(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->a(Landroid/view/View;J)V

    .line 205
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-static {v1}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->d(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->ah(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->a(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->b(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->c(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ls;->guK:Lcom/tencent/mm/ui/account/WelcomeSelectView;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/WelcomeSelectView;->d(Lcom/tencent/mm/ui/account/WelcomeSelectView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    new-instance v0, Lcom/tencent/mm/ui/account/lt;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/account/lt;-><init>(Lcom/tencent/mm/ui/account/ls;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    return-void
.end method
