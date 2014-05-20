.class final Lcom/tencent/mm/ui/chatting/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gNb:Lcom/tencent/mm/storage/ak;

.field final synthetic gNd:Lcom/tencent/mm/ui/chatting/dw;

.field final synthetic gNf:Lcom/tencent/mm/plugin/voicereminder/a/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/dw;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/plugin/voicereminder/a/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ea;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ea;->gNb:Lcom/tencent/mm/storage/ak;

    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/ea;->gNf:Lcom/tencent/mm/plugin/voicereminder/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ea;->gNd:Lcom/tencent/mm/ui/chatting/dw;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/dw;->a(Lcom/tencent/mm/ui/chatting/dw;)Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-result-object v0

    const v1, 0x7f07076a

    const v2, 0x7f070769

    new-instance v3, Lcom/tencent/mm/ui/chatting/eb;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/eb;-><init>(Lcom/tencent/mm/ui/chatting/ea;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 290
    return-void
.end method
