.class final Lcom/tencent/mm/network/bb;
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
    .line 111
    invoke-direct {p0}, Lcom/tencent/mm/network/z;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/tencent/mm/network/bb;->bZl:Lcom/tencent/mm/network/ao;

    .line 113
    iput-object p2, p0, Lcom/tencent/mm/network/bb;->cFa:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/bb;)Lcom/tencent/mm/network/ao;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/mm/network/bb;->bZl:Lcom/tencent/mm/network/ao;

    return-object v0
.end method


# virtual methods
.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/ak;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    return-void
.end method

.method public final a(Lcom/tencent/mm/network/ak;IILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/mm/network/bb;->cFa:Lcom/tencent/mm/jni/platformcomm/WakerLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/jni/platformcomm/WakerLock;->lock(J)V

    .line 120
    new-instance v0, Lcom/tencent/mm/network/bc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/mm/network/bc;-><init>(Lcom/tencent/mm/network/bb;Lcom/tencent/mm/network/ak;II)V

    .line 132
    iget-object v1, p0, Lcom/tencent/mm/network/bb;->bZl:Lcom/tencent/mm/network/ao;

    invoke-static {v1}, Lcom/tencent/mm/network/ao;->a(Lcom/tencent/mm/network/ao;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ce;->b(Landroid/os/Handler;)Ljava/lang/Object;

    .line 133
    return-void
.end method
