.class final Lcom/tencent/mm/ui/base/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic gET:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/TalkRoomPopupNav;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/tencent/mm/ui/base/eg;->gET:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/mm/ui/base/eg;->gET:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->f(Lcom/tencent/mm/ui/base/TalkRoomPopupNav;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/tencent/mm/ui/base/eg;->gET:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->g(Lcom/tencent/mm/ui/base/TalkRoomPopupNav;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/eg;->gET:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-static {v1}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->f(Lcom/tencent/mm/ui/base/TalkRoomPopupNav;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 302
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    return-void
.end method
