.class final Lcom/tencent/mm/ui/account/ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic guZ:Lcom/tencent/mm/ui/account/lz;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/lz;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ma;->guZ:Lcom/tencent/mm/ui/account/lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/mm/ui/account/ma;->guZ:Lcom/tencent/mm/ui/account/lz;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/lz;->guY:Lcom/tencent/mm/ui/account/WelcomeSelectView_5_2;

    invoke-static {v0}, Lcom/tencent/mm/ui/account/WelcomeSelectView_5_2;->a(Lcom/tencent/mm/ui/account/WelcomeSelectView_5_2;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    return-void
.end method
