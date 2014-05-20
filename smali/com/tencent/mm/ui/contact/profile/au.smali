.class final Lcom/tencent/mm/ui/contact/profile/au;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic cGV:Landroid/content/Context;

.field final synthetic cQM:Z

.field final synthetic cQN:Lcom/tencent/mm/ui/bc;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/profile/au;->cQM:Z

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/au;->cGV:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/au;->cQN:Lcom/tencent/mm/ui/bc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/mm/ui/contact/profile/au;->cQM:Z

    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/profile/aq;->bM(Z)V

    .line 208
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v1

    .line 209
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/au;->cQM:Z

    if-eqz v2, :cond_3

    .line 210
    and-int/lit8 v15, v1, -0x11

    .line 215
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 216
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v20

    new-instance v1, Lcom/tencent/mm/storage/bt;

    const/16 v2, 0x800

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v16, ""

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/tencent/mm/storage/bt;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 219
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/mm/ui/contact/profile/au;->cQM:Z

    if-nez v1, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/au;->cGV:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/profile/aq;->bY(Landroid/content/Context;)V

    .line 223
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/au;->cQN:Lcom/tencent/mm/ui/bc;

    if-eqz v1, :cond_2

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/au;->cQN:Lcom/tencent/mm/ui/bc;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bc;->ca(Ljava/lang/String;)V

    .line 226
    :cond_2
    return-void

    .line 212
    :cond_3
    or-int/lit8 v15, v1, 0x10

    goto :goto_0
.end method
