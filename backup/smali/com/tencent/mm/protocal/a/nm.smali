.class public final Lcom/tencent/mm/protocal/a/nm;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fOE:F

.field public fOF:F

.field public fOG:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method

.method public static a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/nm;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 41
    packed-switch p2, :pswitch_data_0

    .line 55
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 43
    :pswitch_0
    invoke-virtual {p0}, La/a/a/a/a;->aPV()F

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/nm;->fOE:F

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-virtual {p0}, La/a/a/a/a;->aPV()F

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/nm;->fOF:F

    goto :goto_0

    .line 51
    :pswitch_2
    invoke-virtual {p0}, La/a/a/a/a;->aPV()F

    move-result v1

    iput v1, p1, Lcom/tencent/mm/protocal/a/nm;->fOG:F

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/nm;->fOE:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 24
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/nm;->fOF:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 25
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/nm;->fOG:F

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->c(IF)V

    .line 26
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 2
    .parameter

    .prologue
    .line 6
    new-instance v1, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/protocal/a/nm;->fxi:La/a/a/a/a/b;

    invoke-direct {v1, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/a/nm;->a(La/a/a/a/a;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, p0, v0}, Lcom/tencent/mm/protocal/a/nm;->a(La/a/a/a/a;Lcom/tencent/mm/protocal/a/nm;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, La/a/a/a/a;->aPZ()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/a/nm;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/a/nm;->fOE:F

    invoke-static {v0}, La/a/a/a;->oK(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 17
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/nm;->fOF:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/nm;->fOG:F

    invoke-static {v1}, La/a/a/a;->oK(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    return v0
.end method
