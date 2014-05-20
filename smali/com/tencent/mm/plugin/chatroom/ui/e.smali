.class final Lcom/tencent/mm/plugin/chatroom/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic cWz:Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tencent/mm/plugin/chatroom/ui/e;->cWz:Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/ui/e;->cWz:Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;->setResult(I)V

    .line 119
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/ui/e;->cWz:Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;->finish()V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
