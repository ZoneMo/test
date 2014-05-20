.class final Lcom/tencent/mm/ui/chatting/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic cGV:Landroid/content/Context;

.field final synthetic gMd:Ljava/util/List;

.field final synthetic gMf:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/br;->cGV:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/br;->gMd:Ljava/util/List;

    iput-boolean p3, p0, Lcom/tencent/mm/ui/chatting/br;->gMf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/br;->cGV:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/br;->cGV:Landroid/content/Context;

    const v2, 0x7f0709bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/br;->cGV:Landroid/content/Context;

    const v2, 0x7f07020e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/bm;->a(Lcom/tencent/mm/ui/base/ch;)Lcom/tencent/mm/ui/base/ch;

    .line 131
    sget-object v0, Lcom/tencent/mm/ui/chatting/fn;->gOp:Lcom/tencent/mm/sdk/platformtools/bu;

    new-instance v1, Lcom/tencent/mm/ui/chatting/bt;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/br;->cGV:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/br;->gMd:Ljava/util/List;

    iget-boolean v4, p0, Lcom/tencent/mm/ui/chatting/br;->gMf:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/chatting/bt;-><init>(Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    .line 132
    return-void
.end method
