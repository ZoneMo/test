.class final Lcom/tencent/mm/plugin/chatroom/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/au;


# instance fields
.field final synthetic cWM:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeResultUI;

.field final synthetic cWN:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeResultUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tencent/mm/plugin/chatroom/ui/l;->cWM:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeResultUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/chatroom/ui/l;->cWN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/ui/l;->cWM:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeResultUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeResultUI;->b(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeResultUI;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/chatroom/ui/m;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/chatroom/ui/m;-><init>(Lcom/tencent/mm/plugin/chatroom/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    return-void
.end method
