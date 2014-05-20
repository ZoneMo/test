.class final Lcom/tencent/mm/plugin/whatsnew/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

.field final synthetic ffG:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/d;->ffG:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/plugin/whatsnew/ui/e;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/whatsnew/ui/e;-><init>(Lcom/tencent/mm/plugin/whatsnew/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    return-void
.end method
