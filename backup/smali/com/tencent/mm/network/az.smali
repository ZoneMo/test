.class final Lcom/tencent/mm/network/az;
.super Lcom/tencent/mm/network/z;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ac;


# instance fields
.field private bZl:Lcom/tencent/mm/network/ao;

.field private cFa:Lcom/tencent/mm/jni/platformcomm/WakerLock;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/ao;Lcom/tencent/mm/jni/platformcomm/WakerLock;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tencent/mm/network/z;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    .line 60
    iput-object p2, p0, Lcom/tencent/mm/network/az;->cFa:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/az;)Lcom/tencent/mm/network/ao;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    return-object v0
.end method


# virtual methods
.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/ak;[B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-interface {p5}, Lcom/tencent/mm/network/ak;->xk()Lcom/tencent/mm/protocal/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/protocal/f;->xm()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_4

    .line 88
    :cond_0
    const/16 v0, -0x66

    if-ne v0, p3, :cond_1

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v0, p1}, Lcom/tencent/mm/network/ao;->a(Lcom/tencent/mm/network/ao;I)I

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->b(Lcom/tencent/mm/network/ao;)Lcom/tencent/mm/network/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v1}, Lcom/tencent/mm/network/ao;->c(Lcom/tencent/mm/network/ao;)Lcom/tencent/mm/network/bb;

    move-result-object v1

    invoke-interface {p5, v0, v1, v2, v2}, Lcom/tencent/mm/network/ak;->b(Lcom/tencent/mm/network/o;Lcom/tencent/mm/network/y;II)V

    .line 103
    :goto_0
    return-void

    .line 93
    :cond_1
    const/16 v0, -0x12d

    if-ne v0, p3, :cond_3

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->b(Lcom/tencent/mm/network/ao;)Lcom/tencent/mm/network/a;

    move-result-object v0

    invoke-interface {p5, v0, p2, p3}, Lcom/tencent/mm/network/ak;->a(Lcom/tencent/mm/network/o;II)V

    .line 99
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v0, p2, p3, p4}, Lcom/tencent/mm/network/ao;->a(Lcom/tencent/mm/network/ao;IILjava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    const/16 v0, -0x69

    if-ne v0, p3, :cond_2

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->b(Lcom/tencent/mm/network/ao;)Lcom/tencent/mm/network/a;

    move-result-object v0

    invoke-interface {p5, v0, p2, p3}, Lcom/tencent/mm/network/ak;->a(Lcom/tencent/mm/network/o;II)V

    goto :goto_1

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v0}, Lcom/tencent/mm/network/ao;->b(Lcom/tencent/mm/network/ao;)Lcom/tencent/mm/network/a;

    move-result-object v0

    invoke-interface {p5, v0, p2, p3}, Lcom/tencent/mm/network/ak;->a(Lcom/tencent/mm/network/o;II)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/network/ak;IILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/mm/network/az;->cFa:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 67
    new-instance v0, Lcom/tencent/mm/network/ba;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/network/ba;-><init>(Lcom/tencent/mm/network/az;Lcom/tencent/mm/network/ak;IILjava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/tencent/mm/network/az;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v1}, Lcom/tencent/mm/network/ao;->a(Lcom/tencent/mm/network/ao;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 80
    return-void
.end method
