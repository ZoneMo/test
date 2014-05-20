.class final Lcom/tencent/mm/ui/chatting/ii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gPZ:Lcom/tencent/mm/ui/chatting/ih;

.field final synthetic gnF:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ih;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3434
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ii;->gPZ:Lcom/tencent/mm/ui/chatting/ih;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ii;->gnF:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ii;->gPZ:Lcom/tencent/mm/ui/chatting/ih;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ih;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ii;->gnF:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nF(I)V

    .line 3439
    return-void
.end method
