.class public final Lcom/tencent/mm/ui/chatting/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static gMc:Lcom/tencent/mm/ui/chatting/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/tencent/mm/ui/chatting/bl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/bl;-><init>(B)V

    sput-object v0, Lcom/tencent/mm/ui/chatting/bh;->gMc:Lcom/tencent/mm/ui/chatting/bl;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    const-string v0, "MicroMsg.ChattingEditModeRetransmitMsg"

    const-string v1, "do try retransmit fail, context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "MicroMsg.ChattingEditModeRetransmitMsg"

    const-string v1, "do try retransmit fail, username is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/chatting/bh;->gMc:Lcom/tencent/mm/ui/chatting/bl;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/bl;->gMg:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mm/ui/chatting/bh;->gMc:Lcom/tencent/mm/ui/chatting/bl;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/bl;->gMg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    :cond_2
    const-string v0, "MicroMsg.ChattingEditModeRetransmitMsg"

    const-string v1, "do try retransmit fail, select items empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    const-string v0, "MicroMsg.ChattingEditModeRetransmitMsg"

    const-string v1, "post to do job, send to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/tencent/mm/ui/chatting/fn;->gOp:Lcom/tencent/mm/sdk/platformtools/bu;

    new-instance v1, Lcom/tencent/mm/ui/chatting/bk;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/mm/ui/chatting/bk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;ZLcom/tencent/mm/ui/chatting/fn;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    sget-object v0, Lcom/tencent/mm/ui/chatting/bh;->gMc:Lcom/tencent/mm/ui/chatting/bl;

    iput-object v5, v0, Lcom/tencent/mm/ui/chatting/bl;->gMg:Ljava/util/List;

    sget-object v0, Lcom/tencent/mm/ui/chatting/bh;->gMc:Lcom/tencent/mm/ui/chatting/bl;

    iput-boolean v2, v0, Lcom/tencent/mm/ui/chatting/bl;->gJU:Z

    .line 35
    if-nez p0, :cond_0

    .line 36
    const-string v0, "MicroMsg.ChattingEditModeRetransmitMsg"

    const-string v1, "do retransmit fail, context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 39
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    :cond_1
    const-string v0, "MicroMsg.ChattingEditModeRetransmitMsg"

    const-string v1, "do retransmit fail, select item empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    if-nez p1, :cond_3

    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v2, "check contain invalid send to friend msg error, select item empty"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    .line 44
    const v0, 0x7f07020c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/chatting/bi;

    invoke-direct {v2, p1, p3, p0, p2}, Lcom/tencent/mm/ui/chatting/bi;-><init>(Ljava/util/List;Lcom/tencent/mm/ui/chatting/fn;Landroid/content/Context;Z)V

    invoke-static {p0, v0, v1, v2, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 43
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bg;->z(Lcom/tencent/mm/storage/ak;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bg;->A(Lcom/tencent/mm/storage/ak;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    const v4, -0x6ffffffa

    if-ne v0, v4, :cond_4

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    .line 59
    :cond_7
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mm/ui/chatting/bh;->b(Landroid/content/Context;Ljava/util/List;ZLcom/tencent/mm/ui/chatting/fn;)V

    goto :goto_0
.end method

.method static synthetic aIZ()Lcom/tencent/mm/ui/chatting/bl;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/mm/ui/chatting/bh;->gMc:Lcom/tencent/mm/ui/chatting/bl;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;ZLcom/tencent/mm/ui/chatting/fn;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p1}, Lcom/tencent/mm/ui/chatting/bg;->aC(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const v0, 0x7f07021e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/tencent/mm/ui/chatting/bj;

    invoke-direct {v2, p3}, Lcom/tencent/mm/ui/chatting/bj;-><init>(Lcom/tencent/mm/ui/chatting/fn;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/chatting/bh;->gMc:Lcom/tencent/mm/ui/chatting/bl;

    iput-object p1, v0, Lcom/tencent/mm/ui/chatting/bl;->gMg:Ljava/util/List;

    .line 80
    sget-object v0, Lcom/tencent/mm/ui/chatting/bh;->gMc:Lcom/tencent/mm/ui/chatting/bl;

    iput-boolean p2, v0, Lcom/tencent/mm/ui/chatting/bl;->gJU:Z

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/chatting/ChatMoreSelectUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/content/Context;Ljava/util/List;ZLcom/tencent/mm/ui/chatting/fn;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mm/ui/chatting/bh;->b(Landroid/content/Context;Ljava/util/List;ZLcom/tencent/mm/ui/chatting/fn;)V

    return-void
.end method

.method static synthetic d(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/bg;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->MP()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/bg;->c(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aBW()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aBT()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p2}, Lcom/tencent/mm/ui/chatting/bg;->A(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mm/ui/chatting/bg;->b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aCa()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mm/ui/chatting/bg;->c(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aCe()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {p2}, Lcom/tencent/mm/ui/chatting/bg;->z(Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->aCb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/bg;->d(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V

    goto :goto_0
.end method
