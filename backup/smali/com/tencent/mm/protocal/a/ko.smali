.class public final Lcom/tencent/mm/protocal/a/ko;
.super Lcom/tencent/mm/protocal/a/rs;
.source "SourceFile"


# instance fields
.field public fBE:Lcom/tencent/mm/protocal/a/rv;

.field public fBF:Ljava/lang/String;

.field public fBI:Ljava/lang/String;

.field public fDe:Ljava/lang/String;

.field public fMh:Ljava/lang/String;

.field public fMi:Ljava/lang/String;

.field public fMj:Ljava/lang/String;

.field public fMk:Ljava/lang/String;

.field public fMl:Ljava/lang/String;

.field public fMm:I


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
    .line 66
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fBE:Lcom/tencent/mm/protocal/a/rv;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, La/a/a/b;

    const-string v1, "Not all required fields were included"

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/au;->a(La/a/a/c/a;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fBE:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v0, :cond_2

    .line 74
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->bv(II)V

    .line 75
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/rv;->a(La/a/a/c/a;)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fMh:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fMi:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 81
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fDe:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 84
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fDe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fMj:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 87
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fMk:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 90
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fMl:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 93
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 95
    :cond_8
    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMm:I

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->by(II)V

    .line 96
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fBF:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 97
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fBF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/protocal/a/ko;->fBI:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 100
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fBI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, La/a/a/c/a;->A(ILjava/lang/String;)V

    .line 102
    :cond_a
    return-void
.end method

.method public final ns()I
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fTY:Lcom/tencent/mm/protocal/a/au;

    if-eqz v1, :cond_0

    .line 32
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fTY:Lcom/tencent/mm/protocal/a/au;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/a/au;->ns()I

    move-result v1

    invoke-static {v0, v1}, La/a/a/a;->bs(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fBE:Lcom/tencent/mm/protocal/a/rv;

    if-eqz v1, :cond_1

    .line 35
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fBE:Lcom/tencent/mm/protocal/a/rv;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/a/rv;->ns()I

    move-result v2

    invoke-static {v1, v2}, La/a/a/a;->bs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMh:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 38
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fMh:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMi:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 41
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fMi:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fDe:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 44
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fDe:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMj:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 47
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fMj:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMk:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 50
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fMk:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fMl:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 53
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fMl:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_7
    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/a/ko;->fMm:I

    invoke-static {v1, v2}, La/a/a/a;->br(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fBF:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 57
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fBF:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/protocal/a/ko;->fBI:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 60
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/a/ko;->fBI:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a;->z(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_9
    return v0
.end method
