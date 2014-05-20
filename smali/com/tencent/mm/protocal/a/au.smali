.class public final Lcom/tencent/mm/protocal/a/au;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fAW:Lcom/tencent/mm/am/b;

.field public fAX:I

.field public fAl:Lcom/tencent/mm/am/b;

.field public fAm:I

.field public fAn:Lcom/tencent/mm/am/b;

.field public fyJ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/au;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 71
    packed-switch p2, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPX()Lcom/tencent/mm/am/b;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/au;->fAX:I

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPX()Lcom/tencent/mm/am/b;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/au;->fAm:I

    goto :goto_0

    .line 89
    :pswitch_4
    invoke-virtual {p0}, La/a/a/a/a;->aPX()Lcom/tencent/mm/am/b;

    move-result-object v1

    iput-object v1, p1, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    goto :goto_0

    .line 93
    :pswitch_5
    invoke-virtual {p0}, La/a/a/a/a;->aPQ()I

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/au;->fyJ:I

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    if-eqz v0, :cond_2

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(ILcom/tencent/mm/am/b;)V

    .line 44
    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/au;->fAX:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 45
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    if-eqz v0, :cond_3

    .line 46
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(ILcom/tencent/mm/am/b;)V

    .line 48
    :cond_3
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/au;->fAm:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    if-eqz v0, :cond_4

    .line 50
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(ILcom/tencent/mm/am/b;)V

    .line 52
    :cond_4
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/au;->fyJ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 53
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/au;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/au;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    if-eqz v1, :cond_0

    .line 23
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/au;->fAW:Lcom/tencent/mm/am/b;

    invoke-static {v0, v1}, La/a/a/a;->a(ILcom/tencent/mm/am/b;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 25
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/au;->fAX:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    if-eqz v1, :cond_1

    .line 27
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/au;->fAl:Lcom/tencent/mm/am/b;

    invoke-static {v1, v2}, La/a/a/a;->a(ILcom/tencent/mm/am/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/au;->fAm:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    if-eqz v1, :cond_2

    .line 31
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/au;->fAn:Lcom/tencent/mm/am/b;

    invoke-static {v1, v2}, La/a/a/a;->a(ILcom/tencent/mm/am/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_2
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/au;->fyJ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    return v0
.end method
