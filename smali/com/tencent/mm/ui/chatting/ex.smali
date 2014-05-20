.class final Lcom/tencent/mm/ui/chatting/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gNZ:Lcom/tencent/mm/ui/chatting/es;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/es;)V
    .locals 0
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ex;->gNZ:Lcom/tencent/mm/ui/chatting/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cf(J)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1009
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1010
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->oo()I

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1014
    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 1015
    const/4 v0, 0x1

    .line 1024
    :cond_0
    :goto_0
    return v0

    .line 1018
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 973
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/ui/chatting/ey;

    if-eqz v0, :cond_1

    .line 974
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ey;

    .line 976
    iget-wide v1, v0, Lcom/tencent/mm/ui/chatting/ey;->bMS:J

    .line 978
    invoke-static {v1, v2}, Lcom/tencent/mm/ui/chatting/ex;->cf(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 982
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x27f7

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->release()V

    .line 1004
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ex;->gNZ:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gKH:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    .line 1006
    :cond_1
    return-void

    .line 992
    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/ey;->bRv:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v1

    .line 993
    if-eqz v1, :cond_0

    .line 995
    sget-object v2, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0x276a

    const-string v4, "0,1"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 997
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 998
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/mm/model/al;->release()V

    .line 999
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sX()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/mm/ui/chatting/ey;->bMS:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ey;->clm:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/tencent/mm/model/al;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/j/b;Ljava/lang/String;)Lcom/tencent/mm/model/al;

    goto :goto_0
.end method
