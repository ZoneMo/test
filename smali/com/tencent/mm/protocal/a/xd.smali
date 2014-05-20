.class public final Lcom/tencent/mm/protocal/a/xd;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public Th:Ljava/lang/String;

.field public Ti:Ljava/lang/String;

.field public Tl:D

.field public Tm:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/xd;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 53
    packed-switch p2, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPU()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/tencent/mm/protocal/a/xd;->Tl:D

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPU()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/tencent/mm/protocal/a/xd;->Tm:D

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/xd;->Th:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPS()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/xd;->Ti:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/xd;->Tl:D

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->a(ID)V

    .line 31
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/xd;->Tm:D

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->a(ID)V

    .line 32
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xd;->Th:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xd;->Th:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/xd;->Ti:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xd;->Ti:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 38
    :cond_1
    return-void
.end method

.method public final cc([B)Lcom/tencent/mm/protocal/a/xd;
    .locals 2
    .parameter

    .prologue
    .line 40
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/xd;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 41
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/xd;->a(La/a/a/a/a;)I

    move-result v0

    .line 43
    :goto_0
    if-lez v0, :cond_1

    .line 44
    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/xd;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/xd;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    .line 47
    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/xd;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 50
    :cond_1
    return-object p0
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/protocal/a/xd;->cc([B)Lcom/tencent/mm/protocal/a/xd;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 17
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/xd;->Tl:D

    invoke-static {v0}, La/a/a/a;->oJ(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 19
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/xd;->Tm:D

    invoke-static {v1}, La/a/a/a;->oJ(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xd;->Th:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xd;->Th:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/xd;->Ti:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 24
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/xd;->Ti:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_1
    return v0
.end method
