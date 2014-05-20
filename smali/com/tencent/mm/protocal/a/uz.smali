.class public final Lcom/tencent/mm/protocal/a/uz;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fOB:Ljava/util/LinkedList;

.field public fOv:I

.field public fRc:I

.field public fVE:I

.field public fVF:Ljava/util/LinkedList;

.field public fVJ:J

.field public fVO:I

.field public fVP:I

.field public fVQ:I

.field public fVR:I

.field public fVS:Ljava/util/LinkedList;

.field public fVv:Lcom/tencent/mm/protocal/a/rv;

.field public fzj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/rs;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fVF:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fOB:Ljava/util/LinkedList;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fVS:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(La/a/a/c/a;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fVv:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fVv:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVv:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 70
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fVv:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 72
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVE:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVF:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 74
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVO:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 75
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/a/uz;->fOv:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/uz;->fzj:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 77
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fzj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 79
    :cond_3
    iget v0, p0, Lcom/tencent/mm/protocal/a/uz;->fVP:I

    invoke-virtual {p1, v3, v0}, La/a/a/c/a;->by(II)V

    .line 80
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/uz;->fRc:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 81
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fOB:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 82
    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVQ:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 83
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVJ:J

    invoke-virtual {p1, v0, v1, v2}, La/a/a/c/a;->k(IJ)V

    .line 84
    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVR:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 85
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVS:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v3, v1}, La/a/a/c/a;->c(IILjava/util/LinkedList;)V

    .line 86
    return-void
.end method

.method public final ns()I
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 36
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVv:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 41
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/uz;->fVv:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_1
    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/a/uz;->fVE:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/uz;->fVF:Ljava/util/LinkedList;

    invoke-static {v1, v4, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/a/uz;->fVO:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/a/uz;->fOv:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/uz;->fzj:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 48
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/uz;->fzj:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_2
    iget v1, p0, Lcom/tencent/mm/protocal/a/uz;->fVP:I

    invoke-static {v4, v1}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/uz;->fRc:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/uz;->fOB:Ljava/util/LinkedList;

    invoke-static {v1, v4, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/a/uz;->fVQ:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/tencent/mm/protocal/a/uz;->fVJ:J

    invoke-static {v1, v2, v3}, La/a/a/a;->i(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/a/uz;->fVR:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/uz;->fVS:Ljava/util/LinkedList;

    invoke-static {v1, v4, v2}, La/a/a/a;->b(IILjava/util/LinkedList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    return v0
.end method
