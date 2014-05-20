.class final Lcom/tencent/mm/ui/conversation/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hab:Lcom/tencent/mm/ui/conversation/cf;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/cg;->hab:Lcom/tencent/mm/ui/conversation/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/cg;->hab:Lcom/tencent/mm/ui/conversation/cf;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/cf;->haa:Lcom/tencent/mm/ui/conversation/NetWarnView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/cg;->hab:Lcom/tencent/mm/ui/conversation/cf;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/cf;->haa:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->c(Lcom/tencent/mm/ui/conversation/NetWarnView;)Z

    .line 363
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/cg;->hab:Lcom/tencent/mm/ui/conversation/cf;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/cf;->haa:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->b(Lcom/tencent/mm/ui/conversation/NetWarnView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/cg;->hab:Lcom/tencent/mm/ui/conversation/cf;

    iget v1, v1, Lcom/tencent/mm/ui/conversation/cf;->cLa:I

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ba;->p(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method
