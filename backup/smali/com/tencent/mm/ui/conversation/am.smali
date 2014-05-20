.class final Lcom/tencent/mm/ui/conversation/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gZK:Lcom/tencent/mm/ui/conversation/al;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/al;)V
    .locals 0
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/am;->gZK:Lcom/tencent/mm/ui/conversation/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/am;->gZK:Lcom/tencent/mm/ui/conversation/al;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/al;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/am;->gZK:Lcom/tencent/mm/ui/conversation/al;

    iget-object v1, v1, Lcom/tencent/mm/ui/conversation/al;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/conversation/MainUI;->b(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/ui/conversation/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/conversation/ab;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/conversation/MainUI;->a(Lcom/tencent/mm/ui/conversation/MainUI;I)V

    .line 748
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->hy(I)V

    .line 749
    return-void
.end method
