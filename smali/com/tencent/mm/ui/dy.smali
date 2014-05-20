.class final Lcom/tencent/mm/ui/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gpa:Lcom/tencent/mm/ui/RoomInfoUI;

.field final synthetic gpc:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/RoomInfoUI;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/tencent/mm/ui/dy;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/dy;->gpc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 994
    iget-object v0, p0, Lcom/tencent/mm/ui/dy;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->b(Lcom/tencent/mm/ui/RoomInfoUI;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/dy;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->b(Lcom/tencent/mm/ui/RoomInfoUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 995
    :cond_0
    const-string v0, "MicroMsg.RoomInfoUI"

    const-string v1, "quitChatRoom : invalid args"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/dy;->gpc:Z

    if-eqz v0, :cond_2

    .line 1001
    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    .line 1002
    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/gz;->bQV:Z

    .line 1003
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 1006
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/dy;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/RoomInfoUI;->b(Lcom/tencent/mm/ui/RoomInfoUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1007
    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "quitChatRoom : room["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/dy;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/RoomInfoUI;->b(Lcom/tencent/mm/ui/RoomInfoUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/dy;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->l(Lcom/tencent/mm/ui/RoomInfoUI;)V

    goto :goto_0
.end method
