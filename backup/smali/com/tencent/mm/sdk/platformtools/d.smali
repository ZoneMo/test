.class public final Lcom/tencent/mm/sdk/platformtools/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 138
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/b;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/b;-><init>()V

    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/platformtools/a;-><init>()V

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
