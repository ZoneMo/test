.class final Lcom/tencent/mm/ui/chatting/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ctu:Lcom/tencent/mm/storage/ak;

.field final synthetic gMZ:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field final synthetic gNn:Lcom/tencent/mm/ui/chatting/ej;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ej;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ek;->gNn:Lcom/tencent/mm/ui/chatting/ej;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ek;->gMZ:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/ek;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ek;->gMZ:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aKc()V

    .line 163
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ek;->gMZ:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ek;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Q(Lcom/tencent/mm/storage/ak;)V

    .line 164
    return-void
.end method
