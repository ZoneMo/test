.class final Lcom/tencent/mm/ui/chatting/ix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic dLG:Lcom/tencent/mm/ai/a;

.field final synthetic gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/ai/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ix;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ix;->dLG:Lcom/tencent/mm/ai/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 4310
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ix;->dLG:Lcom/tencent/mm/ai/a;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/a;->cancel()V

    .line 4311
    return-void
.end method
