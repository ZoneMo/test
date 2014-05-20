.class public final Lcom/tencent/mm/ui/tools/bs;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/n/n;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# instance fields
.field private cqM:[I

.field private dmR:Ljava/util/HashMap;

.field private hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

.field private hjn:Lcom/tencent/mm/ui/tools/bt;

.field private hjo:Lcom/tencent/mm/ui/tools/bu;

.field private hjp:Z

.field private hjq:Ljava/lang/String;

.field private hjr:Z

.field private hjs:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;JLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/ui/tools/bs;->dmR:Ljava/util/HashMap;

    .line 77
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/bs;->hjp:Z

    .line 79
    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjr:Z

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MicroMsg.ImageGalleryAdapter, invalid argument, context = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentMsgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", talker = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 84
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    .line 85
    new-instance v0, Lcom/tencent/mm/ui/tools/bt;

    invoke-direct {v0, p2, p3, p4}, Lcom/tencent/mm/ui/tools/bt;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjn:Lcom/tencent/mm/ui/tools/bt;

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjn:Lcom/tencent/mm/ui/tools/bt;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/bt;->PG()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    .line 87
    iput-boolean p5, p0, Lcom/tencent/mm/ui/tools/bs;->hjp:Z

    .line 88
    iput-object p6, p0, Lcom/tencent/mm/ui/tools/bs;->hjq:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/tencent/mm/ui/tools/bu;

    new-instance v1, Lcom/tencent/mm/model/dx;

    invoke-direct {v1, p0}, Lcom/tencent/mm/model/dx;-><init>(Lcom/tencent/mm/n/n;)V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/tools/bu;-><init>(Lcom/tencent/mm/n/m;Lcom/tencent/mm/n/n;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjo:Lcom/tencent/mm/ui/tools/bu;

    .line 90
    return-void

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public static S(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;
    .locals 5
    .parameter

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 546
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 550
    :cond_0
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 555
    :cond_1
    :goto_0
    return-object v0

    .line 553
    :cond_2
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 138
    :cond_0
    const-string v1, "MicroMsg.ImageGalleryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "doRestransmitMsg fail, msgLocalId = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", imgLocalId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_2
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_3
    invoke-static {p1, p2}, Lcom/tencent/mm/ui/tools/bs;->b(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 144
    :cond_4
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doRestransmitMsg fail, bigImgPath is null, msgLocalId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imgLocalId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 148
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/bs;->hjq:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 149
    const-string v1, "MicroMsg.ImageGalleryAdapter"

    const-string v2, "directly send user is empty, select one"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const-class v3, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v2, "Retr_File_Name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v0, "Retr_Msg_Id"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    const-string v0, "Retr_Msg_Type"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v0, "Retr_Compress_Type"

    invoke-static {p1, p2}, Lcom/tencent/mm/ui/tools/bs;->d(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 157
    :cond_6
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    const-string v2, "directly send user %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/bs;->hjq:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 160
    invoke-virtual {p2}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v7

    :goto_3
    move v5, v0

    .line 174
    :goto_4
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v6, ""

    invoke-virtual {v0, v3, v4, v6}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 177
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    const-string v3, "connector click[img]: to[%s] fileName[%s]"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    aput-object v4, v6, v7

    invoke-static {v0, v3, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v0, Lcom/tencent/mm/w/y;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/bs;->hjq:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;)V

    .line 179
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 180
    invoke-static {}, Lcom/tencent/mm/model/ct;->vB()Lcom/tencent/mm/model/ct;

    move-result-object v0

    sget v2, Lcom/tencent/mm/model/ct;->cjQ:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/model/ct;->a(I[Ljava/lang/Object;)V

    .line 182
    :cond_7
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjr:Z

    if-eqz v0, :cond_c

    .line 183
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const-class v3, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    const-string v2, "Chat_User"

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/bs;->hjq:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->startActivity(Landroid/content/Intent;)V

    .line 191
    :goto_5
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x28b8

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bs;->hjq:Ljava/lang/String;

    aput-object v1, v3, v9

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    move v0, v8

    .line 160
    goto :goto_3

    .line 162
    :cond_9
    invoke-virtual {p2}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v0

    if-nez v0, :cond_a

    move v5, v8

    .line 163
    goto/16 :goto_4

    .line 165
    :cond_a
    invoke-static {p2}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v5, v8

    .line 167
    goto/16 :goto_4

    :cond_b
    move v5, v7

    .line 169
    goto/16 :goto_4

    .line 189
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v3, 0x7f0709d8

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_5
.end method

.method private static a(Lcom/tencent/mm/ui/tools/bw;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 416
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    const-string v1, "edw dealFail"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bw;->hjB:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bw;->hjA:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bw;->hgr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    return-void
.end method

.method private static a(Lcom/tencent/mm/ui/tools/bw;Lcom/tencent/mm/w/e;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 393
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "edw dealDownloading, isHd = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bw;->hgr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bw;->hjA:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bw;->hjB:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    invoke-static {p1}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v3

    .line 400
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->vR()I

    move-result v0

    .line 401
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->getOffset()I

    move-result v4

    .line 402
    if-eqz v0, :cond_1

    mul-int/lit8 v4, v4, 0x64

    div-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    .line 403
    :goto_0
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/bw;->hjC:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 404
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bw;->hjE:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AJ()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/h;->su(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bw;->hjF:Landroid/widget/ImageView;

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 402
    goto :goto_0

    :cond_2
    move v1, v2

    .line 404
    goto :goto_1

    .line 411
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bw;->hjF:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method private a(Lcom/tencent/mm/ui/tools/bw;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;I)Z
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    const-string v3, "MicroMsg.ImageGalleryAdapter"

    const-string v4, "edw dealSucc"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static/range {p2 .. p3}, Lcom/tencent/mm/ui/tools/bs;->b(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v7

    .line 378
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 379
    :cond_0
    const/4 v3, 0x0

    .line 389
    :goto_0
    return v3

    .line 381
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/bw;->hjA:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/bw;->hgr:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/bw;->hjB:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/bw;->dmT:Lcom/tencent/mm/ui/base/MultiTouchImageView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/tools/bw;->hjA:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/tencent/mm/ui/tools/bw;->dmT:Lcom/tencent/mm/ui/base/MultiTouchImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v4, 0x7f0a029f

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v10

    const-string v3, "MicroMsg.ImageGalleryAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scrWidth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scrHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "MicroMsg.ImageGalleryAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSuitableBmp fail, file does not exist, filePath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/mm/ui/tools/bs;->hjp:Z

    if-eqz v3, :cond_2

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)V

    .line 385
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/tencent/mm/ui/tools/bs;->hjp:Z

    .line 389
    :cond_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 381
    :cond_3
    const/16 v5, 0x3c0

    const/16 v4, 0x3c0

    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v7, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget v3, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v6}, Lcom/tencent/mm/platformtools/au;->T(II)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v6, 0x1e0

    if-le v3, v6, :cond_8

    const/4 v3, 0x1

    :goto_2
    iget v6, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v12, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6, v12}, Lcom/tencent/mm/platformtools/au;->S(II)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v12, 0x1e0

    if-le v6, v12, :cond_9

    const/4 v6, 0x1

    :goto_3
    if-nez v3, :cond_5

    if-eqz v6, :cond_12

    :cond_5
    iget v3, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_4
    invoke-static {v7}, Lcom/tencent/mm/platformtools/c;->hH(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_6

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_7

    :cond_6
    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :cond_7
    const/4 v6, 0x0

    invoke-static {v7, v3, v4, v6}, Lcom/tencent/mm/sdk/platformtools/h;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_a

    const-string v3, "MicroMsg.ImageGalleryAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSuitableBmp fail, temBmp is null, filePath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    int-to-float v4, v5

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/h;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    const/high16 v5, 0x3f80

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    const-string v6, "MicroMsg.ImageGalleryAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "whDiv is "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hwDiv is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v6, 0x4000

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_c

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v6, 0x1e0

    if-lt v4, v6, :cond_c

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v9

    div-float/2addr v3, v4

    int-to-float v4, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v5, v3

    const-wide/high16 v12, 0x3ff0

    cmpl-double v3, v5, v12

    if-lez v3, :cond_b

    invoke-virtual {v11, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    int-to-float v3, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_5
    invoke-virtual {v8, v11}, Lcom/tencent/mm/ui/base/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Lcom/tencent/mm/ui/base/MultiTouchImageView;->bk(II)V

    invoke-virtual {v8, v7}, Lcom/tencent/mm/ui/base/MultiTouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/ui/tools/bs;->dmR:Ljava/util/HashMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MicroMsg.ImageGalleryAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bitmapCache, put to map, bmpCacheKey = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v9, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    :cond_c
    const/high16 v4, 0x4000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/16 v4, 0x1e0

    if-lt v3, v4, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x43f0

    div-float/2addr v3, v4

    const/high16 v4, 0x43f0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v5, v3

    const-wide/high16 v12, 0x3ff0

    cmpl-double v5, v5, v12

    if-lez v5, :cond_d

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    add-int/lit16 v3, v10, -0x1e0

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    :cond_d
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v10, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const-string v4, "MicroMsg.ImageGalleryAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " offsety "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    :cond_e
    int-to-float v3, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    cmpg-float v6, v3, v4

    if-gez v6, :cond_f

    :goto_6
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v6, v9

    div-float/2addr v4, v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    int-to-float v12, v10

    div-float/2addr v6, v12

    cmpl-float v12, v4, v6

    if-lez v12, :cond_10

    :goto_7
    float-to-double v12, v4

    const-wide/high16 v14, 0x3ff0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_11

    invoke-virtual {v11, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_8
    int-to-float v4, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    sub-float v3, v5, v3

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    invoke-virtual {v11, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5

    :cond_f
    move v3, v4

    goto :goto_6

    :cond_10
    move v4, v6

    goto :goto_7

    :cond_11
    move v3, v5

    goto :goto_8

    :cond_12
    move v3, v4

    move v4, v5

    goto/16 :goto_4
.end method

.method private static b(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 562
    invoke-static {p1}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-object v0

    .line 569
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 575
    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 580
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 582
    invoke-static {p1}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v2

    .line 583
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 584
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_4
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, v0, v3, v4}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move-object v0, v1

    .line 593
    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 595
    goto :goto_0
.end method

.method public static c(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 602
    invoke-static {p1}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-object v0

    .line 609
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    :cond_2
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->fX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public static d(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 630
    invoke-static {p1}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v2

    .line 631
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v3, v2, v4, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 632
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v3}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 633
    goto :goto_0

    :cond_2
    move v0, v1

    .line 635
    goto :goto_0

    .line 638
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 639
    invoke-virtual {p1}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 640
    invoke-static {p1}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v2

    .line 641
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v3, v2, v4, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 645
    goto :goto_0

    :cond_5
    move v0, v1

    .line 648
    goto :goto_0
.end method


# virtual methods
.method public final a(IILcom/tencent/mm/n/x;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 466
    check-cast p3, Lcom/tencent/mm/w/u;

    invoke-virtual {p3}, Lcom/tencent/mm/w/u;->AT()I

    move-result v0

    .line 467
    const-string v1, "MicroMsg.ImageGalleryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSceneProgressEnd, pos = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 470
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    const-string v1, "onSceneProgressEnd, pos is -1"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNr()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/bw;

    .line 476
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    mul-int/lit8 v1, p1, 0x64

    div-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    .line 477
    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 478
    iget-object v3, v0, Lcom/tencent/mm/ui/tools/bw;->hjC:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 479
    iget-object v0, v0, Lcom/tencent/mm/ui/tools/bw;->hjD:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v4, 0x7f07007d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 476
    goto :goto_1
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 486
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_0

    .line 525
    :goto_0
    return-void

    .line 490
    :cond_0
    check-cast p4, Lcom/tencent/mm/w/u;

    invoke-virtual {p4}, Lcom/tencent/mm/w/u;->AT()I

    move-result v1

    .line 491
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSceneEnd, pos = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 494
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    const-string v1, "onSceneEnd, pos is -1"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_4

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNr()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->ep(Z)V

    .line 501
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->az(Z)V

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 505
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd, errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/bs;->notifyDataSetChanged()V

    goto :goto_0

    .line 511
    :cond_4
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selectedPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNr()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNr()I

    move-result v0

    if-ne v1, v0, :cond_5

    .line 513
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/bw;

    .line 514
    iget-object v2, v0, Lcom/tencent/mm/ui/tools/bw;->hjC:Landroid/widget/ProgressBar;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/bw;->hjC:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 515
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->ep(Z)V

    .line 516
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->az(Z)V

    .line 517
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 518
    iput v4, v0, Landroid/os/Message;->what:I

    .line 519
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 520
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v2, v2, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 523
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 524
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/bs;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public final aNk()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjs:Z

    .line 662
    return-void
.end method

.method public final detach()V
    .locals 4

    .prologue
    .line 528
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjo:Lcom/tencent/mm/ui/tools/bu;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjo:Lcom/tencent/mm/ui/tools/bu;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/bu;->detach()V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->dmR:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->dmR:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->dmR:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 535
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 536
    const-string v2, "MicroMsg.ImageGalleryAdapter"

    const-string v3, "detach, bmp recycled!"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 541
    :cond_2
    return-void
.end method

.method public final eo(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/tencent/mm/ui/tools/bs;->hjr:Z

    .line 109
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjn:Lcom/tencent/mm/ui/tools/bt;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/bt;->PG()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjn:Lcom/tencent/mm/ui/tools/bt;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/bt;->oc(I)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 241
    if-nez p2, :cond_3

    .line 242
    new-instance v2, Lcom/tencent/mm/ui/tools/bw;

    invoke-direct {v2}, Lcom/tencent/mm/ui/tools/bw;-><init>()V

    .line 243
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v1, 0x7f030149

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 245
    const v0, 0x7f0a0019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hjA:Landroid/widget/LinearLayout;

    .line 246
    const v0, 0x7f0a001a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MultiTouchImageView;

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->dmT:Lcom/tencent/mm/ui/base/MultiTouchImageView;

    .line 247
    iget-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->dmT:Lcom/tencent/mm/ui/base/MultiTouchImageView;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/n;->J(Landroid/view/View;)V

    .line 249
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getView, convertView hashcode = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", imageIv hashCode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/mm/ui/tools/bw;->dmT:Lcom/tencent/mm/ui/base/MultiTouchImageView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->dmR:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->dmR:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 253
    if-nez v0, :cond_0

    .line 254
    const-string v3, "MicroMsg.ImageGalleryAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oldBmp is null, bitmapCache, get from map, bmpCacheKey = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    const-string v3, "MicroMsg.ImageGalleryAdapter"

    const-string v4, "getView, oldBmp recycled!"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    :cond_1
    const v0, 0x7f0a0435

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hgr:Landroid/widget/LinearLayout;

    .line 264
    const v0, 0x7f0a0208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hjC:Landroid/widget/ProgressBar;

    .line 265
    const v0, 0x7f0a032b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hjD:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f0a0437

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hjE:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f0a0436

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hjF:Landroid/widget/ImageView;

    .line 269
    const v0, 0x7f0a0438

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hjB:Landroid/widget/LinearLayout;

    .line 271
    iget-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hgr:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hjB:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, v2, Lcom/tencent/mm/ui/tools/bw;->hjA:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v2

    .line 279
    :goto_0
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/tencent/mm/storage/ak;

    .line 290
    invoke-static {v3}, Lcom/tencent/mm/ui/tools/bs;->S(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;

    move-result-object v8

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    aget v0, v0, p1

    .line 293
    const-string v2, "MicroMsg.ImageGalleryAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView, pos = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    packed-switch v0, :pswitch_data_0

    .line 323
    :cond_2
    :goto_1
    return-object p2

    .line 277
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/bw;

    move-object v7, v0

    goto :goto_0

    .line 297
    :pswitch_0
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    const-string v2, "edw dealDownloadOrSucc"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.ImageGalleryAdapter"

    const-string v2, "deal LoadFail"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aCq()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    invoke-static {v7}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/ui/tools/bw;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->aCq()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v8}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-lez v4, :cond_6

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v9, ""

    invoke-virtual {v4, v5, v6, v9}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v2, v0, v4, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    invoke-direct {p0, v7, v3, v8, v1}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/ui/tools/bw;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjo:Lcom/tencent/mm/ui/tools/bu;

    invoke-virtual {v8}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    const/4 v5, 0x0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ui/tools/bu;->a(JJII)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    const/4 v0, 0x0

    invoke-static {v7, v8, v0}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/ui/tools/bw;Lcom/tencent/mm/w/e;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkh:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkh:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 302
    :pswitch_1
    invoke-direct {p0, v7, v3, v8, v1}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/ui/tools/bw;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;I)Z

    goto/16 :goto_1

    .line 308
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v7, v8, v0}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/ui/tools/bw;Lcom/tencent/mm/w/e;Z)V

    goto/16 :goto_1

    .line 313
    :pswitch_3
    const/4 v0, 0x1

    invoke-static {v7, v8, v0}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/ui/tools/bw;Lcom/tencent/mm/w/e;Z)V

    goto/16 :goto_1

    .line 318
    :pswitch_4
    invoke-static {v7}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/ui/tools/bw;)V

    .line 319
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final nX(I)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 112
    const-string v0, "MicroMsg.ImageGalleryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "viewHdImg, pos = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/tencent/mm/storage/ak;

    .line 115
    invoke-static {v3}, Lcom/tencent/mm/ui/tools/bs;->S(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 117
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-nez v0, :cond_3

    .line 118
    :cond_0
    const-string v2, "MicroMsg.ImageGalleryAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "viewHdImg fail, msgLocalId = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", imgLocalId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_2
    return-void

    .line 118
    :cond_1
    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    const/4 v2, 0x2

    aput v2, v0, p1

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->ep(Z)V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->az(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/bs;->notifyDataSetChanged()V

    .line 127
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjo:Lcom/tencent/mm/ui/tools/bu;

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    const/4 v5, 0x1

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ui/tools/bu;->a(JJII)Z

    goto :goto_2
.end method

.method public final nY(I)V
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 132
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/bs;->S(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/tools/bs;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)V

    .line 134
    return-void
.end method

.method public final nZ(I)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 196
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 197
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/bs;->S(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;

    move-result-object v1

    .line 199
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 200
    :cond_0
    const-string v2, "MicroMsg.ImageGalleryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doRestransmitMsg fail, msgLocalId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", imgLocalId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_2
    return-void

    .line 200
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 204
    :cond_3
    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/bs;->b(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 206
    :cond_4
    const-string v2, "MicroMsg.ImageGalleryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doRestransmitMsg fail, bigImgPath is null, msgLocalId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", imgLocalId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-static {v2, v0}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->f(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2
.end method

.method public final oa(I)V
    .locals 3
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 216
    new-instance v1, Lcom/tencent/mm/c/a/x;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/x;-><init>()V

    .line 217
    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;Lcom/tencent/mm/storage/ak;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 219
    iget-object v0, v1, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v0, v0, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    const v2, 0x7f070a4d

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/bs;->hjm:Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    iget-object v1, v1, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v1, v1, Lcom/tencent/mm/c/a/y;->type:I

    const v2, 0x7f070aca

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0
.end method

.method public final ob(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 228
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    aget v1, v1, p1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/bs;->cqM:[I

    aget v1, v1, p1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
