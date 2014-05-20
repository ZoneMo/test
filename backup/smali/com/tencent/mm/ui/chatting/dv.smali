.class final Lcom/tencent/mm/ui/chatting/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ctu:Lcom/tencent/mm/storage/ak;

.field final synthetic gMZ:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field final synthetic gNa:Lcom/tencent/mm/ui/chatting/du;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/du;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/dv;->gNa:Lcom/tencent/mm/ui/chatting/du;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/dv;->gMZ:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/dv;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dv;->gMZ:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aKc()V

    .line 332
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dv;->gMZ:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dv;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Q(Lcom/tencent/mm/storage/ak;)V

    .line 333
    return-void
.end method
