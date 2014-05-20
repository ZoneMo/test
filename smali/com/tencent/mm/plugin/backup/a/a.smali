.class public final Lcom/tencent/mm/plugin/backup/a/a;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public cIK:I

.field public cIL:I

.field public cIM:J

.field public cIN:J

.field public cIO:J

.field public cIP:I

.field public cIQ:I

.field public cIR:I

.field public cIS:I

.field public cIT:I

.field public cIU:I

.field public networkType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final B([B)Lcom/tencent/mm/plugin/backup/a/a;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 64
    new-instance v2, La/a/a/a/a;

    sget-object v0, Lcom/tencent/mm/plugin/backup/a/a;->fxi:La/a/a/a/a/b;

    invoke-direct {v2, p1, v0}, La/a/a/a/a;-><init>([BLa/a/a/a/a/b;)V

    .line 65
    invoke-static {v2}, Lcom/tencent/mm/plugin/backup/a/a;->a(La/a/a/a/a;)I

    move-result v0

    .line 67
    :goto_0
    if-lez v0, :cond_1

    .line 68
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {v2}, La/a/a/a/a;->aPZ()V

    .line 71
    :cond_0
    invoke-static {v2}, Lcom/tencent/mm/plugin/backup/a/a;->a(La/a/a/a/a;)I

    move-result v0

    goto :goto_0

    .line 68
    :pswitch_0
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIK:I

    move v0, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIL:I

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, La/a/a/a/a;->aPW()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIM:J

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, La/a/a/a/a;->aPW()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIN:J

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2}, La/a/a/a/a;->aPW()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIO:J

    move v0, v1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIP:I

    move v0, v1

    goto :goto_1

    :pswitch_6
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->networkType:I

    move v0, v1

    goto :goto_1

    :pswitch_7
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIQ:I

    move v0, v1

    goto :goto_1

    :pswitch_8
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIR:I

    move v0, v1

    goto :goto_1

    :pswitch_9
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIS:I

    move v0, v1

    goto :goto_1

    :pswitch_a
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIT:I

    move v0, v1

    goto :goto_1

    :pswitch_b
    invoke-virtual {v2}, La/a/a/a/a;->aPQ()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIU:I

    move v0, v1

    goto :goto_1

    .line 74
    :cond_1
    return-object p0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final a(La/a/a/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 51
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 52
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIM:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 53
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIN:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 54
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIO:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 55
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIP:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 56
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->networkType:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 57
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIQ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 58
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 59
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIS:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 60
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIT:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 61
    const/16 v0, 0xc

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIU:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 62
    return-void
.end method

.method public final synthetic n([B)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/backup/a/a;->B([B)Lcom/tencent/mm/plugin/backup/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final ns()I
    .locals 4

    .prologue
    .line 33
    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIK:I

    invoke-static {v0, v1}, La/a/a/a;->br(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 35
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIL:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIM:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIN:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIO:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIP:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->networkType:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIQ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIS:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIT:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    const/16 v1, 0xc

    iget v2, p0, Lcom/tencent/mm/plugin/backup/a/a;->cIU:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    return v0
.end method
