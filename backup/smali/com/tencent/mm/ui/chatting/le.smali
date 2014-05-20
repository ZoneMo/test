.class final Lcom/tencent/mm/ui/chatting/le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic cGV:Landroid/content/Context;

.field final synthetic ctu:Lcom/tencent/mm/storage/ak;


# direct methods
.method constructor <init>(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/le;->cGV:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iget-wide v0, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_9

    .line 169
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iget-wide v1, v1, Lcom/tencent/mm/storage/ak;->field_msgId:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 172
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-gtz v1, :cond_8

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iget v1, v1, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    if-lez v1, :cond_8

    .line 173
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iget v1, v1, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    move-object v1, v0

    .line 176
    :goto_1
    if-nez v1, :cond_1

    .line 177
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "showAcceptImgConnector: try get imgInfo fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_2
    return-void

    .line 181
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v2

    if-lt v0, v2, :cond_7

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->vR()I

    move-result v0

    if-eqz v0, :cond_7

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 185
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    :goto_3
    move v5, v0

    .line 199
    :goto_4
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-static {v1}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    const-string v9, ""

    invoke-virtual {v0, v1, v4, v9}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    const-string v0, "MicroMsg.LongClickBrandServiceHelper"

    const-string v1, "connector click[img]: to[%s] fileName[%s]"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v3, v9, v8

    aput-object v4, v9, v7

    invoke-static {v0, v1, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v0, Lcom/tencent/mm/w/y;

    const/4 v1, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;)V

    .line 204
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 205
    invoke-static {}, Lcom/tencent/mm/model/ct;->vB()Lcom/tencent/mm/model/ct;

    move-result-object v0

    sget v1, Lcom/tencent/mm/model/ct;->cjQ:I

    invoke-virtual {v0, v1, v6}, Lcom/tencent/mm/model/ct;->a(I[Ljava/lang/Object;)V

    .line 213
    :cond_2
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28b8

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    aput-object v3, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/le;->cGV:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/le;->cGV:Landroid/content/Context;

    const v2, 0x7f0709d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_2

    :cond_3
    move v0, v8

    .line 185
    goto :goto_3

    .line 187
    :cond_4
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v0

    if-nez v0, :cond_5

    move v5, v8

    .line 188
    goto :goto_4

    .line 190
    :cond_5
    invoke-static {v1}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v5, v8

    .line 192
    goto :goto_4

    :cond_6
    move v5, v7

    .line 194
    goto :goto_4

    .line 216
    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/le;->cGV:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const-string v1, "img_gallery_msg_id"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iget-wide v4, v2, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 218
    const-string v1, "img_gallery_msg_svr_id"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iget v2, v2, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v1, "img_gallery_talker"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iget-object v2, v2, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "img_gallery_chatroom_name"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/le;->ctu:Lcom/tencent/mm/storage/ak;

    iget-object v2, v2, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "img_gallery_is_restransmit_after_download"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const-string v1, "img_gallery_directly_send_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "start_chatting_ui"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/le;->cGV:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_8
    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    move-object v0, v6

    goto/16 :goto_0
.end method
