.class final Lcom/tencent/mm/ui/chatting/ez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static gOa:Z


# instance fields
.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private gMj:Lcom/tencent/mm/ui/chatting/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/ui/chatting/ez;->gOa:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;Lcom/tencent/mm/ui/chatting/v;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 96
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/ez;->gMj:Lcom/tencent/mm/ui/chatting/v;

    .line 98
    new-instance v0, Lcom/tencent/mm/c/a/dd;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dd;-><init>()V

    .line 99
    iget-object v1, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput v3, v1, Lcom/tencent/mm/c/a/de;->bOi:I

    .line 100
    iget-object v1, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/c/a/de;->bOj:Ljava/lang/String;

    .line 101
    invoke-static {p2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/de;->bOk:Z

    .line 106
    :goto_0
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 108
    return-void

    .line 104
    :cond_0
    iget-object v1, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput-boolean v3, v1, Lcom/tencent/mm/c/a/de;->bOk:Z

    goto :goto_0
.end method

.method private C(Lcom/tencent/mm/storage/ak;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 682
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v0

    .line 683
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-static {v1}, Lcom/tencent/mm/ai/p;->gQ(Ljava/lang/String;)Z

    move-result v1

    .line 685
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DQ()I

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 687
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCq()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 688
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v2, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    const-string v1, "clean_view_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    sget-object v2, Lcom/tencent/mm/compatible/c/s;->ceN:Lcom/tencent/mm/compatible/c/m;

    iget v2, v2, Lcom/tencent/mm/compatible/c/m;->cen:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 694
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2, v3, v1}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v3, Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    const-string v2, "VideoRecorder_MsgId"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 700
    const-string v2, "VideoRecorder_VideoSize"

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    const-string v2, "VideoRecorder_VideoLength"

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    const-string v0, "VideoPlayer_File_nam"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 705
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCq()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 706
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v2, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 707
    const-string v1, "clean_view_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 711
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f0705fb

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ez;)Lcom/tencent/mm/ui/chatting/ChattingUI;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    return-object v0
.end method

.method private a(JILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1022
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v2, Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1023
    const-string v1, "img_gallery_msg_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1024
    const-string v1, "img_gallery_msg_svr_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    const-string v1, "img_gallery_talker"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    const-string v1, "img_gallery_chatroom_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    .line 1028
    return-void
.end method

.method private c(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v2, Lcom/tencent/mm/ui/tools/ImageGalleryUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1033
    const-string v1, "img_gallery_msg_id"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1034
    const-string v1, "img_gallery_msg_svr_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    const-string v1, "img_gallery_talker"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string v1, "img_gallery_chatroom_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    .line 1038
    return-void
.end method

.method private wC(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 660
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tencent/mm/ui/chatting/ez;->gOa:Z

    if-nez v0, :cond_0

    .line 661
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/ui/chatting/ez;->gOa:Z

    .line 662
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v1, 0x7f0705fe

    const v2, 0x7f0709bb

    new-instance v3, Lcom/tencent/mm/ui/chatting/ff;

    invoke-direct {v3, p0, p1}, Lcom/tencent/mm/ui/chatting/ff;-><init>(Lcom/tencent/mm/ui/chatting/ez;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 679
    :goto_0
    return-void

    .line 674
    :cond_0
    invoke-static {p1}, Lcom/tencent/mm/ai/v;->hg(Ljava/lang/String;)I

    .line 675
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v2, Lcom/tencent/mm/ui/video/VideoDownloadUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    const-string v1, "file_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x5

    const/4 v4, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 116
    iget v2, v0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    packed-switch v2, :pswitch_data_0

    .line 236
    :pswitch_0
    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    .line 237
    if-nez v5, :cond_a

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_1
    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    .line 119
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 123
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v5, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    const-string v4, "Contact_User"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v4

    .line 127
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 128
    invoke-static {v2, v1}, Lcom/tencent/mm/ui/contact/bh;->b(Landroid/content/Intent;Ljava/lang/String;)V

    .line 137
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    if-eqz v1, :cond_2

    .line 138
    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    iget v0, v0, Lcom/tencent/mm/storage/ak;->field_type:I

    packed-switch v0, :pswitch_data_1

    .line 143
    :cond_2
    :goto_2
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/16 v1, 0xd5

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-boolean v4, v4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-eqz v4, :cond_1

    .line 130
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/chatting/fa;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/chatting/fa;-><init>(Lcom/tencent/mm/ui/chatting/ez;)V

    invoke-interface {v4, v1, v5}, Lcom/tencent/mm/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/model/au;)V

    goto :goto_1

    .line 141
    :pswitch_3
    const-string v0, "Contact_Scene"

    const/16 v1, 0x22

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v0, "Contact_IsLBSFriend"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 154
    :pswitch_4
    const-string v2, "MicroMsg.ChattingListClickListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "edw timestamp, onClick = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    .line 157
    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->bQt:Ljava/lang/String;

    .line 158
    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/kk;->gQL:Ljava/lang/String;

    .line 159
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 163
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 164
    const-string v7, "rawUrl"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v7, "shortUrl"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "webpageTitle"

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    if-eqz v4, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 169
    const-string v2, "title"

    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 173
    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    .line 174
    if-eqz v4, :cond_6

    .line 175
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v5

    .line 176
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 177
    const/4 v1, 0x4

    .line 179
    :cond_5
    const-string v5, "msg_id"

    iget-wide v7, v4, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    :cond_6
    const-string v4, "snsWebSource"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v1, "jsapiargs"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    const-string v1, "geta8key_username"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/kk;->bQs:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 187
    const-string v1, "srcUsername"

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->bQs:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "srcDisplayname"

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->bQt:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "mode"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    :cond_7
    const-string v1, "message_id"

    iget v2, v0, Lcom/tencent/mm/ui/chatting/kk;->gQO:I

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v1, "message_index"

    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->gQP:I

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 200
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v3, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string v2, "geta8key_username"

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "rawUrl"

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->bXF:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 208
    :pswitch_6
    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    .line 209
    if-eqz v2, :cond_0

    .line 212
    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->bPE:Ljava/lang/String;

    .line 213
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 214
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v2

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->bXF:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/tencent/mm/pluginsdk/i;->iZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 217
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v3, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    const-string v2, "geta8key_username"

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v2, "rawUrl"

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->bXF:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 222
    :cond_9
    const-string v0, "MicroMsg.ChattingListClickListener"

    const-string v4, "start emoji detail from brandcontact"

    invoke-static {v0, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    const-string v4, "extra_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v4, "preceding_scence"

    const/16 v5, 0x9

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v4, "entrance_scence"

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-string v5, "emoji"

    const-string v6, ".ui.EmojiStoreDetailUI"

    invoke-static {v4, v5, v6, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 228
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v4, 0x2af1

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v2, v5, v3

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 242
    :cond_a
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v6, v2, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v7

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    if-ne v2, v3, :cond_c

    move v2, v3

    :goto_3
    invoke-virtual {v6, v7, v2}, Lcom/tencent/mm/ui/chatting/es;->o(IZ)Lcom/tencent/mm/ui/chatting/ce;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_b

    .line 244
    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2, p1, v6, v5}, Lcom/tencent/mm/ui/chatting/ce;->a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    :cond_b
    iget v2, v0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    if-ne v2, v10, :cond_d

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    if-ne v2, v3, :cond_d

    .line 255
    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f070250

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/chatting/fb;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/chatting/fb;-><init>(Lcom/tencent/mm/ui/chatting/ez;Lcom/tencent/mm/storage/ak;)V

    new-instance v0, Lcom/tencent/mm/ui/chatting/fc;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/fc;-><init>(Lcom/tencent/mm/ui/chatting/ez;)V

    invoke-static {v1, v2, v3, v4, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    :cond_c
    move v2, v1

    .line 242
    goto :goto_3

    .line 259
    :cond_d
    const-string v2, "MicroMsg.ChattingListClickListener"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CreateTime:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aBV()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 263
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMj:Lcom/tencent/mm/ui/chatting/v;

    iget v2, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/chatting/v;->b(ILcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 265
    :cond_f
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aBZ()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 267
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ap;->vh(Ljava/lang/String;)Lcom/tencent/mm/storage/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/an;->aCJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-string v2, "qqmail"

    const-string v3, ".ui.ReadMailUI"

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "msgid"

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v1}, Lcom/tencent/mm/storage/an;->aCH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/tencent/mm/storage/an;->aCH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v2, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 269
    :cond_11
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aBY()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 271
    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-ne v1, v3, :cond_14

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v5

    long-to-int v2, v5

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_59

    :cond_12
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    move-object v2, v1

    :goto_4
    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v5, "msg"

    invoke-static {v1, v5}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v5, ".msg.img.$hdlength"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "0"

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    :cond_13
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/g;->dF(I)Lcom/tencent/mm/w/e;

    move-result-object v1

    move-object v2, v1

    goto :goto_4

    :cond_15
    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-ne v1, v3, :cond_18

    invoke-static {v2}, Lcom/tencent/mm/w/f;->c(Lcom/tencent/mm/w/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v3, v1, v5, v6}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    invoke-static {v3}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AM()Z

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AH()I

    move-result v3

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AM()Z

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cWi:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v0}, Lcom/tencent/mm/ui/chatting/ez;->c(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v3, v1, v5, v6}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    invoke-static {v3}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AH()I

    move-result v3

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AM()Z

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cWi:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v0}, Lcom/tencent/mm/ui/chatting/ez;->c(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/kk;->cWi:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/ez;->a(JILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {v2}, Lcom/tencent/mm/w/f;->a(Lcom/tencent/mm/w/e;)Lcom/tencent/mm/w/e;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_19

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AL()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v1

    :cond_19
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v3, v1, v4, v5}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AF()I

    move-result v1

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AH()I

    move-result v3

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AM()Z

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cWi:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v0}, Lcom/tencent/mm/ui/chatting/ez;->c(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/kk;->cWi:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/ez;->a(JILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_1b
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aCa()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 275
    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/kk;->bPx:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    iget-boolean v6, v0, Lcom/tencent/mm/ui/chatting/kk;->gJU:Z

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_1e

    move v0, v3

    :goto_5
    if-eqz v6, :cond_1f

    if-eqz v0, :cond_1f

    invoke-static {v2}, Lcom/tencent/mm/model/bv;->dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/ap;->vj(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v6, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_Alias"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_Nick"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->kn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_QuanPin"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->ro()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_PyInitial"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_Uin"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->aCx()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "Contact_Mobile_MD5"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->aCw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_full_Mobile_MD5"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->aCz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Contact_QQNick"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->aCy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "User_From_Fmessage"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "Contact_Scene"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->Gf()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Contact_FMessageCard"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "Contact_RemarkName"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->Ai()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_VUser_Info_Flag"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rJ()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Contact_VUser_Info"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_BrandIconURL"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->aCA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_Province"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_City"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_Sex"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rk()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Contact_Signature"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rB()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_ShowUserName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "Contact_KSnsIFlag"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->rJ()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1d

    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1c
    const-string v1, "Contact_Scene"

    const/16 v3, 0x11

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0x283a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",17"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    :cond_1d
    :goto_7
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->Gf()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/al/a;->le(I)V

    goto/16 :goto_0

    :cond_1e
    move v0, v1

    goto/16 :goto_5

    :cond_1f
    move-object v0, v2

    goto/16 :goto_6

    :cond_20
    const-string v1, "Contact_Scene"

    const/16 v3, 0x29

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0x283a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",41"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_7

    .line 277
    :cond_21
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v2

    const/16 v6, 0x25

    if-ne v2, v6, :cond_25

    .line 279
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MicroMsg.ChattingListClickListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dealClickVerifyMsgEvent : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/ap;->vi(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    move v1, v3

    :cond_22
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v5, Lcom/tencent/mm/ui/contact/profile/ContactInfoUI;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v4

    if-lez v4, :cond_24

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/contact/bh;->b(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_23

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v4, 0x7f070232

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_23
    :goto_9
    const-string v4, "Contact_Content"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_verify_Scene"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_Uin"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCx()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "Contact_QQNick"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Ah()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Mobile_MD5"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "User_From_Fmessage"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Contact_from_msgType"

    const/16 v3, 0x25

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_KSnsIFlag"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCL()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_KSnsBgUrl"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/al/a;->le(I)V

    goto/16 :goto_0

    :cond_24
    const-string v0, "Verify_ticket"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "User_Verify"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Contact_User"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Alias"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->rp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Nick"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->kn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_QuanPin"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->ro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_PyInitial"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->rn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Sex"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->rk()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_Signature"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->rB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Scene"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_FMessageCard"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Contact_City"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->rD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Province"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->rC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Mobile_MD5"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_full_Mobile_MD5"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_KSnsIFlag"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCL()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_KSnsBgUrl"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ao;->aCM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    :pswitch_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v4, 0x7f070a49

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 281
    :cond_25
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v2

    const/16 v6, 0x28

    if-ne v2, v6, :cond_2f

    .line 283
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ap;->vj(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->Gf()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/al/a;->le(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-lez v0, :cond_26

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/ui/contact/bh;->a(Landroid/content/Context;Lcom/tencent/mm/storage/i;Lcom/tencent/mm/storage/al;)V

    goto/16 :goto_0

    :cond_26
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCx()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2e

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_27
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelfriend/i;->fs(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/h;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2b

    :cond_28
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelfriend/i;->fs(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/h;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2b

    :cond_29
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/ui/contact/bh;->a(Landroid/content/Context;Lcom/tencent/mm/storage/i;Lcom/tencent/mm/storage/al;)V

    :goto_a
    const-string v0, "MicroMsg.ChattingListClickListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error : this is not the mobile contact, MD5 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fullMD5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/bh;->a(Landroid/content/Context;Lcom/tencent/mm/storage/al;)V

    goto :goto_a

    :cond_2b
    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2d

    :cond_2c
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelfriend/h;->setUsername(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelfriend/h;->cL(I)V

    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/h;->yK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/modelfriend/i;->a(Ljava/lang/String;Lcom/tencent/mm/modelfriend/h;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2d

    const-string v0, "MicroMsg.ChattingListClickListener"

    const-string v1, "update mobile contact username failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/bh;->a(Landroid/content/Context;Lcom/tencent/mm/storage/al;)V

    goto/16 :goto_0

    :cond_2e
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/bh;->a(Landroid/content/Context;Lcom/tencent/mm/storage/al;)V

    goto/16 :goto_0

    .line 285
    :cond_2f
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->MP()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 287
    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_30
    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v4

    const-string v5, "MicroMsg.ChattingListClickListener"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video status:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is sender:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    packed-switch v5, :pswitch_data_3

    :cond_31
    :goto_b
    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ai/r;->gW(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v2

    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/chatting/ez;->C(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto :goto_b

    :cond_32
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v4

    if-nez v4, :cond_33

    const-string v4, "MicroMsg.VideoLogic"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERR:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getinfo failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    goto :goto_b

    :cond_33
    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v5

    const/16 v6, 0x70

    if-eq v5, v6, :cond_34

    const-string v5, "MicroMsg.VideoLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ERR:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " get status failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " status:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    goto/16 :goto_b

    :cond_34
    const/16 v5, 0x71

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ai/q;->setStatus(I)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/ai/q;->H(J)V

    const/16 v5, 0x500

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ai/q;->cL(I)V

    invoke-static {v4}, Lcom/tencent/mm/ai/v;->d(Lcom/tencent/mm/ai/q;)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, "MicroMsg.VideoLogic"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERR:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " update failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    goto/16 :goto_b

    :pswitch_b
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_35
    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v2

    const/16 v5, 0xc6

    if-ne v2, v5, :cond_36

    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getFileName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/tencent/mm/ai/q;

    invoke-direct {v4}, Lcom/tencent/mm/ai/q;-><init>()V

    const/16 v5, 0x70

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ai/q;->setStatus(I)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/ai/q;->H(J)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/ai/q;->I(J)V

    invoke-virtual {v4, v2}, Lcom/tencent/mm/ai/q;->gR(Ljava/lang/String;)V

    const/16 v2, 0xd00

    invoke-virtual {v4, v2}, Lcom/tencent/mm/ai/q;->cL(I)V

    invoke-static {v4}, Lcom/tencent/mm/ai/v;->d(Lcom/tencent/mm/ai/q;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/tencent/mm/ai/m;->DF()Lcom/tencent/mm/ai/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ai/z;->run()V

    goto/16 :goto_b

    :cond_36
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_37

    sget-boolean v2, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOa:Z

    if-nez v2, :cond_37

    sput-boolean v3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOa:Z

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v5, 0x7f0705fe

    const v6, 0x7f0709bb

    new-instance v7, Lcom/tencent/mm/ui/chatting/fd;

    invoke-direct {v7, p0, v4}, Lcom/tencent/mm/ui/chatting/fd;-><init>(Lcom/tencent/mm/ui/chatting/ez;Lcom/tencent/mm/ai/q;)V

    new-instance v4, Lcom/tencent/mm/ui/chatting/fe;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/chatting/fe;-><init>(Lcom/tencent/mm/ui/chatting/ez;)V

    invoke-static {v2, v5, v6, v7, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_b

    :cond_37
    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/ai/v;->hg(Ljava/lang/String;)I

    goto/16 :goto_b

    :pswitch_c
    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v5

    const/16 v6, 0x71

    if-eq v5, v6, :cond_38

    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v5

    const/16 v6, 0xc6

    if-ne v5, v6, :cond_39

    :cond_38
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/chatting/ez;->wC(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_39
    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v5

    const/16 v6, 0xc7

    if-ne v5, v6, :cond_3a

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/chatting/ez;->C(Lcom/tencent/mm/storage/ak;)V

    :cond_3a
    invoke-virtual {v4}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v4

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_31

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/chatting/ez;->wC(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_d
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3b
    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v1

    if-nez v1, :cond_3c

    const-string v1, "MicroMsg.VideoLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERR:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getinfo failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    goto/16 :goto_0

    :cond_3c
    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v2

    const/16 v3, 0x68

    if-eq v2, v3, :cond_3d

    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v2

    const/16 v3, 0x67

    if-eq v2, v3, :cond_3d

    const-string v2, "MicroMsg.VideoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERR:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get status failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " status:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    goto/16 :goto_0

    :cond_3d
    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ai/q;->setStatus(I)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ai/q;->H(J)V

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ai/q;->cL(I)V

    invoke-static {v1}, Lcom/tencent/mm/ai/v;->d(Lcom/tencent/mm/ai/q;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.VideoLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERR:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " update failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/compatible/g/j;->qe()I

    goto/16 :goto_0

    :pswitch_e
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3e
    invoke-virtual {v2}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v0

    const/16 v2, 0xc6

    if-ne v0, v2, :cond_40

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DJ()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DK()I

    move-result v2

    if-ge v1, v2, :cond_3f

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ai/q;->setStatus(I)V

    :goto_c
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ai/q;->G(J)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ai/q;->H(J)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ai/q;->I(J)V

    const/16 v1, 0xf00

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ai/q;->cL(I)V

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->d(Lcom/tencent/mm/ai/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ai/m;->DF()Lcom/tencent/mm/ai/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ai/z;->run()V

    goto/16 :goto_0

    :cond_3f
    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ai/q;->setStatus(I)V

    goto :goto_c

    :cond_40
    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hf(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 289
    :cond_41
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aCd()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 291
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/pluginsdk/i;->ja(Ljava/lang/String;)Lcom/tencent/mm/storage/y;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->apQ()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "custom_smiley_preview_md5"

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v3, Lcom/tencent/mm/storage/w;->ggY:I

    if-eq v0, v3, :cond_42

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v3, Lcom/tencent/mm/storage/w;->ggX:I

    if-eq v0, v3, :cond_42

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBG()I

    move-result v0

    sget v3, Lcom/tencent/mm/storage/w;->ggW:I

    if-eq v0, v3, :cond_42

    const-string v0, "custom_smiley_preview_productid"

    invoke-virtual {v1}, Lcom/tencent/mm/storage/y;->aBK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_42
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-string v1, "emoji"

    const-string v3, ".ui.CustomSmileyPreviewUI"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 293
    :cond_43
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v2

    const/16 v6, 0x30

    if-ne v2, v6, :cond_49

    .line 295
    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_47

    move v0, v3

    :goto_d
    const-string v2, ""

    if-eqz v0, :cond_44

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    :cond_44
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    if-eqz v0, :cond_58

    invoke-static {v4}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_58

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/ap;->vk(Ljava/lang/String;)Lcom/tencent/mm/storage/am;

    move-result-object v0

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v2, ""

    :cond_45
    new-instance v4, Lcom/tencent/mm/c/a/dd;

    invoke-direct {v4}, Lcom/tencent/mm/c/a/dd;-><init>()V

    iget-object v6, v4, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput v3, v6, Lcom/tencent/mm/c/a/de;->bOi:I

    iget-object v6, v4, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput-object v5, v6, Lcom/tencent/mm/c/a/de;->bLP:Lcom/tencent/mm/storage/ak;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v4, v4, Lcom/tencent/mm/c/a/dd;->bOh:Lcom/tencent/mm/c/a/df;

    iget-object v4, v4, Lcom/tencent/mm/c/a/df;->bOl:Ljava/lang/String;

    if-eqz v4, :cond_46

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    const-string v6, "err_not_started"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    :cond_46
    const-string v0, "MicroMsg.ChattingListClickListener"

    const-string v1, "location not valid or subcore not started"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_47
    move v0, v1

    goto :goto_d

    :cond_48
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "kMsgId"

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "map_view_type"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "kwebmap_slat"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/am;->aCE()D

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v7, "kwebmap_lng"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/am;->aCF()D

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v7, "kwebmap_scale"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/am;->axF()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "kPoiName"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/am;->aCC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "kisUsername"

    invoke-static {v2}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Kwebmap_locaion"

    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "kimg_path"

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "map_talker_name"

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "view_type_key"

    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "kwebmap_from_to"

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "kPoi_url"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/am;->aCG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "soso_street_view_url"

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aCo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "location"

    const-string v2, ".ui.RedirectUI"

    invoke-static {v0, v1, v2, v6}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 297
    :cond_49
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aBX()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 299
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v6}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v7, v6, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v3, v7, Lcom/tencent/mm/c/a/ib;->bNk:I

    iget-object v7, v6, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput-object v2, v7, Lcom/tencent/mm/c/a/ib;->content:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v2, v6, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    iget v2, v2, Lcom/tencent/mm/c/a/ic;->type:I

    if-ne v2, v9, :cond_4c

    move v2, v3

    :goto_f
    if-nez v2, :cond_4a

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/tencent/mm/storage/ak;->ghI:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 300
    :cond_4a
    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v5

    iget-object v7, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2, v5, v6, v7}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJU()V

    new-instance v2, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v5, v2, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v10, v5, Lcom/tencent/mm/c/a/ib;->bNk:I

    iget-object v5, v2, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v6, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/c/a/ib;->bNl:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-object v6, v5, Lcom/tencent/mm/c/a/ib;->context:Landroid/content/Context;

    iget-object v5, v2, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v9, v5, Lcom/tencent/mm/c/a/ib;->bRz:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    sget-object v2, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v5, 0x2b19

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->aCn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4d

    :cond_4b
    :goto_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-virtual {v2, v5, v6}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4c
    move v2, v1

    .line 299
    goto/16 :goto_f

    :cond_4d
    move v3, v4

    .line 300
    goto :goto_10

    .line 301
    :cond_4e
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v6}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v7, v6, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v3, v7, Lcom/tencent/mm/c/a/ib;->bNk:I

    iget-object v7, v6, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput-object v2, v7, Lcom/tencent/mm/c/a/ib;->content:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v2, v6, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    iget v2, v2, Lcom/tencent/mm/c/a/ic;->type:I

    if-ne v2, v4, :cond_52

    move v2, v3

    :goto_11
    if-nez v2, :cond_4f

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/tencent/mm/storage/ak;->ghH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    :cond_4f
    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v5

    iget-object v7, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v2, v5, v6, v7}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJU()V

    new-instance v2, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v5, v2, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v10, v5, Lcom/tencent/mm/c/a/ib;->bNk:I

    iget-object v5, v2, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v6, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/c/a/ib;->bNl:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-object v6, v5, Lcom/tencent/mm/c/a/ib;->context:Landroid/content/Context;

    iget-object v5, v2, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v4, v5, Lcom/tencent/mm/c/a/ib;->bRz:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    sget-object v2, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v5, 0x2b19

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ak;->aCn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_51

    :cond_50
    move v4, v3

    :cond_51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-virtual {v2, v5, v6}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_52
    move v2, v1

    .line 301
    goto/16 :goto_11

    .line 305
    :cond_53
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aCe()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 307
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/i;->b(Landroid/content/Context;Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 309
    :cond_54
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aBW()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x27ed

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-string v2, "shake"

    const-string v3, ".ui.ShakeReportUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 312
    :cond_55
    invoke-virtual {v5}, Lcom/tencent/mm/storage/ak;->aCh()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 314
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ez;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_56
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ez;->gMj:Lcom/tencent/mm/ui/chatting/v;

    iget v2, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/chatting/v;->c(ILcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 316
    :cond_57
    const-string v0, "MicroMsg.ChattingListClickListener"

    const-string v1, "uknown msg type"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_58
    move-object v0, v4

    goto/16 :goto_e

    :cond_59
    move-object v2, v1

    goto/16 :goto_4

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 279
    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 287
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_9
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
