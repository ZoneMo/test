.class final Lcom/tencent/mm/ui/contact/profile/bl;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic cQM:Z

.field final synthetic cQN:Lcom/tencent/mm/ui/bc;


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/profile/bl;->cQM:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bl;->cQN:Lcom/tencent/mm/ui/bc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x200

    .line 122
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    .line 123
    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/profile/bl;->cQM:Z

    if-eqz v1, :cond_1

    .line 124
    const v1, -0x2000001

    and-int/2addr v0, v1

    .line 129
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 130
    new-instance v1, Lcom/tencent/mm/protocal/a/qd;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/qd;-><init>()V

    .line 131
    iput v3, v1, Lcom/tencent/mm/protocal/a/qd;->fPK:I

    .line 132
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/profile/bl;->cQM:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Lcom/tencent/mm/protocal/a/qd;->fSE:I

    .line 133
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/storage/az;

    const/16 v3, 0x27

    invoke-direct {v2, v3, v1}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 134
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bl;->cQN:Lcom/tencent/mm/ui/bc;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/bl;->cQN:Lcom/tencent/mm/ui/bc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bc;->ca(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void

    .line 126
    :cond_1
    or-int/2addr v0, v3

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
