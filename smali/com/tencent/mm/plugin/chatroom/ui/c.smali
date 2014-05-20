.class final Lcom/tencent/mm/plugin/chatroom/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cWA:Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI$1;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/mm/plugin/chatroom/ui/c;->cWA:Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/mm/plugin/chatroom/ui/c;->cWA:Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI$1;

    iget-object v0, v0, Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI$1;->cWz:Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;->a(Lcom/tencent/mm/plugin/chatroom/ui/RoomAnnouncementUI;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 96
    return-void
.end method
