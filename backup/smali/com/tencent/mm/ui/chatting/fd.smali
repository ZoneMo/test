.class final Lcom/tencent/mm/ui/chatting/fd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gOb:Lcom/tencent/mm/ui/chatting/ez;

.field final synthetic gOc:Lcom/tencent/mm/ai/q;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ez;Lcom/tencent/mm/ai/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fd;->gOb:Lcom/tencent/mm/ui/chatting/ez;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/fd;->gOc:Lcom/tencent/mm/ai/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fd;->gOc:Lcom/tencent/mm/ai/q;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hg(Ljava/lang/String;)I

    .line 608
    return-void
.end method
