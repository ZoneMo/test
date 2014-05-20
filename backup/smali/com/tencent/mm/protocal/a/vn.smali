.class public final Lcom/tencent/mm/protocal/a/vn;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public dGR:I

.field public fAL:I

.field public fAb:Ljava/lang/String;

.field public fAz:Lcom/tencent/mm/protocal/a/rv;

.field public fEd:I

.field public fOu:I

.field public fOv:I

.field public fUN:I

.field public fWg:I

.field public fWh:Lcom/tencent/mm/protocal/a/xe;

.field public fzj:Ljava/lang/String;


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
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fAz:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 64
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 66
    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/a/vn;->dGR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 67
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/vn;->fEd:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 68
    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/a/vn;->fAL:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fAz:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_2

    .line 70
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fAz:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fAz:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fzj:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 74
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fzj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 76
    :cond_3
    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/a/vn;->fOu:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 77
    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/a/vn;->fOv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fAb:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 79
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fAb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 81
    :cond_4
    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/a/vn;->fWg:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 82
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/vn;->fUN:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 83
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fWh:Lcom/tencent/mm/protocal/a/xe;

    if-eqz v0, :cond_5

    .line 84
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fWh:Lcom/tencent/mm/protocal/a/xe;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/xe;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 85
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/vn;->fWh:Lcom/tencent/mm/protocal/a/xe;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/xe;->a(La/a/a/c/a;)V

    .line 87
    :cond_5
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 34
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 36
    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/tencent/mm/protocal/a/vn;->dGR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/vn;->fEd:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/a/vn;->fAL:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fAz:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 40
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vn;->fAz:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fzj:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 43
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vn;->fzj:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_2
    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/a/vn;->fOu:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/a/vn;->fOv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fAb:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 48
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vn;->fAb:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_3
    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/a/vn;->fWg:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/vn;->fUN:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/vn;->fWh:Lcom/tencent/mm/protocal/a/xe;

    if-eqz v1, :cond_4

    .line 53
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/vn;->fWh:Lcom/tencent/mm/protocal/a/xe;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/xe;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_4
    return v0
.end method
