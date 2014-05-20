.class final Lcom/tencent/mm/plugin/shootstub/c;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic etB:Lcom/tencent/mm/plugin/shootstub/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/shootstub/b;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 55
    check-cast p1, Lcom/tencent/mm/c/a/cg;

    .line 56
    const-string v0, "MicroMsg.SubCoreShootStub"

    const-string v1, "on op listener callback, type[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget v3, v3, Lcom/tencent/mm/c/a/ch;->bNK:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget v0, v0, Lcom/tencent/mm/c/a/ch;->bNK:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return v4

    .line 59
    :pswitch_0
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    iget-object v2, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ch;->bNL:[B

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/b;->a(Lcom/tencent/mm/plugin/shootstub/b;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/c/a/ci;->bMh:Z

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    iget-object v2, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ch;->bNL:[B

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/b;->b(Lcom/tencent/mm/plugin/shootstub/b;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/c/a/ci;->bMh:Z

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    iget-object v2, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ch;->bNL:[B

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/b;->c(Lcom/tencent/mm/plugin/shootstub/b;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/c/a/ci;->bMh:Z

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    iget-object v2, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ch;->bNL:[B

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/b;->d(Lcom/tencent/mm/plugin/shootstub/b;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/c/a/ci;->bMh:Z

    goto :goto_0

    .line 71
    :pswitch_4
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    iget-object v2, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ch;->bNL:[B

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/b;->e(Lcom/tencent/mm/plugin/shootstub/b;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/c/a/ci;->bMh:Z

    goto :goto_0

    .line 74
    :pswitch_5
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    iget-object v2, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ch;->bNL:[B

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/b;->f(Lcom/tencent/mm/plugin/shootstub/b;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/c/a/ci;->bMh:Z

    goto :goto_0

    .line 77
    :pswitch_6
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    iget-object v2, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ch;->bNL:[B

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/b;->g(Lcom/tencent/mm/plugin/shootstub/b;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/c/a/ci;->bMh:Z

    goto :goto_0

    .line 80
    :pswitch_7
    iget-object v0, p1, Lcom/tencent/mm/c/a/cg;->bNJ:Lcom/tencent/mm/c/a/ci;

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/c;->etB:Lcom/tencent/mm/plugin/shootstub/b;

    iget-object v2, p1, Lcom/tencent/mm/c/a/cg;->bNI:Lcom/tencent/mm/c/a/ch;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ch;->bNL:[B

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/b;->h(Lcom/tencent/mm/plugin/shootstub/b;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/mm/c/a/ci;->bMh:Z

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
