.class final Lcom/tencent/mm/ui/chatting/jk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field final synthetic gQk:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5415
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/jk;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/chatting/jk;->gQk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5420
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/jk;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/jk;->gQk:Z

    if-eqz v0, :cond_0

    const-string v0, "fromBanner"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->wF(Ljava/lang/String;)V

    .line 5421
    return-void

    .line 5420
    :cond_0
    const-string v0, "fromPluginTalk"

    goto :goto_0
.end method
