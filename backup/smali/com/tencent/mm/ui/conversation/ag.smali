.class final Lcom/tencent/mm/ui/conversation/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bNl:Ljava/lang/String;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private cgf:Z

.field final synthetic gYP:Lcom/tencent/mm/ui/conversation/ab;

.field private gYz:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/conversation/ab;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 496
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ag;->gYP:Lcom/tencent/mm/ui/conversation/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/ag;->cgf:Z

    .line 497
    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ag;->bNl:Ljava/lang/String;

    .line 498
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/ag;->cgf:Z

    .line 499
    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ag;->cQI:Lcom/tencent/mm/storage/i;

    .line 500
    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ag;->gYz:Ljava/lang/Integer;

    .line 501
    return-void
.end method


# virtual methods
.method public final aLq()Lcom/tencent/mm/storage/i;
    .locals 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ag;->cgf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ag;->cQI:Lcom/tencent/mm/storage/i;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/ag;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ag;->cQI:Lcom/tencent/mm/storage/i;

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ag;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method public final uK(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 504
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ag;->bNl:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ag;->cQI:Lcom/tencent/mm/storage/i;

    .line 506
    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/ag;->gYz:Ljava/lang/Integer;

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ag;->cgf:Z

    .line 509
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/ag;->cgf:Z

    .line 512
    :cond_0
    return-void
.end method
