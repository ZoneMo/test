.class final Lcom/tencent/mm/ui/chatting/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gNg:Lcom/tencent/mm/ui/chatting/ea;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ea;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/eb;->gNg:Lcom/tencent/mm/ui/chatting/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x14b

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/eb;->gNg:Lcom/tencent/mm/ui/chatting/ea;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ea;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    new-instance v3, Lcom/tencent/mm/ui/chatting/ec;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/ec;-><init>(Lcom/tencent/mm/ui/chatting/eb;)V

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/chatting/dw;->a(Lcom/tencent/mm/ui/chatting/dw;Lcom/tencent/mm/n/m;)Lcom/tencent/mm/n/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 266
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 267
    new-instance v1, Lcom/tencent/mm/protocal/a/zj;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/zj;-><init>()V

    .line 268
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/eb;->gNg:Lcom/tencent/mm/ui/chatting/ea;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ea;->gNf:Lcom/tencent/mm/plugin/voicereminder/a/k;

    iget v2, v2, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePf:I

    iput v2, v1, Lcom/tencent/mm/protocal/a/zj;->fzW:I

    .line 269
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v1, Lcom/tencent/mm/plugin/voicereminder/a/a;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/plugin/voicereminder/a/a;-><init>(Ljava/util/LinkedList;I)V

    .line 271
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 272
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/eb;->gNg:Lcom/tencent/mm/ui/chatting/ea;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ea;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/eb;->gNg:Lcom/tencent/mm/ui/chatting/ea;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ea;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/dw;->a(Lcom/tencent/mm/ui/chatting/dw;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/eb;->gNg:Lcom/tencent/mm/ui/chatting/ea;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/ea;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/dw;->a(Lcom/tencent/mm/ui/chatting/dw;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v3

    const v4, 0x7f0709bb

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/eb;->gNg:Lcom/tencent/mm/ui/chatting/ea;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/ea;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/dw;->a(Lcom/tencent/mm/ui/chatting/dw;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v3

    const v4, 0x7f070763

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/chatting/ed;

    invoke-direct {v5, p0, v1}, Lcom/tencent/mm/ui/chatting/ed;-><init>(Lcom/tencent/mm/ui/chatting/eb;Lcom/tencent/mm/plugin/voicereminder/a/a;)V

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/dw;->a(Lcom/tencent/mm/ui/chatting/dw;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 285
    return-void
.end method
