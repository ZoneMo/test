.class final Lcom/tencent/mm/ui/pluginapp/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

.field final synthetic hdr:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/tencent/mm/ui/pluginapp/u;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/pluginapp/u;->hdr:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/u;->hdr:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/u;->hdr:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/u;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04001f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 696
    return-void
.end method
