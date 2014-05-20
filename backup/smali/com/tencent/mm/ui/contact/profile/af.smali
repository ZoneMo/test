.class final Lcom/tencent/mm/ui/contact/profile/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic cQM:Z

.field final synthetic cQN:Lcom/tencent/mm/ui/bc;

.field final synthetic cQO:Lcom/tencent/mm/ui/base/ch;


# direct methods
.method constructor <init>(ZLcom/tencent/mm/ui/base/ch;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/profile/af;->cQM:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/profile/af;->cQN:Lcom/tencent/mm/ui/bc;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/profile/af;->cQO:Lcom/tencent/mm/ui/base/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 21

    .prologue
    .line 76
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v1

    .line 77
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mm/ui/contact/profile/af;->cQM:Z

    if-eqz v2, :cond_3

    .line 78
    const v2, -0x8001

    and-int v15, v1, v2

    .line 83
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 84
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

    .line 85
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/z/i;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 87
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/mm/ui/contact/profile/af;->cQM:Z

    if-nez v1, :cond_0

    .line 88
    invoke-static {}, Lcom/tencent/mm/ui/contact/profile/ae;->clearData()V

    .line 91
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/af;->cQN:Lcom/tencent/mm/ui/bc;

    if-eqz v1, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/af;->cQN:Lcom/tencent/mm/ui/bc;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bc;->ca(Ljava/lang/String;)V

    .line 95
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/af;->cQO:Lcom/tencent/mm/ui/base/ch;

    if-eqz v1, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/profile/af;->cQO:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 99
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 80
    :cond_3
    const v2, 0x8000

    or-int v15, v1, v2

    goto :goto_0
.end method
