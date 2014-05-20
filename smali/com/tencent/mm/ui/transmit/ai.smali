.class public final Lcom/tencent/mm/ui/transmit/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 81
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 82
    :cond_0
    const-string v0, "MicroMsg.SendMsgMgr"

    const-string v1, "sendImg: args error, toUser[%s], fileName[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    const-string v0, "MicroMsg.SendMsgMgr"

    const-string v1, "sdcard not ready, send video fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const v0, 0x7f070619

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v0, Lcom/tencent/mm/w/y;

    const/4 v1, 0x4

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 94
    invoke-static {}, Lcom/tencent/mm/model/ct;->vB()Lcom/tencent/mm/model/ct;

    move-result-object v0

    sget v1, Lcom/tencent/mm/model/ct;->cjQ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/ct;->a(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string v0, "MicroMsg.SendMsgMgr"

    const-string v1, "send vedio context is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 49
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 50
    :cond_1
    const-string v0, "MicroMsg.SendMsgMgr"

    const-string v1, "send vedio args error, toUser[%s] fileName[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    const-string v0, "MicroMsg.SendMsgMgr"

    const-string v1, "sdcard not ready, send video fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const v0, 0x7f070619

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 58
    :cond_3
    new-instance v0, Lcom/tencent/mm/ui/transmit/l;

    invoke-direct {v0}, Lcom/tencent/mm/ui/transmit/l;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/transmit/aj;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/transmit/aj;-><init>(Lcom/tencent/mm/ui/transmit/ai;Lcom/tencent/mm/ui/transmit/l;)V

    invoke-static {p1, v1, v4, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    .line 66
    iput-object p1, v0, Lcom/tencent/mm/ui/transmit/l;->context:Landroid/content/Context;

    .line 67
    iput-object p3, v0, Lcom/tencent/mm/ui/transmit/l;->rD:Ljava/lang/String;

    .line 68
    iput-object p4, v0, Lcom/tencent/mm/ui/transmit/l;->hrx:Ljava/lang/String;

    .line 69
    iput-object v1, v0, Lcom/tencent/mm/ui/transmit/l;->dID:Landroid/app/Dialog;

    .line 70
    iput-object p2, v0, Lcom/tencent/mm/ui/transmit/l;->bPx:Ljava/lang/String;

    .line 71
    iput-boolean v3, v0, Lcom/tencent/mm/ui/transmit/l;->hrz:Z

    .line 72
    iput v4, v0, Lcom/tencent/mm/ui/transmit/l;->hrl:I

    .line 73
    iput p5, v0, Lcom/tencent/mm/ui/transmit/l;->cAX:I

    .line 74
    iput-boolean v3, v0, Lcom/tencent/mm/ui/transmit/l;->hry:Z

    .line 75
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/transmit/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, -0x1

    const/4 v1, 0x0

    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v0, "MicroMsg.SendMsgMgr"

    const-string v1, "sendAppMsg: args error, toUser is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p3}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v2

    .line 105
    if-nez v2, :cond_1

    .line 106
    const-string v0, "MicroMsg.SendMsgMgr"

    const-string v1, "send: parse app msg content return null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/a;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/model/app/a;-><init>()V

    .line 110
    iget-object v3, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/cj;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 112
    cmp-long v5, v3, v5

    if-eqz v5, :cond_5

    .line 113
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v0}, Lcom/tencent/mm/pluginsdk/model/app/b;->b(JLcom/tencent/mm/sdk/e/ad;)Z

    .line 115
    iget-wide v5, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->gfy:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_3

    .line 116
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/model/app/b;->qk(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_mediaSvrId:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v0, v1

    .line 129
    :cond_3
    :goto_1
    const-string v1, ""

    .line 130
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_fileFullPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_fileFullPath:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "da_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FD()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_fileFullPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_4
    move-object v0, v1

    .line 135
    invoke-static {v2}, Lcom/tencent/mm/j/b;->a(Lcom/tencent/mm/j/b;)Lcom/tencent/mm/j/b;

    move-result-object v1

    .line 136
    const/4 v3, 0x3

    iput v3, v1, Lcom/tencent/mm/j/b;->cgG:I

    .line 137
    iget-object v3, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/mm/j/b;->appName:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0, p2}, Lcom/tencent/mm/pluginsdk/model/app/s;->a(Lcom/tencent/mm/j/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    goto/16 :goto_0

    .line 122
    :cond_5
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/model/app/b;->qk(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_mediaSvrId:Ljava/lang/String;

    iget-object v4, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_6
    move-object v0, v1

    .line 124
    goto :goto_1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 36
    :cond_0
    const-string v0, "MicroMsg.SendMsgMgr"

    const-string v1, "send msg args error, toUser[%s] content[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v0, Lcom/tencent/mm/z/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/mm/z/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0
.end method
