.class public final Lcom/tencent/mm/protocal/a/bs;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fBC:Ljava/lang/String;

.field public fBD:Ljava/lang/String;

.field public fBL:Ljava/lang/String;

.field public fBX:I

.field public fBY:Ljava/lang/String;

.field public fBZ:Ljava/lang/String;

.field public fCa:Ljava/lang/String;

.field public fCb:I

.field public fCc:Lcom/tencent/mm/protocal/a/rw;

.field public fCd:Lcom/tencent/mm/protocal/a/rv;

.field public fCe:I


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
    .line 70
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 74
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBX:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fBL:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fBY:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 79
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fBZ:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fCa:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 85
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fCa:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 87
    :cond_4
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/bs;->fCb:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fCc:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v0, :cond_5

    .line 89
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fCc:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fCc:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rw;->a(La/a/a/c/a;)V

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fCd:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_6

    .line 93
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fCd:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fCd:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 96
    :cond_6
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/bs;->fCe:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fBC:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 98
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/bs;->fBD:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 101
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 103
    :cond_8
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 34
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 36
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/bs;->fBX:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBL:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 38
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bs;->fBL:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBY:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 41
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bs;->fBY:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBZ:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 44
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bs;->fBZ:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fCa:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 47
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bs;->fCa:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_4
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/bs;->fCb:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fCc:Lcom/tencent/mm/protocal/a/rw;

    if-eqz v1, :cond_5

    .line 51
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bs;->fCc:Lcom/tencent/mm/protocal/a/rw;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rw;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fCd:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_6

    .line 54
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bs;->fCd:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_6
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/bs;->fCe:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBC:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 58
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bs;->fBC:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/bs;->fBD:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 61
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/bs;->fBD:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_8
    return v0
.end method
