.class final Lcom/tencent/mm/ui/conversation/br;
.super Lcom/tencent/mm/network/ah;
.source "SourceFile"


# instance fields
.field private final gZH:Lcom/tencent/mm/sdk/platformtools/ay;

.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 3
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/br;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Lcom/tencent/mm/network/ah;-><init>()V

    .line 336
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/conversation/bs;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/conversation/bs;-><init>(Lcom/tencent/mm/ui/conversation/br;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/br;->gZH:Lcom/tencent/mm/sdk/platformtools/ay;

    return-void
.end method


# virtual methods
.method public final ct(I)V
    .locals 3
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/br;->gZH:Lcom/tencent/mm/sdk/platformtools/ay;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/br;->gZH:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 351
    :cond_0
    return-void
.end method
