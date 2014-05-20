.class final Lcom/tencent/mm/ui/chatting/hx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bLx:Ljava/lang/String;

.field final synthetic gPW:Lcom/tencent/mm/ui/chatting/hw;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/hw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2799
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/hx;->gPW:Lcom/tencent/mm/ui/chatting/hw;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/hx;->bLx:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2803
    new-instance v0, Lcom/tencent/mm/w/y;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/hx;->gPW:Lcom/tencent/mm/ui/chatting/hw;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/hw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/hx;->gPW:Lcom/tencent/mm/ui/chatting/hw;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/hw;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/hx;->bLx:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;)V

    .line 2804
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 2805
    return-void
.end method
