.class final Lcom/tencent/mm/ui/chatting/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gMe:Lcom/tencent/mm/ui/chatting/fn;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/fn;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/bj;->gMe:Lcom/tencent/mm/ui/chatting/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bj;->gMe:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/bj;->gMe:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJt()V

    .line 73
    :cond_0
    return-void
.end method
