.class public final Lcom/tencent/mm/protocal/a/yl;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fAE:I

.field public fAG:I

.field public fAI:I

.field public fAJ:Lcom/tencent/mm/protocal/a/rv;

.field public fAK:I

.field public fFi:I

.field public fYN:I

.field public fYO:I

.field public fYP:I

.field public fzT:Ljava/lang/String;

.field public fzo:I

.field public fzp:Ljava/lang/String;

.field public fzq:Ljava/lang/String;

.field public fzz:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fzp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fzq:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 79
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fAE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 80
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fAI:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fzT:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 84
    :cond_3
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzo:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 85
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fFi:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_4

    .line 87
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 90
    :cond_4
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fAK:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 91
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_5

    .line 92
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 93
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 95
    :cond_5
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fAG:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/yl;->fzz:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 97
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 99
    :cond_6
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fYN:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 100
    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fYO:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 101
    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/a/yl;->fYP:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 102
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzp:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 40
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzp:Ljava/lang/String;

    invoke-static {v0, v1}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzq:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 43
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yl;->fzq:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fAE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fAI:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzT:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 48
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yl;->fzT:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_2
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fzo:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fFi:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_3

    .line 53
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yl;->fAJ:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_3
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fAK:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_4

    .line 57
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yl;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_4
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fAG:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/yl;->fzz:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 61
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/yl;->fzz:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_5
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fYN:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fYO:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/a/yl;->fYP:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    return v0
.end method
