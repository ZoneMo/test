.class public final Lcom/tencent/mm/ui/chatting/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Lcom/tencent/mm/storage/ak;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-nez p0, :cond_0

    .line 56
    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v2, "check is game msg error, msg is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/bv;->dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_1
    invoke-static {v0}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v1, "parse app message content fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 68
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, v0, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/k;->apQ()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    const-string v0, "emoji"

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/u;->uk(Ljava/lang/String;)Lcom/tencent/mm/storage/u;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/tencent/mm/storage/u;->yK()Ljava/lang/String;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_2
    if-nez v0, :cond_3

    .line 259
    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v1, "showAcceptEmojiConnector: filePath is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Lcom/tencent/mm/pluginsdk/i;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    const-string v0, "text"

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p2, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/tencent/mm/ui/chatting/bg;->c(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    :cond_1
    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v1, "Transfer text erro: content null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apr()Lcom/tencent/mm/pluginsdk/r;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/model/w;->dd(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/tencent/mm/pluginsdk/r;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 234
    if-nez p0, :cond_0

    .line 235
    const-string v2, "MicroMsg.ChattingEditModeLogic"

    const-string v3, "send %s fail, context is null"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {v2, v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_0
    return v0

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    const-string v2, "MicroMsg.ChattingEditModeLogic"

    const-string v3, "send %s fail, username is null"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {v2, v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_1
    if-nez p2, :cond_2

    .line 243
    const-string v2, "MicroMsg.ChattingEditModeLogic"

    const-string v3, "send %s fail, msg is null"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {v2, v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 246
    goto :goto_0
.end method

.method public static aC(Ljava/util/List;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0xc7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    if-nez p0, :cond_0

    .line 161
    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v2, "check contain undownload image or video error, select item empty"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 194
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 165
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v3

    if-ne v3, v2, :cond_2

    move v0, v1

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 169
    const/4 v3, 0x0

    .line 170
    iget-wide v5, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    cmp-long v5, v5, v8

    if-lez v5, :cond_3

    .line 171
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    iget-wide v5, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    long-to-int v5, v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v3

    .line 174
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-gtz v5, :cond_8

    :cond_4
    iget v5, v0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    if-lez v5, :cond_8

    .line 175
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    iget v0, v0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v3, v0}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 178
    :goto_1
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->vR()I

    move-result v5

    if-lt v3, v5, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->vR()I

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    move v0, v2

    .line 182
    goto :goto_0

    .line 185
    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->MP()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ai/r;->gW(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v3

    if-eq v3, v7, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v0

    if-eq v0, v7, :cond_1

    move v0, v2

    .line 189
    goto :goto_0

    :cond_7
    move v0, v1

    .line 194
    goto :goto_0

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method public static aIY()Ljava/util/List;
    .locals 6

    .prologue
    .line 208
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->cT(I)Ljava/util/List;

    move-result-object v0

    .line 212
    const-string v1, "MicroMsg.ChattingEditModeLogic"

    const-string v2, "get selected accept list, size %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 266
    const-string v0, "image"

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x0

    .line 270
    iget-wide v1, p2, Lcom/tencent/mm/storage/ak;->field_msgId:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 271
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-wide v1, p2, Lcom/tencent/mm/storage/ak;->field_msgId:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 274
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5

    :cond_3
    iget v1, p2, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    if-lez v1, :cond_5

    .line 275
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget v1, p2, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    move-object v1, v0

    .line 278
    :goto_1
    if-eqz v1, :cond_0

    .line 284
    const/4 v4, 0x0

    .line 285
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    invoke-static {v1}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SERVERID://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 288
    const/4 v4, 0x1

    .line 309
    :cond_4
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-static {v1}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v5, ""

    invoke-virtual {v0, v2, v3, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v2

    const-string v5, "th_"

    const-string v6, ""

    invoke-virtual {v0, v2, v5, v6}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apr()Lcom/tencent/mm/pluginsdk/r;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AN()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    const-string v0, "appmsg"

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p2, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/tencent/mm/ui/chatting/bg;->c(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apr()Lcom/tencent/mm/pluginsdk/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v2, v0}, Lcom/tencent/mm/pluginsdk/r;->a(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v1, "isSend %d groupChat %B content %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 201
    invoke-static {p0}, Lcom/tencent/mm/model/bv;->dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    const-string v0, "video"

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v0

    .line 328
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DQ()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DT()Ljava/lang/String;

    move-result-object v5

    const-string v0, "MicroMsg.ChattingEditModeLogic"

    const-string v3, "copy video fileName %s userName %s export %d videoLength"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v3, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/r;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "MicroMsg.ChattingEditModeLogic"

    const-string v9, "copy video: srcFullPath[%s] destFullPath[%s] srcThumbPath[%s] destThumbPath[%s]"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    invoke-static {v8, v9, v10}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ai/v;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hf(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    const-string v0, "friendcard"

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p2, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/tencent/mm/ui/chatting/bg;->c(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apr()Lcom/tencent/mm/pluginsdk/r;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-interface {v1, p1, v0, v2}, Lcom/tencent/mm/pluginsdk/r;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    const-string v0, "location"

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mm/ui/chatting/bg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/storage/ak;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p2, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apr()Lcom/tencent/mm/pluginsdk/r;

    move-result-object v1

    const/16 v2, 0x30

    invoke-interface {v1, p1, v0, v2}, Lcom/tencent/mm/pluginsdk/r;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static z(Lcom/tencent/mm/storage/ak;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 38
    if-nez p0, :cond_1

    .line 39
    const-string v1, "MicroMsg.ChattingEditModeLogic"

    const-string v2, "check is store emoji error, msg is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/w;->ggY:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/w;->ggX:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/w;->ggW:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v2

    sget v3, Lcom/tencent/mm/storage/y;->ghl:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v1

    sget v2, Lcom/tencent/mm/storage/y;->ghk:I

    if-ne v1, v2, :cond_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
