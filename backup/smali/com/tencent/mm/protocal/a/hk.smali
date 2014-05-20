.class public final Lcom/tencent/mm/protocal/a/hk;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public eBo:Ljava/lang/String;

.field public fBj:I

.field public fCj:Lcom/tencent/mm/protocal/a/rv;

.field public fJJ:Lcom/tencent/mm/protocal/a/rw;

.field public fJK:Lcom/tencent/mm/protocal/a/rw;

.field public fJL:Lcom/tencent/mm/protocal/a/rw;

.field public fJM:Lcom/tencent/mm/protocal/a/rw;

.field public fJN:Ljava/lang/String;

.field public fJO:I

.field public fJP:Ljava/lang/String;

.field public fJQ:Lcom/tencent/mm/protocal/a/rv;

.field public fJR:I

.field public fyJ:I


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
    .line 75
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fCj:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 82
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/hk;->fBj:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fCj:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_2

    .line 84
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fCj:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fCj:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJJ:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_3

    .line 88
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJJ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJJ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJK:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_4

    .line 92
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJK:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJK:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJL:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_5

    .line 96
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJM:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_6

    .line 100
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJM:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJM:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJN:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 104
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 106
    :cond_7
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJO:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 107
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/hk;->fyJ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 108
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->eBo:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 109
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->eBo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 111
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJP:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 112
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 114
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJQ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_a

    .line 115
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJQ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/hk;->fJQ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 118
    :cond_a
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 119
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 40
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/hk;->fBj:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fCj:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 42
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->fCj:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJJ:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_2

    .line 45
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJJ:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJK:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_3

    .line 48
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJK:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJL:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_4

    .line 51
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJL:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJM:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_5

    .line 54
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJM:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJN:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 57
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJN:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_6
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJO:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/hk;->fyJ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->eBo:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 62
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->eBo:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJP:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 65
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJP:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/hk;->fJQ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_9

    .line 68
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJQ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_9
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/hk;->fJR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    return v0
.end method
