.class final Lcom/tencent/mm/pluginsdk/ui/ao;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic flT:Lcom/tencent/mm/pluginsdk/ui/am;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/am;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/ao;->flT:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 2
    .parameter

    .prologue
    .line 770
    const-string v0, "repullemojiinfodesc"

    const-string v1, " call back notify smileygrid"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    check-cast p1, Lcom/tencent/mm/c/a/eu;

    .line 772
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 773
    iget-object v1, p1, Lcom/tencent/mm/c/a/eu;->bPD:Lcom/tencent/mm/c/a/ev;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ev;->bPE:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 774
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/ao;->flT:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/am;->a(Lcom/tencent/mm/pluginsdk/ui/am;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 775
    const/4 v0, 0x0

    return v0
.end method
