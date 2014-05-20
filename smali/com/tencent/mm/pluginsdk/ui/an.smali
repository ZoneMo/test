.class final Lcom/tencent/mm/pluginsdk/ui/an;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic flT:Lcom/tencent/mm/pluginsdk/ui/am;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/am;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/an;->flT:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 750
    const-string v0, "repullemojiinfodesc"

    const-string v1, "notify smileygrid"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 752
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/an;->flT:Lcom/tencent/mm/pluginsdk/ui/am;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->f(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/an;->flT:Lcom/tencent/mm/pluginsdk/ui/am;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->f(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->arw()Lcom/tencent/mm/pluginsdk/ui/al;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/al;->a(Lcom/tencent/mm/pluginsdk/ui/al;Ljava/lang/String;)Ljava/lang/String;

    .line 757
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->arw()Lcom/tencent/mm/pluginsdk/ui/al;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/al;->c(Lcom/tencent/mm/pluginsdk/ui/al;)Z

    .line 758
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/an;->flT:Lcom/tencent/mm/pluginsdk/ui/am;

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/am;->update()V

    .line 759
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/an;->flT:Lcom/tencent/mm/pluginsdk/ui/am;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/am;->flM:Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;->i(Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
