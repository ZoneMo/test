.class public final Lcom/tencent/mm/protocal/a/s;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fyV:Ljava/lang/String;

.field public fzM:Ljava/lang/String;

.field public fzN:Ljava/lang/String;

.field public fzO:Ljava/lang/String;

.field public fzP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/s;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 71
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/s;->fzM:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/s;->fzN:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/s;->fyV:Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/s;->fzO:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/s;->fzP:Ljava/lang/String;

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/s;->fzM:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/s;->fzN:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/s;->fyV:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 46
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fyV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/s;->fzO:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 49
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/s;->fzP:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 52
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 54
    :cond_4
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/s;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/s;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/s;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/s;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/s;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzM:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzN:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/s;->fzN:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fyV:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 27
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/s;->fyV:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzO:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 30
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/s;->fzO:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/s;->fzP:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 33
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/s;->fzP:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_4
    return v0
.end method
