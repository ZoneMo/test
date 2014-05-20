.class public final Lcom/tencent/mm/protocal/a/bq;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public eBo:Ljava/lang/String;

.field public fBA:Ljava/lang/String;

.field public fBB:I

.field public fBC:Ljava/lang/String;

.field public fBD:Ljava/lang/String;

.field public fBE:Lcom/tencent/mm/protocal/a/rv;

.field public fBF:Ljava/lang/String;

.field public fBG:I

.field public fBH:I

.field public fBI:Ljava/lang/String;

.field public fBl:I

.field public fBw:Ljava/lang/String;

.field public fBx:Ljava/lang/String;

.field public fBy:I

.field public fBz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->eBo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->eBo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 96
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBl:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBx:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 100
    :cond_3
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBy:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBz:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 102
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBA:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 105
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBA:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 107
    :cond_5
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBB:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBC:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 109
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBD:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 112
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBE:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_8

    .line 115
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBF:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 119
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 121
    :cond_9
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBG:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 122
    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBH:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bq;->fBI:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 124
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 126
    :cond_a
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->eBo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 45
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->eBo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 48
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBw:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_2
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBl:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBx:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 52
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBx:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_3
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBy:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBz:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 56
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBz:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBA:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 59
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBA:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_5
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBB:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBC:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 63
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBC:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBD:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 66
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBD:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBE:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_8

    .line 69
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBF:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 72
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBF:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_9
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBG:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBH:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bq;->fBI:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 77
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bq;->fBI:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_a
    return v0
.end method
