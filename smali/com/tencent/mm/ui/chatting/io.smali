.class final Lcom/tencent/mm/ui/chatting/io;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic csq:Ljava/lang/String;

.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field final synthetic gQd:Ljava/lang/String;

.field final synthetic gQe:J


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3785
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/io;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/io;->gQd:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/io;->csq:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tencent/mm/ui/chatting/io;->gQe:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/io;->gQd:Ljava/lang/String;

    .line 3790
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/io;->csq:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3791
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/io;->gQd:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3792
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3793
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/io;->gQd:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3796
    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3797
    invoke-static {v0}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    .line 3798
    if-eqz v0, :cond_1

    .line 3799
    iget v0, v0, Lcom/tencent/mm/j/b;->type:I

    packed-switch v0, :pswitch_data_0

    .line 3816
    :cond_1
    :goto_0
    return-void

    .line 3801
    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->oo()I

    move-result v0

    if-nez v0, :cond_1

    .line 3804
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/model/al;->op()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3805
    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/io;->gQe:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 3806
    new-instance v0, Lcom/tencent/mm/ui/chatting/ip;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ip;-><init>(Lcom/tencent/mm/ui/chatting/io;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 3799
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
