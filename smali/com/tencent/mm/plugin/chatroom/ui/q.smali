.class final Lcom/tencent/mm/plugin/chatroom/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/au;


# instance fields
.field final synthetic cWN:Ljava/lang/String;

.field final synthetic cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/tencent/mm/plugin/chatroom/ui/q;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/chatroom/ui/q;->cWN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 324
    if-eqz p2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/ui/q;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;->g(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/chatroom/ui/r;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/chatroom/ui/r;-><init>(Lcom/tencent/mm/plugin/chatroom/ui/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 332
    :cond_0
    return-void
.end method
