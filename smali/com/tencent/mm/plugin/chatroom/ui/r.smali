.class final Lcom/tencent/mm/plugin/chatroom/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cWX:Lcom/tencent/mm/plugin/chatroom/ui/q;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/chatroom/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/tencent/mm/plugin/chatroom/ui/r;->cWX:Lcom/tencent/mm/plugin/chatroom/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/ui/r;->cWX:Lcom/tencent/mm/plugin/chatroom/ui/q;

    iget-object v0, v0, Lcom/tencent/mm/plugin/chatroom/ui/q;->cWW:Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/chatroom/ui/r;->cWX:Lcom/tencent/mm/plugin/chatroom/ui/q;

    iget-object v1, v1, Lcom/tencent/mm/plugin/chatroom/ui/q;->cWN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;->b(Lcom/tencent/mm/plugin/chatroom/ui/RoomUpgradeUI;Ljava/lang/String;)V

    .line 329
    return-void
.end method
