.class public final Lcom/tencent/mm/ui/chatting/kc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gQw:Lcom/tencent/mm/ab/e;

.field private gQx:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kc;->gQx:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    return-void
.end method

.method private static p(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "eggresult.rep"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/a/c;->h(Ljava/lang/String;II)[B

    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    const-string v3, "MicroMsg.EggMgr"

    const-string v4, "data not null, parse it"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v3, Lcom/tencent/mm/ab/g;

    invoke-direct {v3}, Lcom/tencent/mm/ab/g;-><init>()V

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ab/g;->u([B)Lcom/tencent/mm/ab/g;

    move-result-object v0

    move-object v3, v0

    .line 96
    :goto_0
    iget-object v0, v3, Lcom/tencent/mm/ab/g;->cvR:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ab/f;

    .line 97
    iget v5, v0, Lcom/tencent/mm/ab/f;->cvK:I

    if-ne v5, p0, :cond_0

    .line 98
    if-eqz p1, :cond_3

    .line 101
    iget v4, v0, Lcom/tencent/mm/ab/f;->cvP:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/tencent/mm/ab/f;->cvP:I

    :goto_1
    move v0, v1

    .line 106
    :goto_2
    if-nez v0, :cond_1

    .line 109
    new-instance v0, Lcom/tencent/mm/ab/f;

    invoke-direct {v0}, Lcom/tencent/mm/ab/f;-><init>()V

    .line 110
    iput p0, v0, Lcom/tencent/mm/ab/f;->cvK:I

    .line 111
    if-eqz p1, :cond_4

    .line 112
    const/4 v4, 0x1

    iput v4, v0, Lcom/tencent/mm/ab/f;->cvP:I

    .line 116
    :goto_3
    iget-object v4, v3, Lcom/tencent/mm/ab/g;->cvR:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    invoke-virtual {v3}, Lcom/tencent/mm/ab/g;->toByteArray()[B

    move-result-object v0

    .line 119
    const-string v4, "MicroMsg.EggMgr"

    const-string v5, "report list is %s, then save it"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "eggresult.rep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    invoke-static {v3, v0, v4}, Lcom/tencent/mm/a/c;->a(Ljava/lang/String;[BI)I

    .line 125
    :goto_4
    return-void

    .line 92
    :cond_2
    const-string v0, "MicroMsg.EggMgr"

    const-string v3, "data is null, new one"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/tencent/mm/ab/g;

    invoke-direct {v0}, Lcom/tencent/mm/ab/g;-><init>()V

    move-object v3, v0

    goto :goto_0

    .line 103
    :cond_3
    iget v4, v0, Lcom/tencent/mm/ab/f;->cvQ:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/tencent/mm/ab/f;->cvQ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v3, "MicroMsg.EggMgr"

    const-string v4, "statistics crash : %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 114
    :cond_4
    const/4 v4, 0x1

    :try_start_1
    iput v4, v0, Lcom/tencent/mm/ab/f;->cvQ:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/app/Activity;Z)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x10a0c

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kc;->gQw:Lcom/tencent/mm/ab/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eggingfo.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/a/c;->h(Ljava/lang/String;II)[B

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.EggMgr"

    const-string v1, "data is null, parse EggList from config file fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->b(Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->M(J)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    const-wide/32 v5, 0x1499700

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FC()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/chatting/kd;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/kd;-><init>(Lcom/tencent/mm/ui/chatting/kc;)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kc;->gQw:Lcom/tencent/mm/ab/e;

    if-nez v0, :cond_3

    .line 31
    const-string v0, "MicroMsg.EggMgr"

    const-string v1, "eggList is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 67
    :goto_1
    return v0

    .line 28
    :cond_2
    :try_start_1
    new-instance v1, Lcom/tencent/mm/ab/e;

    invoke-direct {v1}, Lcom/tencent/mm/ab/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ab/e;->t([B)Lcom/tencent/mm/ab/e;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kc;->gQw:Lcom/tencent/mm/ab/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.EggMgr"

    const-string v2, "init crash : %s"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_3
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v0

    long-to-int v5, v0

    .line 35
    const-string v0, "MicroMsg.EggMgr"

    const-string v1, "cursecond is %d, getEggList.size is %d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/kc;->gQw:Lcom/tencent/mm/ab/e;

    iget-object v6, v6, Lcom/tencent/mm/ab/e;->cvN:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kc;->gQw:Lcom/tencent/mm/ab/e;

    iget-object v0, v0, Lcom/tencent/mm/ab/e;->cvN:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ab/d;

    .line 37
    iget-object v1, v0, Lcom/tencent/mm/ab/d;->cvI:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 42
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/kc;->gQx:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    if-nez v2, :cond_7

    .line 45
    const v2, 0x7f0a01a9

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 46
    if-eqz v2, :cond_6

    .line 47
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 48
    :cond_6
    const v2, 0x7f0a022e

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/kc;->gQx:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    .line 50
    :cond_7
    iget v2, v0, Lcom/tencent/mm/ab/d;->cvL:I

    if-gt v2, v5, :cond_8

    iget v2, v0, Lcom/tencent/mm/ab/d;->cvM:I

    if-gt v5, v2, :cond_8

    .line 51
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/kc;->gQx:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    iget v5, v0, Lcom/tencent/mm/ab/d;->cvJ:I

    invoke-virtual {v2, p2, v5}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->j(Landroid/app/Activity;I)V

    .line 52
    iget v2, v0, Lcom/tencent/mm/ab/d;->cvK:I

    invoke-static {v2, p3}, Lcom/tencent/mm/ui/chatting/kc;->p(IZ)V

    .line 53
    const-string v2, "MicroMsg.EggMgr"

    const-string v5, "match keyWord[%s], time[%d - %d]"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v3

    iget v1, v0, Lcom/tencent/mm/ab/d;->cvL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    iget v0, v0, Lcom/tencent/mm/ab/d;->cvM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v2, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    .line 54
    goto/16 :goto_1

    .line 55
    :cond_8
    iget v2, v0, Lcom/tencent/mm/ab/d;->cvL:I

    iget v5, v0, Lcom/tencent/mm/ab/d;->cvM:I

    if-ne v2, v5, :cond_9

    iget v2, v0, Lcom/tencent/mm/ab/d;->cvL:I

    if-nez v2, :cond_9

    .line 56
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/kc;->gQx:Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    iget v5, v0, Lcom/tencent/mm/ab/d;->cvJ:I

    invoke-virtual {v2, p2, v5}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->j(Landroid/app/Activity;I)V

    .line 57
    iget v0, v0, Lcom/tencent/mm/ab/d;->cvK:I

    invoke-static {v0, p3}, Lcom/tencent/mm/ui/chatting/kc;->p(IZ)V

    .line 58
    const-string v0, "MicroMsg.EggMgr"

    const-string v2, "match keyWord[%s], time[0 - 0]"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v0, v2, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    .line 59
    goto/16 :goto_1

    .line 61
    :cond_9
    const-string v2, "MicroMsg.EggMgr"

    const-string v5, "match keyWord[%s], but not match time[%d - %d]"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v3

    iget v1, v0, Lcom/tencent/mm/ab/d;->cvL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    iget v0, v0, Lcom/tencent/mm/ab/d;->cvM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v2, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 62
    goto/16 :goto_1

    .line 66
    :cond_a
    const-string v0, "MicroMsg.EggMgr"

    const-string v1, "no match"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 67
    goto/16 :goto_1
.end method
